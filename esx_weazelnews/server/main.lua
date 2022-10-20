TriggerEvent('esx_society:registerSociety', 'journalist', 'Journalist', 'society_weazel', 'society_weazel', 'society_weazel', {type = 'public'})




ESX.RegisterServerCallback('esx_weazeljob:buyJobVehicle', function(source, cb, vehicleProps, type)
	local xPlayer = ESX.GetPlayerFromId(source)
	local price = getPriceFromHash(vehicleProps.model, xPlayer.job.grade_name, type)

	-- vehicle model not found
	if price == 0 then
		print(('esx_policejob: %s attempted to exploit the shop! (invalid vehicle model)'):format(xPlayer.identifier))
		cb(false)
	else
		if xPlayer.getMoney() >= price then
			xPlayer.removeMoney(price)

			MySQL.insert('INSERT INTO owned_vehicles (owner, vehicle, plate, type, job, `stored`) VALUES (?, ?, ?, ?, ?, ?)', { xPlayer.identifier, json.encode(vehicleProps), vehicleProps.plate, type, xPlayer.job.name, true},
			function (rowsChanged)
				cb(true)
			end)
		else
			cb(false)
		end
	end
end)

ESX.RegisterServerCallback('esx_weazeljob:storeNearbyVehicle', function(source, cb, plates)
	local xPlayer = ESX.GetPlayerFromId(source)

	local plate = MySQL.scalar.await('SELECT plate FROM owned_vehicles WHERE owner = ? AND plate IN (?) AND job = ?', {xPlayer.identifier, plates, xPlayer.job.name})

	if plate then
		MySQL.update('UPDATE owned_vehicles SET `stored` = true WHERE owner = ? AND plate = ? AND job = ?', {xPlayer.identifier, plate, xPlayer.job.name},
		function(rowsChanged)
			if rowsChanged == 0 then
				cb(false)
			else
				cb(plate)
			end
		end)
	else
		cb(false)
	end
end)

function getPriceFromHash(vehicleHash, jobGrade, type)
	local vehicles = Config.AuthorizedVehicles[type][jobGrade]

	for i = 1, #vehicles do
		local vehicle = vehicles[i]
		if GetHashKey(vehicle.model) == vehicleHash then
			return vehicle.price
		end
	end

	return 0
end


