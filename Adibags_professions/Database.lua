-- Retrive addon folder name, and our local, private namespace.
local addonName, addon = ...


-- Database
-----------------------------------------------------------
addon.db = {
	Cloth = {
		name = "Cloth",
		desc = "Put Cloth into it's own category",
		category = "|cffffff00 Cloth by Expansion|r",
		order = 2,
		Vanilla_Cloth = {
			name = "Vanilla Cloth",
			desc = "Put the Vanilla Cloth into it's own category",
			section = "Vanilla Cloth",
			category = "|cffffff00 Cloth|r",
			order = 10,
			items = {
				14256,	--Felcloth
				2589,	--Linen Cloth
				4338,	--Mageweave Cloth
				14047,	--Runecloth
				4306,	--Silk Cloth
				2592,	--Wool Cloth
			}
		},
		BC_Cloth = {
			name = "BC Cloth",
			desc = "Put BC Cloth into it's own category",
			section = "BC Cloth",
			category = "|cffffff00 Cloth|r",
			order = 11,
			items = {
				21877,	--Netherweave Cloth
			}
		},
		Wrath_Cloth = {
			name = "Wrath Cloth",
			desc = "Put Wrath Cloth into it's own category",
			section = "Wrath Cloth",
			category = "|cffffff00 Cloth|r",
			order = 12,
			items = {
				33470,	--Frostweave Cloth
			}
		},
		CATA_Cloth = {
			name = "Cata Cloth",
			desc = "Put Cata Cloth into it's own category",
			section = "Cata Cloth",
			category = "|cffffff00 Cloth|r",
			order = 13,
			items = {
				53010,	--Embersilk Cloth
			}
		},
		MOP_Cloth = {
			name = "MOP Cloth",
			desc = "Put MOP Cloth into it's own category",
			section = "MOP Cloth",
			category = "|cffffff00 Cloth|r",
			order = 14,
			items = {
				72988,	--Windwool Cloth
			}
		},
		WOD_Cloth = {
			name = "WOD Cloth",
			desc = "Put WOD Cloth into it's own category",
			section = "WOD Cloth",
			category = "|cffffff00 Cloth|r",
			order = 15,
			items = {
				111557,	--Sumptuous Fur
			}
		},
		Legion_Cloth = {
			name = "Legion Cloth",
			desc = "Put Legion Cloth into it's own category",
			section = "Legion Cloth",
			category = "|cffffff00 Cloth|r",
			order = 16,
			items = {
				151567,	--Lightweave Cloth
				124437,	--Shal'dorei Silk
			}
		},
		BFA_Cloth = {
			name = "BFA Cloth",
			desc = "Put BFA Cloth into it's own category",
			section = "BFA Cloth",
			category = "|cffffff00 Cloth|r",
			order = 17,
			items = {
				152577,	--Deep Sea Satin
				167738,	--Gilded Seaweave
				152576,	--Tidespray Linen
			}
		},
		Shadowlands_Cloth = {
			name = "Shadowlands Cloth",
			desc = "Put Shadowlands Cloth into it's own category",
			section = "Shadowlands Cloth",
			category = "|cffffff00 Cloth|r",
			order = 18,
			items = {
				173204,	--Lightless Silk
				173202,	--Shrouded Cloth
				187703,	--Silken Protofiber
			}
		},
		Dragonflight_Cloth = {
			name = "Dragonflight Cloth",
			desc = "Put Dragonflight Cloth into it's own category",
			section = "Dragonflight Cloth",
			category = "|cffffff00 Cloth|r",
			order = 19,
			items = {
				193923, -- Decayed Wildercloth
				193050, -- Tattered Wildercloth
				193922, -- Wildercloth
				193924, -- Frostbitten Wildercloth
				193925, -- Singed Wildercloth
				193926, -- Wildercloth Bolt
			}
		},
	},
	
	Herbalism = {
		name = "Herbalism",
		desc = "Put Herbs into their own category",
		category = "|cffffff00 Herbs by Expansion|r",
		order = 3,
		Vanilla_Herbs = {
			name = "Vanilla Herbs",
			desc = "Put Vanilla Herbs into it's own category",
			section = "Vanilla Herbs",
			category = "|cffffff00 Herbs|r",
			order = 10,
			items = {
				8836,	--Arthas' Tears
				13468,	--Black Lotus
				8839,	--Blindweed
				19727,	--Blood Scythe
				19726,	--Bloodvine
				2450,	--Briarthorn
				2453,	--Bruiseweed
				3819,	--Dragon's Teeth
				13463,	--Dreamfoil
				2449,	--Earthroot
				3818,	--Fadeleaf
				4625,	--Firebloom
				8845,	--Ghost Mushroom
				13464,	--Golden Sansam
				3821,	--Goldthorn
				3369,	--Grave Moss
				8846,	--Gromsblood
				13467,	--Icecap
				3358,	--Khadgar's Whisker
				3356,	--Kingsblood
				3357,	--Liferoot
				785,	--Mageroyal
				13465,	--Mountain Silversage
				2447,	--Peacebloom
				8831,	--Purple Lotus
				765,	--Silverleaf
				13466,	--Sorrowmoss
				3820,	--Stranglekelp
				8838,	--Sungrass
				2452,	--Swiftthistle
				3355,	--Wild Steelbloom
				8153,	--Wildvine
				108334,	--Arthas' Tears Petal
				108336,	--Blindweed Stem
				108320,	--Briarthorn Bramble
				108322,	--Bruiseweed Stem
				108329,	--Dragon's Teeth Stem
				108339,	--Dreamfoil Blade
				108319,	--Earthroot Stem
				108328,	--Fadeleaf Petal
				108332,	--Firebloom Petal
				108337,	--Ghost Mushroom Cap
				108340,	--Golden Sansam Leaf
				108331,	--Goldthorn Bramble
				108327,	--Grave Moss Leaf
				108338,	--Gromsblood Leaf
				108343,	--Icecap Petal
				108326,	--Khadgar's Whisker Stem
				108324,	--Kingsblood Petal
				108325,	--Liferoot Stem
				108318,	--Mageroyal Petal
				108341,	--Mountain Silversage Stalk
				108333,	--Purple Lotus Petal
				108342,	--Sorrowmoss Leaf
				108330,	--Stranglekelp Blade
				108335,	--Sungrass Stalk
				108321,	--Swiftthistle Leaf
				108323,	--Wild Steelbloom Petal
			}
		},
		BC_Herbs = {
			name = "BC Herbs",
			desc = "Put BC Herbs into it's own category",
			section = "BC Herbs",
			category = "|cffffff00 Herbs|r",
			order = 11,
			items = {
				22790,	--Ancient Lichen
				22710,	--Bloodthistle
				22786,	--Dreaming Glory
				22794,	--Fel Lotus
				22785,	--Felweed
				22788,	--Flame Cap
				22793,	--Mana Thistle
				22791,	--Netherbloom
				22797,	--Nightmare Seed
				22792,	--Nightmare Vine
				22787,	--Ragveil
				22789,	--Terocone
				108348,	--Ancient Lichen Petal
				108345,	--Dreaming Glory Petal
				108344,	--Felweed Stalk
				108351,	--Mana Thistle Leaf
				108349,	--Netherbloom Leaf
				35229,	--Nether Residue
				108350,	--Nightmare Vine Stem
				108346,	--Ragveil Cap
				108347,	--Terocone Leaf
			}
		},	
		Wrath_Herbs = {
			name = "Wrath Herbs",
			desc = "Put Wrath Herbs into it's own category",
			section = "Wrath Herbs",
			category = "|cffffff00 Herbs|r",
			order = 12,
			items = {
				36903,	--Adder's Tongue
				36902,	--Constrictor Grass
				37921,	--Deadnettle
				39970,	--Fire Leaf
				36908,	--Frost Lotus
				36901,	--Goldclover
				36906,	--Icethorn
				36905,	--Lichbloom
				36907,	--Talandra's Rose
				36904,	--Tiger Lily
				108353,	--Adder's Tongue Stem
				108358,	--Deadnettle Bramble
				108359,	--Fire Leaf Bramble
				108352,	--Goldclover Leaf
				108356,	--Icethorn Bramble
				108355,	--Lichbloom Stalk
				108357,	--Talandra's Rose Petal
				108347,	--Terocone Leaf
			}
		},
		Cata_Herbs = {
			name = "CATA Herbs",
			desc = "Put CATA HERBS into it's own category",
			section = "CATA Herbs",
			category = "|cffffff00 Herbs|r",
			order = 13,
			items = {
				52985,	--Azshara's Veil
				52983,	--Cinderbloom
				52986,	--Heartblossom
				52984,	--Stormvine
				52987,	--Twilight Jasmine
				52988,	--Whiptail
				108362,	--Azshara's Veil Stem
				108360,	--Cinderbloom Petal
				108363,	--Heartblossom Petal
				108361,	--Stormvine Stalk
				108364,	--Twilight Jasmine Petal
				108365,	--Whiptail Stem
			}
		},
		MOP_Herbs = {
			name = "MOP Herbs",
			desc = "Put MOP Herbs into it's own category",
			section = "MOP Herbs",
			category = "|cffffff00 Herbs|r",
			order = 14,
			items = {
				89639,	--Desecrated Herb
				97624,	--Desecrated Herb Pod
				79011,	--Fool's Cap
				79623,	--Fool's Cap Spores
				72234,	--Green Tea Leaf
				72237,	--Rain Poppy
				97620,	--Rain Poppy Petal
				72235,	--Silkweed
				97621,	--Silkweed Stem
				79010,	--Snow Lily
				97622,	--Snow Lily Petal
				97619,	--Torn Green Tea Leaf
				72238,	--Golden Lotus
			}
		},
		WOD_Herbs = {
			name = " WOD Herbs",
			desc = "Put WOD Herbs into it's own category",
			section = "WOD Herbs",
			category = "|cffffff00 Herbs|r",
			order = 15,
			items = {
				109625,	--Broken Fireweed Stem
				109624,	--Broken Frostweed Stem
				116053,	--Draenic Seeds
				127795,	--Felblight
				109125,	--Fireweed
				109124,	--Frostweed
				109126,	--Gorgrond Flytrap
				109626,	--Gorgrond Flytrap Ichor
				109128,	--Nagrand Arrowbloom
				109628,	--Nagrand Arrowbloom Petal
				109127,	--Starflower
				109627,	--Starflower Petal
				109129,	--Talador Orchid
				109629,	--Talador Orchid Petal
			},
		},
		Legion_Herbs = {
			name = "Legion Herbs",
			desc = "Put Legion Herbs into it's own category",
			section = "Legion Herbs",
			category = "|cffffff00 Herbs|r",
			order = 16,
			items = {
				124101,	--Aethril
				129284,	--Aethril Seed
				151565,	--Astral Glory
				124102,	--Dreamleaf
				129285,	--Dreamleaf Seed
				124106,	--Felwort
				129289,	--Felwort Seed
				124104,	--Fjarnskaggl
				129287,	--Fjarnskaggl Seed
				124103,	--Foxflower
				129286,	--Foxflower Seed
				124105,	--Starlight Rose
				129288,	--Starlight Rose Seed
				128304,	--Yseralline Seed
			}
		},
		BFA_Herbs = {
			name = "BFA Herbs",
			desc = "Put BFA Herbs into it's own category",
			section = "BFA Herbs",
			category = "|cffffff00 Herbs|r",
			order = 17,
			items = {
				152507,	--Akunda's Bite
				152510,	--Anchor Weed
				152505,	--Riverbud
				152511,	--Sea Stalk
				152509,	--Siren's Pollen
				152506,	--Star Moss
				152508,	--Winter's Kiss
				168487,	--Zin'anthid
			}
		},
		Shadowlands_Herbs = {
			name = "Shadowlands Herbs",
			desc = "Put Shadowlands Herbs into it's own category",
			section = "Shadowlands Herbs",
			category = "|cffffff00 Herbs|r",
			order = 18,
			items = {
				187699,	--First Flower
				169701,	--Death Blossom
				169700,	--Death Blossom Petal
				168589,	--Marrowroot
				168591,	--Marrowroot Petal
				171315,	--Nightshade
				169697,	--Nightshade Petal
				168586,	--Rising Glory
				169550,	--Rising Glory Petal
				170554,	--Vigil's Torch
				169699,	--Vigil's Torch Petal
				168583,	--Widowbloom
				169698,	--Widowbloom Petal
			}
		},
		Dragonflight_Herbs = {
			name = "Dragonflight Herbs",
			desc = "Put Dragonflight Herbs into it's own category",
			section = "Dragonflight Herbs",
			category = "|cffffff00 Herbs|r",
			order = 19,
			items = {
				191468, -- Bubble Poppy
				191469, -- Bubble Poppy
				191467, -- Bubble Poppy
				191462, -- Hochenblume
				191461, -- Hochenblume
				191460, -- Hochenblume
				191464, -- Saxifrage
				191465, -- Saxifrage
				191466, -- Saxifrage
				191470, -- Writhebark
				191471, -- Writhebark
				191472, -- Writhebark
				200506, -- Roused Seedling
				200508, -- Propagating Roused Seedling
				200509, -- Agitated Roused Seedling
				200507, -- Decayed Roused Seedling
			}
		},
	},

	Fishing = {
		name = "Fishing",
		desc = "Put Fishing Reagents into it's own category",
		category = "|cffffff00 Fish by Expansion|r",
		order = 4,
		Vanilla_Fishing = {
			name = "Vanilla Fishing",
			desc = "Put Fish into their own category",
			section = "Vanilla Fishing",
			category = "|cffffff00 Fishing|r",
			order = 10,
			items = {
				6647,	--Bloated Catfish
				6645,	--Bloated Mud Snapper
				13881,	--Bloated Redgill
				21164,	--Bloated Rockscale Cod
				13891,	--Bloated Salmon
				6643,	--Bloated Smallfish
				8366,	--Bloated Trout
				13888,	--Darkclaw Lobster
				12238,	--Darkshore Grouper
				6522,	--Deviate Fish
				19806,	--Dezian Queenfish
				16967,	--Feralas Ahi
				6359,	--Firefin Snapper
				19805,	--Keefer's Angelfish
				13893,	--Large Raw Mightfish
				13757,	--Lightning Eel
				16970,	--Misty Reed Mahi Mahi
				6458,	--Oil Covered Fish
				6358,	--Oily Blackmouth
				6291,	--Raw Brilliant Smallfish
				6308,	--Raw Bristle Whisker Catfish
				13754,	--Raw Glossy Mightfish
				21153,	--Raw Greater Sagefish
				6317,	--Raw Loch Frenzy
				6289,	--Raw Longjaw Mud Snapper
				8365,	--Raw Mithril Head Trout
				13759,	--Raw Nightfin Snapper
				6361,	--Raw Rainbow Fin Albacore
				13758,	--Raw Redgill
				6362,	--Raw Rockscale Cod
				21071,	--Raw Sagefish
				6303,	--Raw Slitherskin Mackerel
				4603,	--Raw Spotted Yellowtail
				13756,	--Raw Summer Bass
				13760,	--Raw Sunscale Salmon
				13889,	--Raw Whitescale Salmon
				16968,	--Sar'theris Striker
				16969,	--Savage Coast Blue Sailfin
				6299,	--Sickly Looking Fish
				19807,	--Speckled Tastyfish
				13422,	--Stonescale Eel
				13755,	--Winter Squid
			}
		},
		BC_Fishing = {
			name = "BC Fishing",
			desc = "Put Fish into their own category",
			section = "BC Fishing",
			category = "|cffffff00 Fishing|r",
			order = 11,
			items = {
				27422,	--Barbed Gill Trout
				34865,	--Blackfin Darter
				35313,	--Bloated Barbed Gill Trout
				35286,	--Bloated Giant Sunfish
				33823,	--Bloodfin Catfish
				27516,	--Enormous Barbed Gill Trout
				27435,	--Figluster's Mudfish
				27439,	--Furious Crawdad
				35285,	--Giant Sunfish
				27438,	--Golden Darter
				27515,	--Huge Spotted Feltail
				27437,	--Icefin Bluefish
				27425,	--Spotted Feltail
				27429,	--Zangarian Sporefish
			}
		},
		Wrath_Fishing = {
			name = "Wrath Fishing",
			desc = "Put Fish into their own category",
			section = "Wrath Fishing",
			category = "|cffffff00 Fishing|r",
			order = 13,
			items = {
				41812,	--Barrelhead Goby
				45328,	--Bloated Slippery Eel
				
			}
		},
	},

	Mining = {
		name = "Mining",
		desc = "Put Ore, Bars, and Stone into their own category",
		category = "|cffffff00 Mining by Expansion|r",
		order = 5,
		Vanilla_Mining = {
			name = "Vanilla Mining",
			desc = "Put the Vanilla Ore, Bars, and Stone into their own category",
			section = "Vanilla Mining",
			category = "|cffffff00 Mining|r",
			order = 10,
			items = {
				2841,	--Bronze Bar
				3857, 	--Coal
				2836,	--Coarse Stone
				2840, 	--Copper Bar
				2770,	--Copper Ore
				11371,	--Dark Iron Bar
				11370,	--Dark Iron Ore
				12365,	--Dense Stone
				18562,	--Elementium Ingot
				17771,	--Enchanted Elementium Bar
				12655,	--Enchanted Thorium Bar
				3577,	--Gold Bar
				2776,	--Gold Ore
				108296,	--Gold Ore Nugget
				2838,	--Heavy Stone
				3575,	--Iron Bar
				2772,	--Iron Ore
				108297,	--Iron Ore Nugget
				22230,	--Large Obsidian Shard
				3860,	--Mithril Bar
				3858,	--Mithril Ore
				108300,	--Mithril Ore Nugget
				2835,	--Rough Stone
				2842,	--Silver Bar
				2775,	--Silver Ore
				108294,	--Silver Ore Nugget
				22202,	--Small Obsidian Shard
				7912,	--Solid Stone
				3859,	--Steel Bar
				12359,	--Thorium Bar
				10620,	--Thorium Ore
				108298,	--Thorium Ore Nugget
				3576,	--Tin Bar
				2771,	--Tin Ore
				108295,	--Tin Ore Nugget
				6037,	--Truesilver Bar
				7911,	--Truesilver Ore
				108299,	--Truesilver Ore Nugget
			}
		},
		BC_Mining = {
			name = "BC Mining",
			desc = "Put The BC Ore, Bars, and Stone into their own category",
			section = "BC Mining",
			category = "|cffffff00 Mining|r",
			order = 11,
			items = {
				23446,	--Adamantite Bar
				23425,	--Adamantite Ore
				108302,	--Adamantite Ore Nugget
				23447,	--Eternium Bar
				23427,	--Eternium Ore
				108303,	--Eternium Ore Nugget
				23445,	--Fel Iron Bar
				23424,	--Fel Iron Ore
				108301,	--Fel Iron Ore Nugget
				23448,	--Felsteel Bar
				23573,	--Hardened Adamantite Bar
				35128,	--Hardened Khorium
				23449,	--Khorium Bar
				23426,	--Khorium Ore
				108304,	--Khorium Ore Nugget
				35299,	--Nether Residue
			}
		},
		Wrath_Mining = {
			name = "Wrath Mining",
			desc = "Put the Wrath Ore, Bars, and Stone into their own category",
			section = "Wrath Mining",
			category = "|cffffff00 Mining|r",
			order = 12,
			items = {
				36916,	--Cobalt Bar
				36909,	--Cobalt Ore
				108305,	--Cobalt Ore Nugget
				36913,	--Saronite Bar
				36912,	--Saronite Ore
				108306,	--Saronite Ore Nugget
				41163,	--Titanium Bar
				36910,	--Titanium Ore
				108391,	--Titanium Ore Nugget
				37663,	--Titansteel Bar
			}
		},
		CATA_Mining = {
			name = "Cata Mining",
			desc = "Put the Cata Ore, Bars, and Stone into their own category",
			section = "Cata Mining",
			category = "|cffffff00 Mining|r",
			order = 13,
			items = {
				52186,	--Elementium Bar
				52185,	--Elementium Ore
				108308,	--Elementium Ore Nugget
				53039,	--Hardened Elementium Bar
				54849,	--Obsidium Bar
				53038,	--Obsidium Ore
				108307,	--Obsidium Ore Nugget
				52183,	--Pyrite Ore
				51950,	--Pyrium Bar
				108309,	--Pyrite Ore Nugget
			}
		},
		MOP_Mining = {
			name = "MOP Mining",
			desc = "Put the MOP Ore, Bars, and Stone into their own category",
			section = "MOP Mining",
			category = "|cffffff00 Mining|r",
			order = 14,
			items = {
				72094,	--Black Trillium Ore
				72096,	--Ghost Iron Bar
				97512,	--Ghost Iron Nugget
				72092,	--Ghost Iron Ore
				97546,	--Kyparite Fragment
				72093,	--Kyparite
				72095,	--Trillium Bar
				72103,	--White Trillium Ore
			}
		},
		WOD_Mining = {
			name = "WOD Mining",
			desc = "Put the WOD Ore, Bars, and Stone into their own category",
			section = "WOD Mining",
			category = "|cffffff00 Mining|r",
			order = 15,
			items = {
				109992,	--Blackrock Fragment
				109118,	--Blackrock Ore
				115508,	--Draenic Stone
				127759,	--Felblight
				109991,	--True Iron Nugget
				109119,	--True Iron Ore
			}
		},
		Legion_Mining = {
			name = "Legion Mining",
			desc = "Put the Legion Ore, Bars, and Stone into their own category",
			section = "Legion Mining",
			category = "|cffffff00 Mining|r",
			order = 16,
			items = {
				151564,	--Empyrium
				123919,	--Felslate
				124444,	--Infernal Brimstone
				123918,	--Leystone Ore
			}
		},
		BFA_Mining = {
			name = "BFA Mining",
			desc = "Put the BFA Ore, Bars, and Stone into their own category",
			section = "BFA Mining",
			category = "|cffffff00 Mining|r",
			order = 17,
			items = {
				152512,	--Monelite Ore
				168185,	--Osmenite Ore
				152513,	--Platinum Ore
				152579,	--Storm Silver Ore
			}
		},
		Shadowlands_Mining = {
			name = "Shadowlands Mining",
			desc = "Put the Shadowlands Ore, Bars, and Stone into their own category",
			section = "Shadowlands Mining",
			category = "|cffffff00 Mining|r",
			order = 18,
			items = {
				171839,	--Elethium Nugget
				171833,	--Elethium Ore
				171834,	--Laestrite Nugget
				171828,	--Laestrite Ore
				171836,	--Oxxein Nugget
				171830,	--Oxxein Ore
				171837,	--Phaedrum Nugget
				171831,	--Phaedrum Ore
				171840,	--Porous Stone
				187700,	--Progenium Ore
				171841,	--Shaded Stone
				171838,	--Sinvyr Nugget
				171832,	--Sinvyr Ore
				171835,	--Solenium Nugget
				171829,	--Solenium Ore
				177061,	--Twilight Bark
			}
		},
		Dragonflight_Mining = {
			name = "Dragonflight Mining",
			desc = "Put the Dragonflight Ore, Bars, and Stone into their own category",
			section = "Dragonflight Mining",
			category = "|cffffff00 Mining|r",
			order = 19,
			items = {
				188658, -- Draconium Ore
				189143, -- Draconium Ore
				190311, -- Draconium Ore
				190530, -- Frostfire Alloy
				190531, -- Frostfire Alloy
				190532, -- Frostfire Alloy
				190536, -- Infurious Alloy
				190537, -- Infurious Alloy
				190538, -- Infurious Alloy
				190312, -- Khaz'gorite Ore
				190313, -- Khaz'gorite Ore
				190314, -- Khaz'gorite Ore
				190533, -- Obsidian Seared Alloy
				190534, -- Obsidian Seared Alloy
				190535, -- Obsidian Seared Alloy
				189541, -- Primal Molten Alloy
				189542, -- Primal Molten Alloy
				189543, -- Primal Molten Alloy
				190394, -- Serevite Ore
				190395, -- Serevite Ore
				190396, -- Serevite Ore
			}
		},
	},
	
	Skinning = {
		name = "Skinning",
		desc = "Put Leather into it's own category",
		category = "|cffffff00 Skinning by Expansion|r",
		order = 6,
		Vanilla_Skinning = {
			name = "Vanilla Skinning",
			desc = "Put Vanilla Leather into it's own category",
			section = "Vanilla Skinning",
			category = "|cffffff00 Skinning|r",
			order = 10,
			items = {
				15416,	--Black Dragonscale
				7286,	--Black Whelp Scale
				15415,	--Blue Dragonscale
				17012,	--Core Leather
				6470,	--Deviate Scale
				15417,	--Devilsaur Leather
				15412,	--Green Dragonscale
				7392, 	--Green Whelp Scale
				4235, 	--Heavy Hide
				4234, 	--Heavy Leather
				15408, 	--Heavy Scorpid Scale
				783, 	--Light Hide
				2318, 	--Light Leather
				4232,	--Medium Hide
				2319,	--Medium Leather
				6471,	--Perfect Deviate Scale
				19767,	--Primal Bat Leather
				19768,	--Primal Tiger Leather
				15414,	--Red Dragonscale
				8171,	--Rugged Hide
				8170,	--Rugged Leather
				2934,	--Ruined Leather Scraps
				8154,	--Scorpid Scale
				8169,	--Thick Hide
				4304,	--Thick Leather
				8167,	--Turtle Scale
				15419,	--Warbear Leather
				8165,	--Worn Dragonscale
				20381,	--Dreamscale
				15410,	--Scale of Onyxia		
			}
		},
		BC_Skinning = {
			name = "BC Skinning",
			desc = "Put BC Leather into it's own category",
			section = "BC Skinning",
			category = "|cffffff00 Skinning|r",
			order = 11,
			items = {
				29539,	--Cobra Scale
				112184,	--Cobra Scale Fragment
				25699,	--Crystal Infused Leather
				25707,	--Fel Hide
				25700,	--Fel Scales
				112181,	--Fel Scale Fragment
				21887,	--Knothide Leather
				25649,	--Knothide Leather Scraps
				23677,	--Moongraze Buck Hide.
				29548,	--Nether Dragonscales
				112183,	--Nether Dragonscale Fragment
				35229,	--Nether Residue
				30470,	--Nethermine Flayer Hide
				112180,	--Patch of Crystal Infused Leather
				112182,	--Patch of Fel Hide
				25708,	--Thick Clefthoof Leather
				112179,	--Patch of Thick Clefthoof Leather
				29547,	--Wind Scales
				112185,	--Wind Scale Fragment
			}
		},
		Wrath_Skinning = {
			name = "Wrath Skinning",
			desc = "Put Wrath Leather into it's own category",
			section = "Wrath Skinning",
			category = "|cffffff00 Skinning|r",
			order = 12,
			items = {
				44128,	--Arctic Fur
				33568,	--Borean Leather
				33567,	--Borean Leather Scraps
				38557,	--Icy Dragonscale
				112158,	--Icy Dragonscale Fragment
				38561,	--Jormungar Scale
				112178,	--Jormungar Scale Fragment
				38558,	--Nerubian Chitin
				112177,	--Nerubian Chitin Fragment
				42542,	--Stoic Mammoth Hide
				36729,	--Thin Animal Hide
				42510,	--Worg Fur
			}
		},
		CATA_Skinning = {
			name = "Cata Skinning",
			desc = "Put Cata Leather into it's own category",
			section = "Cata Skinning",
			category = "|cffffff00 Skinning|r",
			order = 13,
			items = {
				52979,	--Blackened Dragonscale
				112156,	--Blackened Dragonscale Fragment
				52982,	--Deepsea Scale
				112155,	--Deepsea Scale Fragment
				52976,	--Savage Leather
				52977,	--Savage Leather Scraps
				67495,	--Strange Bloated Stomach
			}
		},
		MOP_Skinning = {
			name = "MOP Skinning",
			desc = "Put MOP Leather into it's own category",
			section = "MOP Skinning",
			category = "|cffffff00 Skinning|r",
			order = 14,
			items = {
				72120,	--Exotic Leather
				72163,	--Magnificent Hide
				72201,	--Plump Intestines
				79101,	--Prismatic Scale
				112157,	--Prismatic Scale Fragment
				72162,	--Sha-Touched Leather
			}
		},
		WOD_Skinning = {
			name = "WOD Skinning",
			desc = "Put WOD Leather into it's own category",
			section = "WOD Skinning",
			category = "|cffffff00 Skinning|r",
			order = 15,
			items = {
				111351,	--A Guide to Skinning in Draenor
				127759,	--Felblight
				110609,	--Raw Beast Hide
				110610,	--Raw Beast Hide Scraps
			}
		},
		Legion_Skinning = {
			name = "Legion Skinning",
			desc = "Put Legion Leather into it's own category",
			section = "Legion Skinning",
			category = "|cffffff00 Skinning|r",
			order = 16,
			items = {
				151566,	--Fiendish Leather
				124113,	--Stonehide Leather
				124115,	--Stormscale
			}
		},
		BFA_Skinning = {
			name = "BFA Skinning",
			desc = "Put BFA Leather into it's own category",
			section = "BFA Skinning",
			category = "|cffffff00 Skinning|r",
			order = 17,
			items = {
				154164,	--Blood-Stained Bone
				154165,	--Calcified Bone
				152541,	--Coarse Leather
				168650,	--Cragscale
				168649,	--Dredged Leather
				153051,	--Mistscale
				153050,	--Shimmerscale
				154722,	--Tempest Hide
			}
		},
		Shadowlands_Skinning = {
			name = "Shadowlands Skinning",
			desc = "Put Shadowlands Leather into it's own category",
			section = "Shadowlands Skinning",
			category = "|cffffff00 Skinning|r",
			order = 18,
			items = {
				172094,	--Callous Hide
				172095,	--Callous Hide Scraps
				172089,	--Desolate Leather
				172093,	--Desolate Leather Scraps
				177279,	--Gaunt Sinew
				172097,	--Heavy Callous Hide
				172096,	--Heavy Desolate Leather
				172092,	--Pallid Bone
				187701,	--Protogenic Pelt
			}
		},
		Dragonflight_Skinning = {
			name = "Dragonflight Skinning",
			desc = "Put Dragonflight Leather into it's own category",
			section = "Dragonflight Skinning",
			category = "|cffffff00 Skinning|r",
			order = 19,
			items = {
				193213, -- Adamant Scales
				193214, -- Adamant Scales
				193215, -- Adamant Scales
				193261, -- Bite-Sized Morsel
				193253, -- Cacophonous Thunderscale
				193251, -- Crystalspine Fur
				193216, -- Dense Hide
				193217, -- Dense Hide
				193218, -- Dense Hide
				193262, -- Exceptional Morsel
				193258, -- Fire-Infused Hide
				193259, -- Flawless Proto Dragon Scale
				193222, -- Lustrous Scaled Hide
				193223, -- Lustrous Scaled Hide
				193224, -- Lustrous Scaled Hide
				193255, -- Pristine Vorquin Horn
				193208, -- Resilient Leather
				193210, -- Resilient Leather
				193211, -- Resilient Leather
				193254, -- Rockfang Leather
				193252, -- Salamanther Scales
				193256, -- Windsong Plumage
  
  
			}
		},
	},

	Alchemy = {
		name = "Alchemy",
		desc = "Put Alchemy Reagents into it's own category",
		category = "|cffffff00 Alchemy by Expansion|r",
		order = 11,
		Vanilla_Alchemy = {
			name = "Vanilla Alchemy",
			desc = "Put Vanilla Alchemy Reagents into it's own category",
			section = "Vanilla Alchemy",
			category = "|cffffff00 Alchemy Reagents by Expansion|r",
			order = 21,
			items = {
				6370,
				6371,
				9061,
				9149,
				9210,
				12360,
				13423,
			}
		},
	},
}





--[[193226, -- Stonecrust Hide
  193227, -- Stonecrust Hide
  193228, -- Stonecrust Hide
  193229, -- Mireslush Hide
  193230, -- Mireslush Hide
  193231, -- Mireslush Hide
  193232, -- Deathchill Hide
  193233, -- Deathchill Hide
  193234, -- Deathchill Hide
  193236, -- Infurious Hide
  193237, -- Infurious Hide
  193238, -- Infurious Hide
  193239, -- Drygrate Scales
  193240, -- Drygrate Scales
  193241, -- Drygrate Scales
  193242, -- Earthshine Scales
  193243, -- Earthshine Scales
  193244, -- Earthshine Scales
  193245, -- Frostbite Scales
  193246, -- Frostbite Scales
  193247, -- Frostbite Scales
  193248, -- Infurious Scales
  193249, -- Infurious Scales
  193250, -- Infurious Scales
  197735, -- Finished Prototype Explorer's Barding
  197736, -- Finished Prototype Regal Barding]]