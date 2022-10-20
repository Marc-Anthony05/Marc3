Config                            = {}

Config.DrawDistance               = 10.0 -- How close do you need to be for the markers to be drawn (in GTA units).
Config.MarkerType                 = {Cloakrooms = 27, Armories = -1, BossActions = -1, Vehicles = 36, Helicopters = 34}
Config.MarkerSize                 = {x = 1.5, y = 1.5, z = 0.5}
Config.MarkerColor                = {r = 50, g = 200, b = 150}

Config.EnablePlayerManagement     = false -- Enable if you want society managing.
Config.EnableArmoryManagement     = false
Config.EnableESXIdentity          = false -- Enable if you're using esx_identity.
Config.EnableESXOptionalneeds     = false -- Enable if you're using esx_optionalneeds
Config.EnableLicenses             = false -- Enable if you're using esx_license.

Config.EnableHandcuffTimer        = false -- Enable handcuff timer? will unrestrain player after the time ends.
Config.HandcuffTimer              = 10 * 60000 -- 10 minutes.

Config.EnableJobBlip              = false -- Enable blips for cops on duty, requires esx_society.
Config.EnableCustomPeds           = false -- Enable custom peds in cloak room? See Config.CustomPeds below to customize peds.

Config.EnableESXService           = false -- Enable esx service?
Config.MaxInService               = -1 -- How many people can be in service at once? Set as -1 to have no limit

Config.Locale                     = 'de'

Config.OxInventory                = ESX.GetConfig().OxInventory

Config.WeazelStations = {

	weazel = {

		
		
		Blip = {
			Coords  = vector3(448.32, -989.55, 51.85),
			Sprite  = 60,
			Display = 4,
			Scale   = 1.2,
			Colour  = 29
		},

		Cloakrooms = {
			vector3(-584.75, -938.76, 22.88)
		},

		Armories = {
			vector3(-584.75, -938.76, -20.88),
                        vector3(-584.75, -938.76, -20.88)
		},

		Vehicles = {
			{
				Spawner = vector3(-524.47, -892.41, 24.87),
				InsideShop = vector3(-543.21, -865.1, 34.39),
				SpawnPoints = {
					{coords = vector3(-530.97, -902.86, 23.44), heading = 57.82, radius = 3.0},
					{coords = vector3(-529.12, -899.26, 23.45), heading = 57.82, radius = 3.0}
				}
			}

		},	
		

		Helicopters = {
			{
				Spawner = vector3(-570.88, -932.07, 36.83),
				InsideShop = vector3(-667.03, -932.08, 46.71),
				SpawnPoints = {
					{coords = vector3(-582.69, -930.57, 37.23), heading = 88.97, radius = 10.0}
				}
			}
		},

		BossActions = {
			vector3(-584.75, -938.76, -20.88)
		}

	}

}

Config.AuthorizedWeapons = {
	praktikant = {
		{weapon = 'WEAPON_STUNGUN', price = 0}
	},

	journalist = {
		{weapon = 'WEAPON_STUNGUN', price = 0}
	},

	reporter = {
		{weapon = 'WEAPON_STUNGUN', price = 0}
	},


        redakteur = {
		{weapon = 'WEAPON_STUNGUN', price = 0}
	},


	boss = {
		{weapon = 'WEAPON_STUNGUN', price = 0},		
                {weapon = 'WEAPON_FLASHLIGHT', price = 0}
	}
}

Config.AuthorizedVehicles = {
	car = {
		praktikant = {
                        {model = 'newsvan', price = 1}
                },

		journalist = {
			{model = 'police3', price = 1},
                        {model = 'newsvan', price = 1}
		},

		reporter = {
			{model = 'policet', price = 1},
			{model = 'newsvan', price = 1}
		},

		redakteur = {
			{model = 'newsvan', price = 1},
                        {model = 'newsvan', price = 1},
			{model = 'scalamo2', price = 1}
		},

		boss = {
                        {model = 'newsvan', price = 1},
			{model = 'newsvan', price = 1},
                        {model = 'scalamo2', price = 1}

                },
	},

	helicopter = {
		praktikant = {
                        {model = 'newsmav', price = 1}
                },

		journalist = {
			{model = 'newsmav', price = 1}
                       
		},

		reporter = {
			{model = 'newsmav', price = 1}
			
		},

		redakteur = {
			{model = 'newsmav', price = 1}
			
		},

		boss = {
                        {model = 'newsmav', price = 1}
			

                }
	}

}
Config.CustomPeds = {
	shared = {
		{},
		{}
	},

	praktikant = {},

	journalist = {},

	reporter = {},

	redakteur = {},

	boss = {
		{}
	}
}

-- CHECK SKINCHANGER CLIENT MAIN.LUA for matching elements
Config.Uniforms = {
	praktikant = {
		male = {
			tshirt_1 = 59,  tshirt_2 = 1,
			torso_1 = 55,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 41,
			pants_1 = 25,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = 46,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		},
		female = {
			tshirt_1 = 36,  tshirt_2 = 1,
			torso_1 = 48,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 44,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = 45,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},

	journalist = {
		male = {
			tshirt_1 = 58,  tshirt_2 = 0,
			torso_1 = 55,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 41,
			pants_1 = 25,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			decals_1 = 0,   decals_2 = 0,
			arms = 44,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},

	reporter = {
		male = {
			tshirt_1 = 58,  tshirt_2 = 0,
			torso_1 = 55,   torso_2 = 0,
			decals_1 = 8,   decals_2 = 1,
			arms = 41,
			pants_1 = 25,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			decals_1 = 7,   decals_2 = 1,
			arms = 44,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},

	redakteur = {
		male = {
			tshirt_1 = 58,  tshirt_2 = 0,
			torso_1 = 55,   torso_2 = 0,
			decals_1 = 8,   decals_2 = 2,
			arms = 41,
			pants_1 = 25,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			decals_1 = 7,   decals_2 = 2,
			arms = 44,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},

	boss = {
		male = {
			tshirt_1 = 58,  tshirt_2 = 0,
			torso_1 = 55,   torso_2 = 0,
			decals_1 = 8,   decals_2 = 3,
			arms = 41,
			pants_1 = 25,   pants_2 = 0,
			shoes_1 = 25,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		},
		female = {
			tshirt_1 = 35,  tshirt_2 = 0,
			torso_1 = 48,   torso_2 = 0,
			decals_1 = 7,   decals_2 = 3,
			arms = 44,
			pants_1 = 34,   pants_2 = 0,
			shoes_1 = 27,   shoes_2 = 0,
			helmet_1 = -1,  helmet_2 = 0,
			chain_1 = 0,    chain_2 = 0,
			ears_1 = 2,     ears_2 = 0
		}
	},

	bullet_wear = {
		male = {
			bproof_1 = 11,  bproof_2 = 1
		},
		female = {
			bproof_1 = 13,  bproof_2 = 1
		}
	},

	gilet_wear = {
		male = {
			tshirt_1 = 59,  tshirt_2 = 1
		},
		female = {
			tshirt_1 = 36,  tshirt_2 = 1
		}
	}
}
