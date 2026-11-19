-- Five Friends Horde, v1.2.0; generated from the audited PS1 guide payloads.
-- Stable guide IDs preserve progress from version 1.1.0.
-- Source: guides/01-preparation-dustwallow.guide
do
	local function register()
		Polestar.RegisterGuide({
			id = "five-friends-43-48/01-preparation-dustwallow",
			title = "01 - Prep & Dustwallow (43-44)",
			faction = "Horde",
			minLevel = 43,
			maxLevel = 44,
			category = "Leveling",
			folder = "Five Friends 43-48",
			keywords = {
				"group",
				"horde",
				"dungeon",
				"five friends",
			},
			why = "Five-player quest route. Level band 43-44 is an estimate, not a grind requirement.",
			zone = 1454,
			next = "five-friends-43-48/04-uldaman",
			author = "Your group",
			version = 3,
			group = true,
			names = {
				["quest:1169"] = "Identifying the Brood",
				["quest:1205"] = "Deadmire",
				["quest:2342"] = "Reclaimed Treasures",
				["quest:2418"] = "Power Stones",
				["quest:2846"] = "Tiara of the Deep",
				["quest:2872"] = "Stoley's Debt",
				["quest:2981"] = "A Threat in Feralas",
				["quest:649"] = "Ripple Recovery",
			},
			steps = {
				{
					title = "Read the group plan",
					note = "Refresh Sleeping Bag before long sessions. The XP forecast assumes 30 base XP per kill per player and your 13% total bonus. Each player follows their own quest log. Clear unrelated quests to leave room. The next city pickups can be done while friends are offline, in any convenient order; already accepted or completed quests advance automatically.",
					goals = {
						{
							t = "task",
							text = "Ready: five Horde characters, lowest level 43, Riverglades and Krol'dok finished",
						},
					},
				},
				{
					title = "Orgrimmar advance pickups",
					goals = {
						{
							t = "accept",
							quest = 2283,
							title = "Necklace Recovery",
							minLevel = 37,
							map = 1454,
							x = 59.5,
							y = 36.6,
							note = "Dran Droffers; keep this for the exterior necklace drop.",
						},
						{
							t = "accept",
							quest = 2981,
							title = "A Threat in Feralas",
							minLevel = 38,
							map = 1454,
							x = 75.2,
							y = 34.2,
							note = "Belgrom Rockmaul; carry to Camp Mojache.",
						},
					},
				},
				{
					title = "Undercity advance pickup",
					goals = {
						{
							t = "accept",
							quest = 2342,
							title = "Reclaimed Treasures",
							minLevel = 33,
							map = 1458,
							x = 62.5,
							y = 47.9,
							note = "Patrick Garrett near the flight master; Horde version.",
						},
					},
				},
				{
					title = "Thunder Bluff advance pickup",
					goals = {
						{
							t = "accept",
							quest = 1205,
							title = "Deadmire",
							minLevel = 35,
							map = 1456,
							x = 61.5,
							y = 80.9,
							note = "Melor Stonehoof; kill {quest:1205} later in Dustwallow.",
						},
					},
				},
				{
					title = "Booty Bay advance pickup",
					goals = {
						{
							t = "accept",
							quest = 2872,
							title = "Stoley's Debt",
							minLevel = 40,
							map = 1434,
							x = 27.8,
							y = 77.1,
							note = "Sea Wolf MacKinley; carry to Stoley in Tanaris.",
						},
					},
				},
				{
					title = "Badlands setup",
					note = "We do not take either reagent-run quest. This visit prepares Uldaman; save the instance bosses for the later full clear.",
					goals = {
						{
							t = "task",
							text = "Set your Hearthstone at Kargath and keep it there through the Uldaman necklace deliveries",
						},
						{
							t = "accept",
							quest = 2418,
							title = "Power Stones",
							minLevel = 30,
							map = 1418,
							x = 42.4,
							y = 52.9,
							note = "Rigglefuzz in the Badlands.",
						},
						{
							t = "accept",
							quest = 709,
							title = "Solution to Doom",
							minLevel = 30,
							map = 1418,
							x = 51.3,
							y = 76.7,
							note = "Theldurin the Lost in the southern Badlands.",
						},
						{
							t = "note",
							text = "OPTIONAL QUEST CHECK: /mappin 1418 39.0 46.0. While crossing the Badlands, watch for Malevolent Mirage's actual name and reddish aura; it can look like an ordinary animal. This is a reported sighting area, not a fixed spawn. If present, kill it together; everyone loots and uses their own Mirage Mirror. Continue if absent.",
							map = 1418,
							x = 39,
							y = 46,
						},
					},
				},
				{
					title = "Exterior Uldaman tunnels",
					note = "The three other objectives are outside the portal. Current reports favor early instance trash for the necklace; do not keep farming empty exterior packs. Check all five necklaces before leaving. Horde takes them to Dran, rather than right-clicking the Alliance starter. This preparation may be a different instance from the later full clear.",
					goals = {
						{
							t = "complete",
							quest = 2418,
							title = "Power Stones",
							note = "Collect the {quest:2418} from the outside dig-site dwarves.",
						},
						{
							t = "complete",
							quest = 709,
							title = "Solution to Doom",
							note = "Loot the Tablet of Ryun'eh from the Ancient Chest in the exterior Sealed Hall.",
						},
						{
							t = "complete",
							quest = 2342,
							title = "Reclaimed Treasures",
							note = "Open Garrett's family chest in the exterior common hall.",
						},
						{
							t = "complete",
							quest = 2283,
							title = "Necklace Recovery",
							note = "Obtain a Shattered Necklace; if none drop during exterior work, make a short main-entrance trash dip. Save the bosses.",
						},
					},
				},
				{
					title = "Badlands hand-ins",
					goals = {
						{
							t = "turnin",
							quest = 2418,
							title = "Power Stones",
							map = 1418,
							x = 42.4,
							y = 52.9,
							note = "Rigglefuzz.",
							rewards = {
								xp = 3500,
							},
						},
						{
							t = "turnin",
							quest = 709,
							title = "Solution to Doom",
							map = 1418,
							x = 51.3,
							y = 76.7,
							note = "Theldurin the Lost.",
							rewards = {
								xp = 6150,
							},
						},
						{
							t = "note",
							text = "OPTIONAL REWARD IF HELD: Mirage Mirror goes to Mus'hale in Kargath, /mappin 1418 4.2 46.3. Use the looted mirror to start the quest first. Combine this with a normal Kargath return; no mirror means no extra stop.",
							map = 1418,
							x = 4.2,
							y = 46.3,
						},
					},
				},
				{
					title = "{quest:2342} delivery",
					goals = {
						{
							t = "turnin",
							quest = 2342,
							title = "Reclaimed Treasures",
							map = 1458,
							x = 62.5,
							y = 47.9,
							note = "Patrick Garrett, Undercity.",
							rewards = {
								xp = 7000,
							},
						},
					},
				},
				{
					title = "Necklace delivery and return quest",
					goals = {
						{
							t = "turnin",
							quest = 2283,
							title = "Necklace Recovery",
							map = 1454,
							x = 59.5,
							y = 36.6,
							note = "Dran Droffers.",
							rewards = {
								xp = 4800,
							},
						},
						{
							t = "accept",
							quest = 2284,
							title = "Necklace Recovery, Take 2",
							minLevel = 37,
							map = 1454,
							x = 59.5,
							y = 36.6,
							note = "Hold this for the paladin remains in Uldaman.",
						},
						{
							t = "accept",
							quest = 649,
							title = "Ripple Recovery",
							minLevel = 42,
							map = 1454,
							x = 59.5,
							y = 36.6,
							note = "Dran Droffers.",
						},
					},
				},
				{
					title = "Arrange the Hinterlands delivery",
					goals = {
						{
							t = "turnin",
							quest = 649,
							title = "Ripple Recovery",
							map = 1454,
							x = 59.6,
							y = 36.9,
							note = "Malton Droffers, beside Dran.",
							rewards = {
								xp = 440,
							},
						},
						{
							t = "accept",
							quest = 650,
							title = "Ripple Recovery",
							minLevel = 42,
							map = 1454,
							x = 59.6,
							y = 36.9,
							note = "Keep this until the Hinterlands circuit.",
						},
					},
				},
				{
					title = "Brackenwall pickups",
					note = "{quest:1169} is an intentional collection exception: it opens the egg destruction and Mok'Morokk challenge. Start it before killing the southern dragons.",
					goals = {
						{
							t = "accept",
							quest = 1166,
							title = "Overlord Mok'Morokk's Concern",
							minLevel = 38,
							map = 1445,
							x = 36.3,
							y = 31.4,
							note = "Overlord Mok'Morokk.",
						},
						{
							t = "accept",
							quest = 1168,
							title = "Army of the Black Dragon",
							minLevel = 38,
							map = 1445,
							x = 37.4,
							y = 31.4,
							note = "Tharg.",
						},
						{
							t = "accept",
							quest = 1169,
							title = "Identifying the Brood",
							minLevel = 38,
							map = 1445,
							x = 37.1,
							y = 33.1,
							note = "Draz'Zilb.",
						},
					},
				},
				{
					title = "{quest:1205}",
					goals = {
						{
							t = "complete",
							quest = 1205,
							title = "Deadmire",
							note = "Find the named crocolisk in the marsh and loot its tooth; keep the quest for Thunder Bluff.",
							group = {
								kind = "group",
								size = 5,
							},
							carriedTo = "five-friends-43-48/04-uldaman",
						},
					},
				},
				{
					title = "Tabetha dungeon pickup",
					goals = {
						{
							t = "accept",
							quest = 2846,
							title = "Tiara of the Deep",
							minLevel = 40,
							map = 1445,
							x = 46,
							y = 57.1,
							note = "Tabetha at her hut; hold {quest:2846} for Zul'Farrak.",
						},
					},
				},
				{
					title = "Southern goblin pickups",
					goals = {
						{
							t = "accept",
							quest = 98205,
							title = "Whelps are the Worst",
							minLevel = 39,
							map = 1445,
							x = 41,
							y = 75.7,
							note = "Drazzit Dripvalve.",
						},
						{
							t = "accept",
							quest = 98215,
							title = "Dragon Scales Post Burnt Tails",
							minLevel = 39,
							map = 1445,
							x = 41,
							y = 75.7,
							note = "Drazzit Dripvalve.",
						},
						{
							t = "accept",
							quest = 98231,
							title = "Active Ingredient",
							minLevel = 39,
							map = 1445,
							x = 41,
							y = 75.7,
							note = "Gizzix Grimegurgle.",
						},
					},
				},
				{
					title = "Dragonmurk and Wyrmbog circuit",
					note = "Work these together. Ground scales and plants are included; the Brood collection is the chain exception. Use your quest tracker for exact counts and do not leave anyone behind on their collection.",
					goals = {
						{
							t = "complete",
							quest = 1166,
							title = "Overlord Mok'Morokk's Concern",
							note = "Pick up Mok'Morokk's grog, snuff and strongbox in the ruined southern ogre settlement.",
						},
						{
							t = "complete",
							quest = 1168,
							title = "Army of the Black Dragon",
							note = "Kill 15 Firemane Scouts, 10 Ash Tails and 5 Scalebanes.",
						},
						{
							t = "complete",
							quest = 98205,
							title = "Whelps are the Worst",
							note = "Kill 8 Searing Hatchlings and 8 Searing Whelps.",
						},
						{
							t = "complete",
							quest = 98215,
							title = "Dragon Scales Post Burnt Tails",
							note = "Collect 20 Shed Dark Dragonscales per player; use the ground clusters as well as drops.",
						},
						{
							t = "complete",
							quest = 98231,
							title = "Active Ingredient",
							note = "Collect 10 ground Wyrmtail plants around trees and water channels.",
						},
						{
							t = "complete",
							quest = 1169,
							title = "Identifying the Brood",
							note = "Each player needs 15 Searing Tongues and 15 Searing Hearts.",
						},
					},
				},
				{
					title = "Goblin hand-ins",
					goals = {
						{
							t = "turnin",
							quest = 98205,
							title = "Whelps are the Worst",
							map = 1445,
							x = 41,
							y = 75.7,
							note = "Drazzit.",
							rewards = {
								xp = 3750,
							},
						},
						{
							t = "turnin",
							quest = 98215,
							title = "Dragon Scales Post Burnt Tails",
							map = 1445,
							x = 41,
							y = 75.7,
							note = "Drazzit.",
							rewards = {
								xp = 3750,
							},
						},
						{
							t = "turnin",
							quest = 98231,
							title = "Active Ingredient",
							map = 1445,
							x = 41,
							y = 75.7,
							note = "Gizzix.",
							rewards = {
								xp = 3750,
							},
						},
					},
				},
				{
					title = "Brackenwall hand-ins",
					goals = {
						{
							t = "turnin",
							quest = 1166,
							title = "Overlord Mok'Morokk's Concern",
							map = 1445,
							x = 36.3,
							y = 31.4,
							note = "Mok'Morokk.",
							rewards = {
								xp = 4450,
							},
						},
						{
							t = "turnin",
							quest = 1168,
							title = "Army of the Black Dragon",
							map = 1445,
							x = 37.4,
							y = 31.4,
							note = "Tharg.",
							rewards = {
								xp = 3600,
							},
						},
						{
							t = "turnin",
							quest = 1169,
							title = "Identifying the Brood",
							map = 1445,
							x = 37.1,
							y = 33.1,
							note = "Draz'Zilb.",
							rewards = {
								xp = 5350,
							},
						},
						{
							t = "accept",
							quest = 1170,
							title = "The Brood of Onyxia",
							minLevel = 38,
							map = 1445,
							x = 37.1,
							y = 33.1,
							note = "Draz'Zilb.",
						},
					},
				},
				{
					title = "Speak to Mok'Morokk",
					goals = {
						{
							t = "turnin",
							quest = 1170,
							title = "The Brood of Onyxia",
							map = 1445,
							x = 36.3,
							y = 31.4,
							note = "Mok'Morokk.",
							rewards = {
								xp = 360,
							},
						},
						{
							t = "accept",
							quest = 1171,
							title = "The Brood of Onyxia",
							minLevel = 38,
							map = 1445,
							x = 36.3,
							y = 31.4,
							note = "Mok'Morokk.",
						},
					},
				},
				{
					title = "Return to Draz'Zilb",
					goals = {
						{
							t = "turnin",
							quest = 1171,
							title = "The Brood of Onyxia",
							map = 1445,
							x = 37.1,
							y = 33.1,
							note = "Draz'Zilb.",
							rewards = {
								xp = 360,
							},
						},
						{
							t = "accept",
							quest = 1172,
							title = "The Brood of Onyxia",
							minLevel = 38,
							map = 1445,
							x = 37.1,
							y = 33.1,
							note = "Draz'Zilb.",
						},
					},
				},
				{
					title = "Destroy the eggs",
					goals = {
						{
							t = "complete",
							quest = 1172,
							title = "The Brood of Onyxia",
							note = "Return to Wyrmbog and destroy five Onyxia eggs; every player needs the objective.",
						},
					},
				},
				{
					title = "Report the destroyed eggs",
					goals = {
						{
							t = "turnin",
							quest = 1172,
							title = "The Brood of Onyxia",
							map = 1445,
							x = 37.1,
							y = 33.1,
							note = "Draz'Zilb.",
							rewards = {
								xp = 4850,
							},
						},
					},
				},
				{
					title = "Challenge Mok'Morokk",
					goals = {
						{
							t = "accept",
							quest = 1173,
							title = "Challenge Overlord Mok'Morokk",
							minLevel = 38,
							map = 1445,
							x = 36.3,
							y = 31.4,
							note = "Mok'Morokk; everyone accepts before triggering the fight.",
						},
					},
				},
				{
					title = "Defeat the overlord",
					goals = {
						{
							t = "complete",
							quest = 1173,
							title = "Challenge Overlord Mok'Morokk",
							map = 1445,
							x = 36.3,
							y = 31.4,
							note = "Defeat Mok'Morokk in the challenge.",
							group = {
								kind = "group",
								size = 5,
							},
						},
					},
				},
				{
					title = "Challenge reward",
					note = "Next: Uldaman and the necklace chain. Bring Necklace Recovery, Take 2 on all five players; save Deadmire's tooth for the Thunder Bluff deliveries. Continue the other held quests in later chapters.",
					goals = {
						{
							t = "turnin",
							quest = 1173,
							title = "Challenge Overlord Mok'Morokk",
							map = 1445,
							x = 37.1,
							y = 33,
							note = "The hand-in is Draz'Zilb, not Mok'Morokk.",
							rewards = {
								xp = 4850,
							},
						},
					},
				},
			},
		})
	end
	register()
end

-- Source: guides/02-uldaman.guide
do
	local function register()
		Polestar.RegisterGuide({
			id = "five-friends-43-48/04-uldaman",
			title = "02 - Uldaman & Deliveries (44-44)",
			faction = "Horde",
			minLevel = 44,
			maxLevel = 44,
			category = "Leveling",
			folder = "Five Friends 43-48",
			keywords = {
				"group",
				"horde",
				"dungeon",
				"five friends",
			},
			why = "Five-player quest route. Level band 44-44 is an estimate, not a grind requirement.",
			zone = 1418,
			next = "five-friends-43-48/02-tanaris-feralas",
			author = "Your group",
			version = 3,
			group = true,
			names = {
				["quest:2278"] = "The Platinum Discs",
				["quest:2318"] = "Translating the Journal",
				["quest:2339"] = "Find the Gems and Power Source",
				["quest:2340"] = "Deliver the Gems",
			},
			steps = {
				{
					title = "Uldaman readiness",
					note = "Do not kill the gem and power-source bosses before {quest:2339} is accepted. The sequence needs one early exit for the journal translation, followed by one full clear. Do not reset the instance.",
					goals = {
						{
							t = "task",
							text = "Every player has Necklace Recovery Take 2; keep the same instance for the early journal stop and main clear",
						},
					},
				},
				{
					title = "Reach the paladin remains",
					goals = {
						{
							t = "turnin",
							quest = 2284,
							title = "Necklace Recovery, Take 2",
							note = "Inside Uldaman, turn in at the Remains of a Paladin early in the instance.",
							rewards = {
								xp = 4800,
							},
						},
						{
							t = "accept",
							quest = 2318,
							title = "Translating the Journal",
							minLevel = 37,
							note = "Accept {quest:2318} from the remains.",
						},
					},
				},
				{
					title = "Translate in Kargath",
					note = "Leave the instance before the objective bosses. All five need to make the journal handoff; preserve the existing instance.",
					goals = {
						{
							t = "turnin",
							quest = 2318,
							title = "Translating the Journal",
							map = 1418,
							x = 2.4,
							y = 46.1,
							note = "Jarkal Mossmeld, Kargath.",
							rewards = {
								xp = 6750,
							},
						},
						{
							t = "accept",
							quest = 2338,
							title = "Translating the Journal",
							minLevel = 37,
							map = 1418,
							x = 2.4,
							y = 46.1,
							note = "Jarkal: translation follow-up.",
						},
						{
							t = "note",
							text = "OPTIONAL REWARD IF HELD: Mirage Mirror goes to Mus'hale in Kargath, /mappin 1418 4.2 46.3. Use the looted mirror to start the quest first. Combine this with a normal Kargath return; no mirror means no extra stop.",
							map = 1418,
							x = 4.2,
							y = 46.3,
						},
					},
				},
				{
					title = "Get the boss-loot quest",
					goals = {
						{
							t = "turnin",
							quest = 2338,
							title = "Translating the Journal",
							map = 1418,
							x = 2.4,
							y = 46.1,
							note = "Jarkal Mossmeld.",
							rewards = {
								xp = 350,
							},
						},
						{
							t = "accept",
							quest = 2339,
							title = "Find the Gems and Power Source",
							minLevel = 37,
							map = 1418,
							x = 2.4,
							y = 46.1,
							note = "{quest:2339}.",
						},
					},
				},
				{
					title = "Uldaman boss check",
					goals = {
						{
							t = "task",
							text = "All five have {quest:2339} before resuming the dungeon",
						},
					},
				},
				{
					title = "Full Uldaman clear",
					note = "Check all four objectives for every player. Before leaving the final room, everyone must do the Platinum Discs dialogue below. The removed mushroom collection is not part of this run.",
					goals = {
						{
							t = "complete",
							quest = 2339,
							title = "Find the Gems and Power Source",
							note = "Topaz: urn in the trogg area near the Alliance dwarves. Ruby: fixed cache in the barricaded Shadowforge area. Sapphire: Grimlok. Power Source: Archaedas.",
							group = {
								kind = "group",
								size = 5,
							},
						},
					},
				},
				{
					title = "{quest:2278}",
					note = "Speak to the Lore Keeper and read the requested history. The Lore Keeper is a dialogue objective, not a kill.",
					goals = {
						{
							t = "accept",
							quest = 2278,
							title = "The Platinum Discs",
							minLevel = 40,
							note = "The Discs of Norgannon behind Archaedas.",
						},
					},
				},
				{
					title = "Learn from the Lore Keeper",
					goals = {
						{
							t = "complete",
							quest = 2278,
							title = "The Platinum Discs",
							note = "Complete the Lore Keeper dialogue and the disc objective.",
						},
						{
							t = "turnin",
							quest = 2278,
							title = "The Platinum Discs",
							note = "Return to the Discs of Norgannon.",
							rewards = {
								xp = 8200,
							},
						},
						{
							t = "accept",
							quest = 2280,
							title = "The Platinum Discs",
							minLevel = 40,
							note = "Take the Horde delivery to Thunder Bluff.",
						},
					},
				},
				{
					title = "Kargath gem hand-in",
					goals = {
						{
							t = "turnin",
							quest = 2339,
							title = "Find the Gems and Power Source",
							map = 1418,
							x = 2.4,
							y = 46.1,
							note = "Jarkal Mossmeld.",
							rewards = {
								xp = 7300,
							},
						},
						{
							t = "accept",
							quest = 2340,
							title = "Deliver the Gems",
							minLevel = 37,
							map = 1418,
							x = 2.4,
							y = 46.1,
							note = "Take {quest:2340} to Orgrimmar.",
						},
					},
				},
				{
					title = "Orgrimmar necklace delivery",
					goals = {
						{
							t = "turnin",
							quest = 2340,
							title = "Deliver the Gems",
							map = 1454,
							x = 59.5,
							y = 36.6,
							note = "Dran Droffers.",
							rewards = {
								xp = 1850,
							},
						},
						{
							t = "accept",
							quest = 2341,
							title = "Necklace Recovery, Take 3",
							minLevel = 37,
							map = 1454,
							x = 59.5,
							y = 36.6,
							note = "Take 3 is a delivery back to Jarkal, not another dungeon clear.",
						},
					},
				},
				{
					title = "Thunder Bluff discs",
					goals = {
						{
							t = "turnin",
							quest = 2280,
							title = "The Platinum Discs",
							note = "Sage Truthseeker, Thunder Bluff.",
							rewards = {
								xp = 5250,
							},
						},
						{
							t = "accept",
							quest = 2440,
							title = "The Platinum Discs",
							minLevel = 40,
							note = "Take the voucher follow-up.",
						},
						{
							t = "turnin",
							quest = 1205,
							title = "Deadmire",
							map = 1456,
							x = 61.5,
							y = 80.9,
							note = "Melor Stonehoof: {quest:1205}'s tooth.",
							rewards = {
								xp = 3900,
							},
						},
					},
					note = "Hand in Deadmire's tooth at Melor Stonehoof while in Thunder Bluff; this replaces a later detour. Complete the Platinum Discs voucher here too.",
				},
				{
					title = "Redeem the voucher",
					goals = {
						{
							t = "turnin",
							quest = 2440,
							title = "The Platinum Discs",
							note = "Bena Winterhoof, Thunder Bluff.",
							rewards = {
								xp = 420,
							},
						},
					},
				},
				{
					title = "Finish the necklace chain",
					note = "Complete the necklace delivery in Kargath. The next chapter is Tanaris and Feralas; reach Gadgetzan using your normal flight, hearth or transport routes. Keep 15 Silk Cloth per player for the later Searing Gorge Caught! quest.",
					goals = {
						{
							t = "turnin",
							quest = 2341,
							title = "Necklace Recovery, Take 3",
							map = 1418,
							x = 2.4,
							y = 46.1,
							note = "Jarkal Mossmeld, Kargath; use your hearth when ready.",
							rewards = {
								xp = 5600,
							},
						},
						{
							t = "note",
							text = "OPTIONAL REWARD IF HELD: Mirage Mirror goes to Mus'hale in Kargath, /mappin 1418 4.2 46.3. Use the looted mirror to start the quest first. Combine this with a normal Kargath return; no mirror means no extra stop.",
							map = 1418,
							x = 4.2,
							y = 46.3,
						},
					},
				},
			},
		})
	end
	register()
end

-- Source: guides/03-tanaris-feralas.guide
do
	local function register()
		Polestar.RegisterGuide({
			id = "five-friends-43-48/02-tanaris-feralas",
			title = "03 - Tanaris & Feralas (44-45)",
			faction = "Horde",
			minLevel = 44,
			maxLevel = 45,
			category = "Leveling",
			folder = "Five Friends 43-48",
			keywords = {
				"group",
				"horde",
				"dungeon",
				"five friends",
			},
			why = "Five-player quest route. Level band 44-45 is an estimate, not a grind requirement.",
			zone = 1446,
			next = "five-friends-43-48/03-shendralas",
			author = "Your group",
			version = 3,
			group = true,
			names = {
				["quest:2863"] = "Alpha Strike",
				["quest:3520"] = "Screecher Spirits",
				["quest:7731"] = "Stinglasher",
				["quest:7732"] = "Zukk'ash Report",
				["quest:95599"] = "The Old Key",
			},
			steps = {
				{
					title = "Gadgetzan pickups",
					note = "Save Zul'Farrak itself for the later chapter; its remote prerequisites are still being prepared.",
					goals = {
						{
							t = "accept",
							quest = 1690,
							title = "Wastewander Justice",
							minLevel = 40,
							map = 1446,
							x = 52.5,
							y = 28.5,
							note = "Chief Engineer Bilgewhizzle.",
						},
						{
							t = "accept",
							quest = 2781,
							title = "WANTED: Caliph Scorpidsting",
							minLevel = 39,
							note = "Wanted poster in Gadgetzan.",
						},
						{
							t = "accept",
							quest = 97534,
							title = "Gritty Business",
							minLevel = 40,
							map = 1446,
							x = 51.1,
							y = 27.9,
							note = "Quinn.",
						},
						{
							t = "accept",
							quest = 992,
							title = "Gadgetzan Water Survey",
							minLevel = 38,
							map = 1446,
							x = 50.2,
							y = 27.5,
							note = "Senior Surveyor Fizzledowser.",
						},
					},
				},
				{
					title = "First Wastewander pass",
					goals = {
						{
							t = "complete",
							quest = 1690,
							title = "Wastewander Justice",
							note = "Kill 10 Wastewander Bandits and 10 Thieves.",
						},
						{
							t = "complete",
							quest = 97534,
							title = "Gritty Business",
							note = "Pick up seven Desert Debris ground objects per player.",
						},
						{
							t = "complete",
							quest = 992,
							title = "Gadgetzan Water Survey",
							note = "Use the supplied testing gadget at the quest's fixed water pool.",
						},
					},
				},
				{
					title = "Gadgetzan follow-up",
					goals = {
						{
							t = "turnin",
							quest = 1690,
							title = "Wastewander Justice",
							map = 1446,
							x = 52.5,
							y = 28.5,
							note = "Chief Engineer Bilgewhizzle.",
							rewards = {
								xp = 3600,
							},
						},
						{
							t = "accept",
							quest = 1691,
							title = "More Wastewander Justice",
							minLevel = 40,
							map = 1446,
							x = 52.5,
							y = 28.5,
						},
						{
							t = "turnin",
							quest = 97534,
							title = "Gritty Business",
							map = 1446,
							x = 51.1,
							y = 27.9,
							note = "Quinn.",
							rewards = {
								xp = 2900,
							},
						},
						{
							t = "turnin",
							quest = 992,
							title = "Gadgetzan Water Survey",
							map = 1446,
							x = 50.2,
							y = 27.5,
							note = "Fizzledowser.",
							rewards = {
								xp = 3050,
							},
						},
					},
				},
				{
					title = "Second Wastewander pass",
					goals = {
						{
							t = "complete",
							quest = 1691,
							title = "More Wastewander Justice",
							note = "Kill 10 Shadow Mages, 8 Rogues and 6 Assassins.",
						},
						{
							t = "complete",
							quest = 2781,
							title = "WANTED: Caliph Scorpidsting",
							note = "Kill Caliph Scorpidsting and loot his head; every player checks credit.",
							group = {
								kind = "group",
								size = 5,
							},
						},
					},
				},
				{
					title = "Wastewander rewards",
					goals = {
						{
							t = "turnin",
							quest = 1691,
							title = "More Wastewander Justice",
							map = 1446,
							x = 52.5,
							y = 28.5,
							note = "Chief Engineer Bilgewhizzle.",
							rewards = {
								xp = 3750,
							},
						},
						{
							t = "turnin",
							quest = 2781,
							title = "WANTED: Caliph Scorpidsting",
							map = 1446,
							x = 52.5,
							y = 28.5,
							note = "Chief Engineer Bilgewhizzle.",
							rewards = {
								xp = 5050,
							},
						},
					},
				},
				{
					title = "Steamwheedle setup",
					goals = {
						{
							t = "turnin",
							quest = 2872,
							title = "Stoley's Debt",
							map = 1446,
							x = 67.1,
							y = 24,
							note = "Stoley.",
							rewards = {
								xp = 390,
							},
						},
						{
							t = "accept",
							quest = 2873,
							title = "Stoley's Shipment",
							minLevel = 40,
							map = 1446,
							x = 67.1,
							y = 24,
							note = "Stoley.",
						},
						{
							t = "accept",
							quest = 8366,
							title = "Southsea Shakedown",
							minLevel = 40,
							map = 1446,
							x = 67.1,
							y = 23.9,
							note = "Security Chief Bilgewhizzle.",
						},
						{
							t = "accept",
							quest = 2875,
							title = "WANTED: Andre Firebeard",
							minLevel = 40,
							map = 1446,
							x = 66.8,
							y = 22.3,
							note = "Wanted poster.",
						},
						{
							t = "accept",
							quest = 3520,
							title = "Screecher Spirits",
							minLevel = 40,
							map = 1446,
							x = 67,
							y = 22.4,
							note = "Yeh'kinya; take his bramble to Feralas.",
						},
					},
				},
				{
					title = "Lost Rigger Cove",
					note = "Ship Schedules is only a bonus if the starter naturally drops; it is not required or budgeted. No farming it for the group.",
					goals = {
						{
							t = "complete",
							quest = 8366,
							title = "Southsea Shakedown",
							note = "Kill 10 Pirates, 10 Freebooters, 10 Dock Workers and 10 Swashbucklers.",
						},
						{
							t = "complete",
							quest = 2873,
							title = "Stoley's Shipment",
							note = "Loot Stoley's shipment from its ground crate in the building.",
						},
						{
							t = "complete",
							quest = 2875,
							title = "WANTED: Andre Firebeard",
							note = "Kill Andre Firebeard and collect the head.",
							group = {
								kind = "group",
								size = 5,
							},
						},
					},
				},
				{
					title = "Steamwheedle rewards",
					goals = {
						{
							t = "turnin",
							quest = 8366,
							title = "Southsea Shakedown",
							map = 1446,
							x = 67.1,
							y = 23.9,
							note = "Security Chief Bilgewhizzle.",
							rewards = {
								xp = 3900,
							},
						},
						{
							t = "turnin",
							quest = 2873,
							title = "Stoley's Shipment",
							map = 1446,
							x = 67.1,
							y = 24,
							note = "Stoley.",
							rewards = {
								xp = 3900,
							},
						},
						{
							t = "accept",
							quest = 2874,
							title = "Deliver to MacKinley",
							minLevel = 40,
							map = 1446,
							x = 67.1,
							y = 24,
							note = "Keep the delivery for Booty Bay.",
						},
						{
							t = "turnin",
							quest = 2875,
							title = "WANTED: Andre Firebeard",
							map = 1446,
							x = 67.1,
							y = 23.9,
							note = "Security Chief Bilgewhizzle.",
							rewards = {
								xp = 3900,
							},
						},
					},
				},
				{
					title = "Camp Mojache introduction",
					goals = {
						{
							t = "turnin",
							quest = 2981,
							title = "A Threat in Feralas",
							map = 1444,
							x = 75.8,
							y = 43.6,
							note = "Rok Orhan.",
							rewards = {
								xp = 890,
							},
						},
						{
							t = "accept",
							quest = 2975,
							title = "The Ogres of Feralas",
							minLevel = 38,
							map = 1444,
							x = 75.8,
							y = 43.6,
							note = "Rok Orhan.",
						},
						{
							t = "accept",
							quest = 2987,
							title = "Gordunni Cobalt",
							minLevel = 38,
							map = 1444,
							x = 75.7,
							y = 44.3,
							note = "Orwin Gizzmick; keep the shovel.",
						},
						{
							t = "accept",
							quest = 92878,
							title = "Lost for Words",
							minLevel = 36,
							map = 1444,
							x = 74.9,
							y = 44,
							note = "Blaise Montgomery.",
						},
						{
							t = "accept",
							quest = 2862,
							title = "War on the Woodpaw",
							minLevel = 39,
							map = 1444,
							x = 74.9,
							y = 42.5,
							note = "Hadoken Swiftstrider.",
						},
					},
				},
				{
					title = "Gordunni Outpost",
					goals = {
						{
							t = "complete",
							quest = 2975,
							title = "The Ogres of Feralas",
							note = "Kill 10 Gordunni Ogres, 10 Ogre-Magi and 5 Brutes.",
						},
						{
							t = "complete",
							quest = 2987,
							title = "Gordunni Cobalt",
							note = "Use the supplied shovel on cobalt ground mounds; 12 cobalt per player.",
						},
						{
							t = "accept",
							quest = 2978,
							title = "The Gordunni Scroll",
							minLevel = 38,
							map = 1444,
							x = 80.5,
							y = 34.3,
							note = "Loot the ground scroll near the training dummies, then right-click it in your bags to accept.",
						},
					},
				},
				{
					title = "Northern named target",
					goals = {
						{
							t = "complete",
							quest = 92878,
							title = "Lost for Words",
							note = "Kill Namida Grimtotem around 68,39 and collect Namida's Hoof.",
							group = {
								kind = "group",
								size = 5,
							},
						},
						{
							t = "note",
							text = "OPTIONAL OBJECT CHECK: /mappin 1444 69.6 43.3. While near the Grimtotem camp, check the Grimtotem Chest by the diseased shaman remains for a Grimtotem Necklace. Keep it for the Broken Woodpaw Staff. The location is in current Forever data; if the container is absent or unusable, continue.",
							map = 1444,
							x = 69.6,
							y = 43.3,
						},
					},
				},
				{
					title = "Camp Mojache northern rewards",
					note = "Do not extend the scroll into the unverified-drop Dark Ceremony/Orb branch for this route.",
					goals = {
						{
							t = "turnin",
							quest = 2975,
							title = "The Ogres of Feralas",
							map = 1444,
							x = 75.8,
							y = 43.6,
							note = "Rok Orhan.",
							rewards = {
								xp = 2700,
							},
						},
						{
							t = "accept",
							quest = 2980,
							title = "The Ogres of Feralas",
							minLevel = 38,
							map = 1444,
							x = 75.8,
							y = 43.6,
							note = "Rok Orhan.",
						},
						{
							t = "turnin",
							quest = 2987,
							title = "Gordunni Cobalt",
							map = 1444,
							x = 75.7,
							y = 44.3,
							note = "Orwin Gizzmick.",
							rewards = {
								xp = 3600,
							},
						},
						{
							t = "turnin",
							quest = 2978,
							title = "The Gordunni Scroll",
							map = 1444,
							x = 75.8,
							y = 43.6,
							note = "Rok Orhan.",
							rewards = {
								xp = 1800,
							},
						},
						{
							t = "turnin",
							quest = 92878,
							title = "Lost for Words",
							map = 1444,
							x = 74.9,
							y = 44,
							note = "Blaise Montgomery.",
							rewards = {
								xp = 4450,
							},
						},
					},
				},
				{
					title = "{quest:95599} starter",
					goals = {
						{
							t = "accept",
							quest = 95599,
							title = "The Old Key",
							minLevel = 35,
							map = 1444,
							x = 76.6,
							y = 48,
							note = "Open the Old Crate beside the tent, then click the key in your bags to accept.",
						},
						{
							t = "note",
							text = "EXISTING ROUTE OBJECT: /mappin 1444 76.6 48.0. Open the Old Crate beside the tent; each player uses their own Old Key to accept. This is the same scheduled quest, not another pickup.",
							map = 1444,
							x = 76.6,
							y = 48,
						},
					},
				},
				{
					title = "{quest:95599} chest",
					goals = {
						{
							t = "turnin",
							quest = 95599,
							title = "The Old Key",
							map = 1444,
							x = 79.2,
							y = 49.4,
							note = "Open the submerged Old Chest; be ready for the elemental ambush.",
							rewards = {
								xp = 3450,
							},
						},
						{
							t = "note",
							text = "EXISTING ROUTE OBJECT: /mappin 1444 79.2 49.4. The Old Chest is underwater. Current reports describe three elementals attacking after the hand-in; keep the party together.",
							map = 1444,
							x = 79.2,
							y = 49.4,
						},
					},
				},
				{
					title = "Woodpaw introduction collection",
					note = "This collection is retained because it unlocks {quest:2863}, the battle-map chain, and {quest:7731}. It is an explicit chain exception, not a claim of 80% drops.",
					goals = {
						{
							t = "complete",
							quest = 2862,
							title = "War on the Woodpaw",
							note = "Gather 10 Woodpaw Gnoll Manes per player around the Woodpaw camps.",
						},
						{
							t = "note",
							text = "OPTIONAL OBJECT CHECK: /mappin 1444 66.4 50.9. If your Woodpaw circuit passes the dead diseased mystic, inspect the Woodpaw Bag for a Broken Woodpaw Staff. With a Grimtotem Necklace, combine the pieces out of combat into a Diseased Nature Staff and use it to start Corrupted Nature. The bag has a current map record; live loot and availability remain unverified. Skip if unavailable.",
							map = 1444,
							x = 66.4,
							y = 50.9,
						},
					},
				},
				{
					title = "Start the timed {quest:2863}",
					note = "{quest:2863} has a one-hour timer. Do its five kills immediately before any other detour.",
					goals = {
						{
							t = "turnin",
							quest = 2862,
							title = "War on the Woodpaw",
							map = 1444,
							x = 74.9,
							y = 42.5,
							note = "Hadoken Swiftstrider.",
							rewards = {
								xp = 2550,
							},
						},
						{
							t = "accept",
							quest = 2863,
							title = "Alpha Strike",
							minLevel = 39,
							map = 1444,
							x = 74.9,
							y = 42.5,
							note = "Accept only when all five are ready.",
						},
					},
				},
				{
					title = "{quest:2863} kills",
					goals = {
						{
							t = "complete",
							quest = 2863,
							title = "Alpha Strike",
							note = "Kill five Woodpaw Alphas now.",
						},
					},
				},
				{
					title = "{quest:2863} hand-in",
					goals = {
						{
							t = "turnin",
							quest = 2863,
							title = "Alpha Strike",
							map = 1444,
							x = 74.9,
							y = 42.5,
							note = "Hadoken.",
							rewards = {
								xp = 2700,
							},
						},
						{
							t = "accept",
							quest = 2902,
							title = "Woodpaw Investigation",
							minLevel = 39,
							map = 1444,
							x = 74.9,
							y = 42.5,
							note = "Hadoken.",
						},
					},
				},
				{
					title = "Woodpaw battle map",
					goals = {
						{
							t = "turnin",
							quest = 2902,
							title = "Woodpaw Investigation",
							map = 1444,
							x = 71.6,
							y = 55.9,
							note = "The Woodpaw Battle Map.",
							rewards = {
								xp = 1800,
							},
						},
						{
							t = "accept",
							quest = 2903,
							title = "The Battle Plans",
							minLevel = 39,
							map = 1444,
							x = 71.6,
							y = 55.9,
							note = "Accept the delivery from the map.",
						},
					},
				},
				{
					title = "Battle Plans and insect pickups",
					goals = {
						{
							t = "turnin",
							quest = 2903,
							title = "The Battle Plans",
							map = 1444,
							x = 74.9,
							y = 42.5,
							note = "Hadoken.",
							rewards = {
								xp = 3600,
							},
						},
						{
							t = "accept",
							quest = 7730,
							title = "Zukk'ash Infestation",
							minLevel = 39,
							map = 1444,
							x = 74.9,
							y = 42.5,
							note = "Hadoken.",
						},
						{
							t = "accept",
							quest = 7731,
							title = "Stinglasher",
							minLevel = 39,
							map = 1444,
							x = 74.9,
							y = 42.5,
							note = "Hadoken.",
						},
					},
				},
				{
					title = "Southern ogres and the Writhing Deep",
					note = "Both insect quests are needed for {quest:7732}. Finish the carapaces while clearing to the named target; this is the second Feralas chain exception.",
					goals = {
						{
							t = "complete",
							quest = 2980,
							title = "The Ogres of Feralas",
							note = "Kill 10 Gordunni Shamans, 10 Warlocks and 5 Maulers.",
						},
						{
							t = "complete",
							quest = 7730,
							title = "Zukk'ash Infestation",
							note = "Collect 20 Zukk'ash Carapaces per player.",
						},
						{
							t = "complete",
							quest = 7731,
							title = "Stinglasher",
							note = "Kill {quest:7731} and loot the glands.",
							group = {
								kind = "group",
								size = 5,
							},
						},
					},
				},
				{
					title = "Southern Feralas rewards",
					goals = {
						{
							t = "turnin",
							quest = 2980,
							title = "The Ogres of Feralas",
							map = 1444,
							x = 75.8,
							y = 43.6,
							note = "Rok Orhan.",
							rewards = {
								xp = 3750,
							},
						},
						{
							t = "turnin",
							quest = 7730,
							title = "Zukk'ash Infestation",
							map = 1444,
							x = 74.9,
							y = 42.5,
							note = "Hadoken.",
							rewards = {
								xp = 3900,
							},
						},
						{
							t = "turnin",
							quest = 7731,
							title = "Stinglasher",
							map = 1444,
							x = 74.9,
							y = 42.5,
							note = "Hadoken.",
							rewards = {
								xp = 4200,
							},
						},
						{
							t = "accept",
							quest = 7732,
							title = "Zukk'ash Report",
							minLevel = 39,
							map = 1444,
							x = 74.9,
							y = 42.5,
							note = "Hold the report for Orgrimmar.",
						},
						{
							t = "note",
							text = "OPTIONAL BAG CHECK: If you found both Corrupted Nature components, combine the Grimtotem Necklace and Broken Woodpaw Staff out of combat, then use the Diseased Nature Staff. Follow any available in-game quest marker if you choose the extra event; its complete live sequence is not verified or required by this route.",
						},
					},
				},
				{
					title = "{quest:3520} before leaving Feralas",
					note = "Do this before leaving for Desolace. Keep the completed quest until the pre-Zul'Farrak Steamwheedle visit. Continue through Desolace's Valley of Bones into Shen'dralas.",
					goals = {
						{
							t = "complete",
							quest = 3520,
							title = "Screecher Spirits",
							note = "Kill three Vale Screechers on the western coast, use Yeh'kinya's Bramble on their corpses, and speak to the spirits.",
							carriedTo = "five-friends-43-48/07-zulfarrak",
						},
					},
				},
			},
		})
	end
	register()
end

-- Source: guides/04-shendralas.guide
do
	local function register()
		Polestar.RegisterGuide({
			id = "five-friends-43-48/03-shendralas",
			title = "04 - Shen'dralas & Maraudon Prep (45-45)",
			faction = "Horde",
			minLevel = 45,
			maxLevel = 45,
			category = "Leveling",
			folder = "Five Friends 43-48",
			keywords = {
				"group",
				"horde",
				"dungeon",
				"five friends",
			},
			why = "Five-player quest route. Level band 45-45 is an estimate, not a grind requirement.",
			zone = 2652,
			next = "five-friends-43-48/05-searing-gorge",
			author = "Your group",
			version = 3,
			group = true,
			names = {
				["quest:1205"] = "Deadmire",
				["quest:7732"] = "Zukk'ash Report",
				["quest:92914"] = "Strange Pylons",
				["quest:93341"] = "Forlorn Gardens",
				["quest:93394"] = "Meeting the Magister",
				["quest:93404"] = "Rot and Regret",
				["quest:93450"] = "Phantasmal Problems",
				["quest:93546"] = "Spectral Iron Ore",
				["quest:96060"] = "Tempered Expectations",
				["quest:99257"] = "A Heart of Crystal",
				["quest:99258"] = "Mana Mania",
			},
			steps = {
				{
					title = "Shen'dralas entry",
					note = "No centaur reputation grind is planned here. This chapter unlocks {quest:93404} before the eventual Maraudon clear.",
					goals = {
						{
							t = "task",
							text = "Enter Shen'dralas from the Valley of Bones in southern Desolace",
						},
						{
							t = "note",
							text = "OPTIONAL STARTER LOOT: /mappin 2652 23.3 22.6 marks an Outcast Necromancer area on the entrance route. Loot necromancers you already kill. If a Tattered Journal drops, use it and deliver it on the next Mordent visit. No extra kills or waiting for five books.",
							map = 2652,
							x = 23.3,
							y = 22.6,
						},
					},
				},
				{
					title = "{quest:92914}",
					goals = {
						{
							t = "accept",
							quest = 92914,
							title = "Strange Pylons",
							minLevel = 35,
							map = 2652,
							x = 43.7,
							y = 34.4,
							note = "Click the western Shen'dralar Pylon; each player accepts at the object.",
						},
						{
							t = "note",
							text = "OPTIONAL STARTER LOOT: Magram Necromancers are also recorded around /mappin 2652 40.1 29.5. Only loot them if your group is already fighting them; do not make a detour or attack friendly centaurs just for Tattered Journal.",
							map = 2652,
							x = 40.1,
							y = 29.5,
						},
						{
							t = "note",
							text = "OPTIONAL ELITE CHECK: /mappin 2652 44.9 33.4. Beside the western pylon, watch for rumbling earth from Corpsefeeder. If nearby, approach and defeat it together; everyone checks for Corpsefeeder's Carapace and uses their own starter. This is a patrol check area; continue if absent.",
							map = 2652,
							x = 44.9,
							y = 33.4,
						},
						{
							t = "note",
							text = "EXISTING ROUTE OBJECT: /mappin 2652 43.7 34.4. Click the western Shen'dralar Pylon to start {quest:92914} on each character. This begins the scheduled access chain used before the collar turn-in.",
							map = 2652,
							x = 43.7,
							y = 34.4,
						},
					},
				},
				{
					title = "Investigate the pylons and temple",
					goals = {
						{
							t = "complete",
							quest = 92914,
							title = "Strange Pylons",
							note = "Visit the western pylon 43.6,34.8, eastern pylon 73.5,23.0, and temple 47.4,77.7.",
						},
						{
							t = "note",
							text = "OPTIONAL ELITE CHECK on the eastern-pylon leg: /mappin 2652 69.8 30.4. Watch for Corpsefeeder's rumbling-earth patrol while crossing near Bristleback Retreat. If absent, keep going; no patrol lap or respawn wait.",
							map = 2652,
							x = 69.8,
							y = 30.4,
						},
						{
							t = "note",
							text = "OPTIONAL REWARD IF HELD: Use Corpsefeeder's Carapace, then visit Kog'thug the Brave at /mappin 2652 72.6 31.4 while already on this eastern leg. Only make this stop if you have the item or quest.",
							map = 2652,
							x = 72.6,
							y = 31.4,
						},
						{
							t = "note",
							text = "OPTIONAL BUSH CHECK on the temple approach: /mappin 2652 46.9 63.4. Check nearby red-eye bushes only if visible while passing. A Prowler can drop Partially Digested Collar; keep it even if Liranne is not yet visible.",
							map = 2652,
							x = 46.9,
							y = 63.4,
						},
					},
				},
				{
					title = "Mordent's investigation",
					goals = {
						{
							t = "turnin",
							quest = 92914,
							title = "Strange Pylons",
							map = 2652,
							x = 35,
							y = 46.7,
							note = "Mordent Evenshade.",
							rewards = {
								xp = 3600,
							},
						},
						{
							t = "accept",
							quest = 96010,
							title = "Fragments of the Pylons",
							minLevel = 35,
							map = 2652,
							x = 35,
							y = 46.7,
							note = "Mordent.",
						},
						{
							t = "note",
							text = "OPTIONAL REWARD IF HELD: Use any Tattered Journal in your bags, then hand its quest to Mordent here: /mappin 2652 35.0 46.7. Only characters with the journal/quest have this extra reward.",
							map = 2652,
							x = 35,
							y = 46.7,
						},
						{
							t = "note",
							text = "OPTIONAL BUSH CHECK: /mappin 2652 34.5 44.4. Near Mordent, look for glowing red eyes in bushes. Walk through a visible eye-bush to reveal a Prowler; loot a Partially Digested Collar if it drops and keep it for Liranne. This is a recorded Prowler area, not a fixed bush. No farming.",
							map = 2652,
							x = 34.5,
							y = 44.4,
						},
					},
				},
				{
					title = "Desolace pylon pieces",
					note = "These are ground objects. Return to Shen'dralas after both are credited to everyone; there is no reputation objective.",
					goals = {
						{
							t = "complete",
							quest = 96010,
							title = "Fragments of the Pylons",
							note = "Collect one Pylon Fragment at Magram Village 67.9,78.9 and one Pylon Shard at Gelkis Village 36.2,85.9.",
						},
						{
							t = "note",
							text = "OPTIONAL STARTER LOOT: /mappin 1443 64.0 79.2 is an Outcast Necromancer area near this fragment trip. Loot incidental kills for Tattered Journal and take any book to Mordent on the scheduled return. Skip if the route does not pass them.",
							map = 1443,
							x = 64,
							y = 79.2,
						},
					},
				},
				{
					title = "Return to Mordent",
					goals = {
						{
							t = "turnin",
							quest = 96010,
							title = "Fragments of the Pylons",
							map = 2652,
							x = 35,
							y = 46.7,
							note = "Mordent Evenshade.",
							rewards = {
								xp = 2450,
							},
						},
						{
							t = "accept",
							quest = 96018,
							title = "Powering the Pylons",
							minLevel = 35,
							map = 2652,
							x = 35,
							y = 46.7,
							note = "Mordent.",
						},
						{
							t = "note",
							text = "OPTIONAL REWARD IF HELD: Use any Tattered Journal in your bags, then hand its quest to Mordent here: /mappin 2652 35.0 46.7. Only characters with the journal/quest have this extra reward.",
							map = 2652,
							x = 35,
							y = 46.7,
						},
					},
				},
				{
					title = "Power the pylons",
					note = "Western repair site 43.5,34.2; eastern 73.0,23.3. The repaired-pylon credit is shared, but verify every party member's quest before leaving.",
					goals = {
						{
							t = "complete",
							quest = 96018,
							title = "Powering the Pylons",
							note = "Take the Mana Sieve at the temple's upper floor 46.1,78.1; gather eight crystals from floating orbs. Use the Pile of Pylon Parts to repair both pylons, four crystals each.",
						},
						{
							t = "note",
							text = "OPTIONAL ELITE CHECK on the eastern-pylon leg: /mappin 2652 69.8 30.4. Watch for Corpsefeeder's rumbling-earth patrol while crossing near Bristleback Retreat. If absent, keep going; no patrol lap or respawn wait.",
							map = 2652,
							x = 69.8,
							y = 30.4,
						},
						{
							t = "note",
							text = "OPTIONAL REWARD IF HELD: Use Corpsefeeder's Carapace, then visit Kog'thug the Brave at /mappin 2652 72.6 31.4 while already on this eastern leg. Only make this stop if you have the item or quest.",
							map = 2652,
							x = 72.6,
							y = 31.4,
						},
					},
				},
				{
					title = "History lesson",
					goals = {
						{
							t = "turnin",
							quest = 96018,
							title = "Powering the Pylons",
							map = 2652,
							x = 35,
							y = 46.7,
							note = "Mordent.",
							rewards = {
								xp = 3600,
							},
						},
						{
							t = "accept",
							quest = 93016,
							title = "A Brief History Lesson",
							minLevel = 35,
							map = 2652,
							x = 35,
							y = 46.7,
							note = "Mordent.",
						},
						{
							t = "note",
							text = "OPTIONAL REWARD IF HELD: Use any Tattered Journal in your bags, then hand its quest to Mordent here: /mappin 2652 35.0 46.7. Only characters with the journal/quest have this extra reward.",
							map = 2652,
							x = 35,
							y = 46.7,
						},
					},
				},
				{
					title = "Hear the history",
					goals = {
						{
							t = "complete",
							quest = 93016,
							title = "A Brief History Lesson",
							note = "Complete Mordent's requested dialogue, following the quest prompt.",
						},
						{
							t = "turnin",
							quest = 93016,
							title = "A Brief History Lesson",
							map = 2652,
							x = 35,
							y = 46.7,
							note = "Mordent.",
							rewards = {
								xp = 360,
							},
						},
						{
							t = "accept",
							quest = 93394,
							title = "Meeting the Magister",
							minLevel = 35,
							map = 2652,
							x = 35,
							y = 46.7,
							note = "Mordent.",
						},
						{
							t = "note",
							text = "OPTIONAL REWARD IF HELD: Use any Tattered Journal in your bags, then hand its quest to Mordent here: /mappin 2652 35.0 46.7. Only characters with the journal/quest have this extra reward.",
							map = 2652,
							x = 35,
							y = 46.7,
						},
					},
				},
				{
					title = "Meet the Magister",
					goals = {
						{
							t = "turnin",
							quest = 93394,
							title = "Meeting the Magister",
							map = 2652,
							x = 47.3,
							y = 76.2,
							note = "Magister Kirandis in the temple.",
							rewards = {
								xp = 360,
							},
						},
						{
							t = "note",
							text = "OPTIONAL REWARD IF HELD: After {quest:93394}, take Partially Digested Collar to Liranne at /mappin 2652 47.3 65.6 on your next pass north of the temple. Use the collar to accept first. If Liranne is unavailable, keep it for later; no waiting.",
							map = 2652,
							x = 47.3,
							y = 65.6,
						},
					},
				},
				{
					title = "Replacement XP: {quest:99257}",
					note = "This branch replaces the removed reagent-run XP without adding another zone visit. All five should accept it before killing the protector.",
					goals = {
						{
							t = "accept",
							quest = 99257,
							title = "A Heart of Crystal",
							minLevel = 35,
							map = 2652,
							x = 46,
							y = 78.2,
							note = "Historian Biraxas in the temple.",
						},
					},
				},
				{
					title = "Depleted Crystal Heart",
					goals = {
						{
							t = "complete",
							quest = 99257,
							title = "A Heart of Crystal",
							note = "Kill a Decrepit Pylon Protector and loot a Depleted Crystal Heart on every character.",
							group = {
								kind = "group",
								size = 5,
							},
						},
					},
				},
				{
					title = "{quest:99258} pickup",
					goals = {
						{
							t = "turnin",
							quest = 99257,
							title = "A Heart of Crystal",
							map = 2652,
							x = 46,
							y = 78.2,
							note = "Historian Biraxas.",
							rewards = {
								xp = 3600,
							},
						},
						{
							t = "accept",
							quest = 99258,
							title = "Mana Mania",
							minLevel = 35,
							map = 2652,
							x = 46,
							y = 78.2,
							note = "Each player must accept personally; this follow-up is not shareable.",
						},
					},
				},
				{
					title = "{quest:99258} party check",
					goals = {
						{
							t = "task",
							text = "All five have {quest:99258} before the heart is used at the Unstable Mana Rift",
						},
					},
				},
				{
					title = "{quest:99258} event",
					note = "A live player report places a usable rift on the platform around 42.5,59.7; treat this as a search hint, not a guaranteed fixed spawn. Each character checks their own quest credit.",
					goals = {
						{
							t = "complete",
							quest = 99258,
							title = "Mana Mania",
							note = "Use the supplied Depleted Crystal Heart at an Unstable Mana Rift; defeat the resulting Nascent Pylon Protector for quest credit.",
							group = {
								kind = "group",
								size = 5,
							},
						},
					},
				},
				{
					title = "{quest:99258} reward",
					goals = {
						{
							t = "turnin",
							quest = 99258,
							title = "Mana Mania",
							map = 2652,
							x = 46,
							y = 78.2,
							note = "Historian Biraxas.",
							rewards = {
								xp = 4450,
							},
						},
					},
				},
				{
					title = "Vindael's phantasmal work",
					goals = {
						{
							t = "accept",
							quest = 93450,
							title = "Phantasmal Problems",
							minLevel = 35,
							map = 2652,
							x = 42,
							y = 79,
							note = "Vindael.",
						},
					},
				},
				{
					title = "{quest:93450}",
					note = "This quest specifically requires becoming a released spirit. A combat resurrection before releasing does not perform that step. Plan the corpse recovery together.",
					goals = {
						{
							t = "complete",
							quest = 93450,
							title = "Phantasmal Problems",
							note = "Loot Vindael's unfinished sword from his anvil, die and RELEASE SPIRIT so it transforms, then recover your corpse.",
						},
						{
							t = "turnin",
							quest = 93450,
							title = "Phantasmal Problems",
							map = 2652,
							x = 42,
							y = 79,
							note = "Return alive to Vindael.",
							rewards = {
								xp = 860,
							},
						},
						{
							t = "accept",
							quest = 93546,
							title = "Spectral Iron Ore",
							minLevel = 35,
							map = 2652,
							x = 42,
							y = 79,
							note = "Vindael gives {quest:93546}.",
						},
					},
				},
				{
					title = "{quest:93546}",
					goals = {
						{
							t = "complete",
							quest = 93546,
							title = "Spectral Iron Ore",
							note = "Keep the Spectral Pickaxe in your bags to reveal the deposits. Right-click the ground deposits near the temple hillsides until you have 10 {quest:93546}.",
						},
					},
				},
				{
					title = "{quest:96060} pickup",
					goals = {
						{
							t = "turnin",
							quest = 93546,
							title = "Spectral Iron Ore",
							map = 2652,
							x = 42,
							y = 79,
							note = "Vindael.",
							rewards = {
								xp = 2550,
							},
						},
						{
							t = "accept",
							quest = 96060,
							title = "Tempered Expectations",
							minLevel = 35,
							map = 2652,
							x = 42,
							y = 79,
							note = "Vindael; accept before returning to the wildlife.",
						},
					},
				},
				{
					title = "Test the blade",
					goals = {
						{
							t = "complete",
							quest = 96060,
							title = "Tempered Expectations",
							note = "Lower eligible wildlife to 20% health or less, then use the Phantasmal Blade for eight execution credits. Normal kills alone do not count.",
						},
						{
							t = "note",
							text = "OPTIONAL REWARD IF HELD: After {quest:93394}, take Partially Digested Collar to Liranne at /mappin 2652 47.3 65.6 on your next pass north of the temple. Use the collar to accept first. If Liranne is unavailable, keep it for later; no waiting.",
							map = 2652,
							x = 47.3,
							y = 65.6,
						},
					},
				},
				{
					title = "Return Vindael's work",
					goals = {
						{
							t = "turnin",
							quest = 96060,
							title = "Tempered Expectations",
							map = 2652,
							x = 42,
							y = 79,
							note = "Vindael.",
							rewards = {
								xp = 3450,
							},
						},
					},
				},
				{
					title = "{quest:93341} pickup",
					goals = {
						{
							t = "accept",
							quest = 93341,
							title = "Forlorn Gardens",
							minLevel = 35,
							map = 2652,
							x = 53.1,
							y = 75.8,
							note = "Mithera.",
						},
					},
				},
				{
					title = "Inspect the garden shrine",
					goals = {
						{
							t = "complete",
							quest = 93341,
							title = "Forlorn Gardens",
							map = 2652,
							x = 70,
							y = 80,
							note = "Inspect the blue pedestal in the shrine.",
						},
					},
				},
				{
					title = "Mithera's referral",
					goals = {
						{
							t = "turnin",
							quest = 93341,
							title = "Forlorn Gardens",
							map = 2652,
							x = 53.1,
							y = 75.8,
							note = "Mithera.",
							rewards = {
								xp = 1800,
							},
						},
						{
							t = "accept",
							quest = 93594,
							title = "Word of the Woods",
							minLevel = 35,
							map = 2652,
							x = 53.1,
							y = 75.9,
							note = "Mithera.",
						},
					},
				},
				{
					title = "Woodwyrd and the Maraudon quest",
					goals = {
						{
							t = "turnin",
							quest = 93594,
							title = "Word of the Woods",
							map = 2652,
							x = 69.5,
							y = 71.9,
							note = "Woodwyrd.",
							rewards = {
								xp = 360,
							},
						},
						{
							t = "accept",
							quest = 93404,
							title = "Rot and Regret",
							minLevel = 35,
							map = 2652,
							x = 69.5,
							y = 71.9,
							note = "Keep {quest:93404} until Maraudon.",
						},
					},
				},
				{
					title = "Orgrimmar delivery",
					goals = {
						{
							t = "turnin",
							quest = 7732,
							title = "Zukk'ash Report",
							note = "Zilzibin Drumlore: {quest:7732}.",
							rewards = {
								xp = 4400,
							},
						},
					},
				},
				{
					title = "Booty Bay delivery",
					note = "Use the Ratchet-Booty Bay connection as convenient. Head to Searing Gorge next; the Uldaman necklace chain was completed in chapter 02.",
					goals = {
						{
							t = "turnin",
							quest = 2874,
							title = "Deliver to MacKinley",
							map = 1434,
							x = 27.8,
							y = 77.1,
							note = "Sea Wolf MacKinley: Stoley's delivery.",
							rewards = {
								xp = 3900,
							},
						},
					},
				},
			},
		})
	end
	register()
end

-- Source: guides/05-searing-gorge.guide
do
	local function register()
		Polestar.RegisterGuide({
			id = "five-friends-43-48/05-searing-gorge",
			title = "05 - Searing Gorge (45-46)",
			faction = "Horde",
			minLevel = 45,
			maxLevel = 46,
			category = "Leveling",
			folder = "Five Friends 43-48",
			keywords = {
				"group",
				"horde",
				"dungeon",
				"five friends",
			},
			why = "Five-player quest route. Level band 45-46 is an estimate, not a grind requirement.",
			zone = 1427,
			next = "five-friends-43-48/06-hinterlands",
			author = "Your group",
			version = 3,
			group = true,
			names = {
				["quest:3441"] = "Divine Retribution",
				["quest:3443"] = "Forging the Shaft",
				["quest:3452"] = "The Flame's Casing",
				["quest:3462"] = "Squire Maltrake",
				["quest:4449"] = "Caught!",
			},
			steps = {
				{
					title = "Level gate for Thorium Point",
					note = "The lowest member must be 45 for the Thorium Point package. If a member is slightly short, {quest:4449} and {quest:3441}/Flawless Flame are available below 45; do those first and then return to this gate.",
					goals = {
						{
							t = "level",
							level = 45,
						},
						{
							t = "task",
							text = "Bring 15 Silk Cloth per player; keep room for the Thorium Point and Windblade quests",
						},
					},
				},
				{
					title = "Thorium Point pickups",
					goals = {
						{
							t = "accept",
							quest = 7729,
							title = "JOB OPPORTUNITY: Culling the Competition",
							minLevel = 45,
							map = 1427,
							x = 37.6,
							y = 26.5,
							note = "Wanted board.",
						},
						{
							t = "accept",
							quest = 7701,
							title = "WANTED: Overseer Maltorius",
							minLevel = 45,
							map = 1427,
							x = 37.6,
							y = 26.5,
							note = "Wanted board.",
						},
						{
							t = "accept",
							quest = 7723,
							title = "Curse These Fat Fingers",
							minLevel = 45,
							map = 1427,
							x = 38.6,
							y = 27.8,
							note = "Hansel Heavyhands.",
						},
						{
							t = "accept",
							quest = 7724,
							title = "Fiery Menace!",
							minLevel = 45,
							map = 1427,
							x = 38.6,
							y = 27.8,
							note = "Hansel.",
						},
						{
							t = "accept",
							quest = 7727,
							title = "Incendosaurs? Whateverosaur is More Like It",
							minLevel = 45,
							map = 1427,
							x = 38.6,
							y = 27.8,
							note = "Hansel.",
						},
						{
							t = "accept",
							quest = 7722,
							title = "What the Flux?",
							minLevel = 45,
							map = 1427,
							x = 38.8,
							y = 28.5,
							note = "Master Smith Burninate.",
						},
					},
				},
				{
					title = "Windblade introduction",
					goals = {
						{
							t = "accept",
							quest = 3441,
							title = "Divine Retribution",
							minLevel = 40,
							map = 1427,
							x = 39,
							y = 39,
							note = "Velarok Windblade; older databases call him Kalaran.",
						},
					},
				},
				{
					title = "Listen to Windblade",
					goals = {
						{
							t = "complete",
							quest = 3441,
							title = "Divine Retribution",
							map = 1427,
							x = 39,
							y = 39,
							note = "Finish his dialogue.",
						},
						{
							t = "turnin",
							quest = 3441,
							title = "Divine Retribution",
							map = 1427,
							x = 39,
							y = 39,
							rewards = {
								xp = 440,
							},
						},
						{
							t = "accept",
							quest = 3442,
							title = "The Flawless Flame",
							minLevel = 40,
							map = 1427,
							x = 39,
							y = 39,
						},
					},
				},
				{
					title = "Caught pickup",
					goals = {
						{
							t = "accept",
							quest = 4449,
							title = "Caught!",
							minLevel = 43,
							map = 1427,
							x = 65.6,
							y = 62.2,
							note = "Wooden Outhouse; have the Silk Cloth ready.",
						},
					},
				},
				{
					title = "First basin pass",
					note = "Flawless Flame is a chain exception for Set Them Ablaze. Keep the unfinished Thorium Point kill quests; complete them across the remaining circuit.",
					goals = {
						{
							t = "complete",
							quest = 3442,
							title = "The Flawless Flame",
							note = "Gather four Hearts of Flame and four Golem Oil per player; the Heavy War Golem kills also advance Fat Fingers.",
						},
						{
							t = "note",
							text = "OPTIONAL OBJECT CHECK: /mappin 1427 65.9 46.1. If your eastern basin route passes the Head of the Obliterator, inspect its assembly interaction. It needs one left arm, right arm, left foot and right foot. Keep visible parts encountered during normal questing. Skip an absent or unusable head.",
							map = 1427,
							x = 65.9,
							y = 46.1,
						},
					},
				},
				{
					title = "{quest:3443} pickup",
					goals = {
						{
							t = "turnin",
							quest = 3442,
							title = "The Flawless Flame",
							map = 1427,
							x = 39,
							y = 39,
							note = "Windblade.",
							rewards = {
								xp = 4400,
							},
						},
						{
							t = "accept",
							quest = 3443,
							title = "Forging the Shaft",
							minLevel = 40,
							map = 1427,
							x = 39,
							y = 39,
							note = "Accept before the main Dark Iron kills.",
						},
					},
				},
				{
					title = "Dark Iron and Cauldron circuit",
					note = "Maltorius and his nearby elites are a group priority. Check everyone's plans and head before descending or leaving.",
					goals = {
						{
							t = "complete",
							quest = 3443,
							title = "Forging the Shaft",
							note = "Collect eight Thorium Plated Daggers per player while killing Dark Irons.",
						},
						{
							t = "complete",
							quest = 4449,
							title = "Caught!",
							note = "Kill eight Dark Iron Geologists and provide the 15 Silk Cloth.",
						},
						{
							t = "complete",
							quest = 7729,
							title = "JOB OPPORTUNITY: Culling the Competition",
							note = "Kill 15 Dark Iron Taskmasters and 15 Slavers.",
						},
						{
							t = "complete",
							quest = 7727,
							title = "Incendosaurs? Whateverosaur is More Like It",
							note = "Kill 20 Incendosaurs inside the Cauldron.",
						},
						{
							t = "complete",
							quest = 7701,
							title = "WANTED: Overseer Maltorius",
							note = "Kill Overseer Maltorius and collect the head.",
							group = {
								kind = "group",
								size = 5,
							},
						},
						{
							t = "complete",
							quest = 7722,
							title = "What the Flux?",
							note = "Pick up the Secret Plans: Fiery Flux near Maltorius.",
						},
						{
							t = "note",
							text = "OPTIONAL EVENT PARTS: Keep any Left/Right Arm and Left/Right Foot of the Obliterator found during the scheduled mine circuit. Exact live part locations are unverified. No extra tunnels, farming or waiting; carry on with the regular objectives.",
						},
					},
				},
				{
					title = "{quest:3452} pickup",
					goals = {
						{
							t = "turnin",
							quest = 3443,
							title = "Forging the Shaft",
							map = 1427,
							x = 39,
							y = 39,
							note = "Windblade.",
							rewards = {
								xp = 4400,
							},
						},
						{
							t = "accept",
							quest = 3452,
							title = "The Flame's Casing",
							minLevel = 40,
							map = 1427,
							x = 39,
							y = 39,
						},
					},
				},
				{
					title = "Twilight elites and remaining surface kills",
					goals = {
						{
							t = "complete",
							quest = 3452,
							title = "The Flame's Casing",
							note = "Kill Twilight elites for a Symbol of Ragnaros per player.",
							group = {
								kind = "group",
								size = 5,
							},
						},
						{
							t = "complete",
							quest = 7723,
							title = "Curse These Fat Fingers",
							note = "Finish 20 Heavy War Golems.",
						},
						{
							t = "complete",
							quest = 7724,
							title = "Fiery Menace!",
							note = "Finish 20 Searing Lava Spiders, formerly named Greater Lava Spiders.",
						},
						{
							t = "note",
							text = "OPTIONAL EVENT IF READY: With all four limbs and a willing group, inspect the head at /mappin 1427 65.9 46.1 and use the available rebuild interaction. Iodax is a level-50 elite. If defeated, everyone checks for Heart of the Obliterator and uses it if looted. Party-wide heart loot is unverified; skip if parts are missing.",
							map = 1427,
							x = 65.9,
							y = 46.1,
						},
					},
				},
				{
					title = "Create the torch",
					goals = {
						{
							t = "turnin",
							quest = 3452,
							title = "The Flame's Casing",
							map = 1427,
							x = 39,
							y = 39,
							note = "Windblade.",
							rewards = {
								xp = 4700,
							},
						},
						{
							t = "accept",
							quest = 3453,
							title = "The Torch of Retribution",
							minLevel = 40,
							map = 1427,
							x = 39,
							y = 39,
							note = "Stay for the event.",
						},
					},
				},
				{
					title = "Torch event",
					goals = {
						{
							t = "complete",
							quest = 3453,
							title = "The Torch of Retribution",
							map = 1427,
							x = 39,
							y = 39,
							note = "Let Windblade finish the torch event.",
						},
						{
							t = "turnin",
							quest = 3453,
							title = "The Torch of Retribution",
							map = 1427,
							x = 39,
							y = 39,
							rewards = {
								xp = 470,
							},
						},
						{
							t = "accept",
							quest = 3454,
							title = "The Torch of Retribution",
							minLevel = 40,
							map = 1427,
							x = 39,
							y = 39,
						},
					},
				},
				{
					title = "Collect the torch",
					goals = {
						{
							t = "complete",
							quest = 3454,
							title = "The Torch of Retribution",
							map = 1427,
							x = 39,
							y = 39,
							note = "Take the Torch of Retribution from the quest object.",
						},
						{
							t = "turnin",
							quest = 3454,
							title = "The Torch of Retribution",
							map = 1427,
							x = 39,
							y = 39,
							note = "Complete the hand-in at the Torch of Retribution object.",
							rewards = {
								xp = 4700,
							},
						},
						{
							t = "accept",
							quest = 3462,
							title = "Squire Maltrake",
							minLevel = 40,
							map = 1427,
							x = 39,
							y = 39,
							note = "Windblade sends you to {quest:3462}.",
						},
					},
				},
				{
					title = "{quest:3462}",
					goals = {
						{
							t = "turnin",
							quest = 3462,
							title = "Squire Maltrake",
							map = 1427,
							x = 39,
							y = 39,
							note = "{quest:3462} beside Windblade.",
							rewards = {
								xp = 470,
							},
						},
						{
							t = "accept",
							quest = 3463,
							title = "Set Them Ablaze!",
							minLevel = 40,
							map = 1427,
							x = 39,
							y = 39,
							note = "Everyone accepts Set Them Ablaze before starting.",
						},
					},
				},
				{
					title = "Set Them Ablaze",
					note = "Tower search points: 33.3,54.5; 35.7,60.7; 44.0,60.9; 50.1,54.8. An already-lit brazier can require a few minutes to become available again on a busy server.",
					goals = {
						{
							t = "complete",
							quest = 3463,
							title = "Set Them Ablaze!",
							note = "EQUIP the Torch of Retribution, then right-click each small tower brazier. Check all four credits on every character.",
							group = {
								kind = "group",
								size = 5,
							},
						},
					},
				},
				{
					title = "Maltrake's reward",
					goals = {
						{
							t = "turnin",
							quest = 3463,
							title = "Set Them Ablaze!",
							map = 1427,
							x = 39,
							y = 39,
							note = "{quest:3462}.",
							rewards = {
								xp = 7600,
							},
						},
						{
							t = "accept",
							quest = 3481,
							title = "Trinkets...",
							minLevel = 40,
							map = 1427,
							x = 39,
							y = 39,
							note = "Use the hoard chest after the event.",
						},
						{
							t = "turnin",
							quest = 3481,
							title = "Trinkets...",
							map = 1427,
							x = 39,
							y = 39,
							note = "Open the chest and complete its reward interaction.",
							rewards = {
								xp = 470,
							},
						},
					},
				},
				{
					title = "Caught reward",
					goals = {
						{
							t = "turnin",
							quest = 4449,
							title = "Caught!",
							map = 1427,
							x = 65.6,
							y = 62.2,
							note = "Wooden Outhouse.",
							rewards = {
								xp = 3900,
							},
						},
					},
				},
				{
					title = "Thorium Point rewards",
					note = "A naturally dropped Grimesilt Outhouse Key can add The Key to Freedom, but it is not required or counted. Continue north to the Hinterlands.",
					goals = {
						{
							t = "turnin",
							quest = 7729,
							title = "JOB OPPORTUNITY: Culling the Competition",
							map = 1427,
							x = 38.9,
							y = 27.7,
							note = "Taskmaster Scrange at Thorium Point.",
							rewards = {
								xp = 4400,
							},
						},
						{
							t = "turnin",
							quest = 7701,
							title = "WANTED: Overseer Maltorius",
							map = 1427,
							x = 37.7,
							y = 26.7,
							note = "Lookout Captain Lolo Longstriker at Thorium Point.",
							rewards = {
								xp = 4700,
							},
						},
						{
							t = "turnin",
							quest = 7723,
							title = "Curse These Fat Fingers",
							map = 1427,
							x = 38.6,
							y = 27.8,
							note = "Hansel.",
							rewards = {
								xp = 4550,
							},
						},
						{
							t = "turnin",
							quest = 7724,
							title = "Fiery Menace!",
							map = 1427,
							x = 38.6,
							y = 27.8,
							note = "Hansel.",
							rewards = {
								xp = 4550,
							},
						},
						{
							t = "turnin",
							quest = 7727,
							title = "Incendosaurs? Whateverosaur is More Like It",
							map = 1427,
							x = 38.6,
							y = 27.8,
							note = "Hansel.",
							rewards = {
								xp = 4550,
							},
						},
						{
							t = "turnin",
							quest = 7722,
							title = "What the Flux?",
							map = 1427,
							x = 38.8,
							y = 28.5,
							note = "Burninate.",
							rewards = {
								xp = 4700,
							},
						},
						{
							t = "note",
							text = "OPTIONAL REWARD IF HELD: Use Heart of the Obliterator to start its quest. While already in Thorium Point, follow that quest's hand-in marker. The exact recipient is not verified, so the existing hub pin is not a claim about the recipient's position.",
						},
					},
				},
			},
		})
	end
	register()
end

-- Source: guides/06-hinterlands.guide
do
	local function register()
		Polestar.RegisterGuide({
			id = "five-friends-43-48/06-hinterlands",
			title = "06 - Hinterlands & Jintha'Alor (46-47)",
			faction = "Horde",
			minLevel = 46,
			maxLevel = 47,
			category = "Leveling",
			folder = "Five Friends 43-48",
			keywords = {
				"group",
				"horde",
				"dungeon",
				"five friends",
			},
			why = "Five-player quest route. Level band 46-47 is an estimate, not a grind requirement.",
			zone = 1425,
			next = "five-friends-43-48/07-zulfarrak",
			author = "Your group",
			version = 3,
			group = true,
			names = {
				["quest:2933"] = "Venom Bottles",
				["quest:2934"] = "Undamaged Venom Sac",
				["quest:2935"] = "Consult Master Gadrin",
				["quest:81"] = "Ripple Delivery",
			},
			steps = {
				{
					title = "Western Hinterlands delivery",
					goals = {
						{
							t = "turnin",
							quest = 650,
							title = "Ripple Recovery",
							map = 1425,
							x = 26.7,
							y = 48.6,
							note = "Gilveradin Sunchaser.",
							rewards = {
								xp = 4400,
							},
						},
						{
							t = "accept",
							quest = 77,
							title = "A Sticky Situation",
							minLevel = 42,
							map = 1425,
							x = 26.7,
							y = 48.6,
							note = "Gilveradin.",
						},
					},
				},
				{
					title = "{quest:2933} starter",
					goals = {
						{
							t = "accept",
							quest = 2933,
							title = "Venom Bottles",
							minLevel = 40,
							map = 1425,
							x = 23.5,
							y = 58.8,
							note = "Click a Venom Bottle in the Witherbark camp.",
						},
					},
				},
				{
					title = "Tarren Mill venom handoff",
					goals = {
						{
							t = "turnin",
							quest = 2933,
							title = "Venom Bottles",
							map = 1424,
							x = 61.5,
							y = 19.2,
							note = "Apothecary Lydon, Tarren Mill.",
							rewards = {
								xp = 3600,
							},
						},
						{
							t = "accept",
							quest = 2934,
							title = "Undamaged Venom Sac",
							minLevel = 40,
							map = 1424,
							x = 61.5,
							y = 19.2,
							note = "Lydon; take this before killing the Broodguards.",
						},
					},
				},
				{
					title = "Get the timed sac",
					note = "Return directly to Lydon when you have the sac. Do not start the long Revantusk circuit with this timed item.",
					goals = {
						{
							t = "complete",
							quest = 2934,
							title = "Undamaged Venom Sac",
							map = 1425,
							x = 34,
							y = 73,
							note = "Kill Witherbark Broodguards at Shadra'Alor and obtain an {quest:2934} on every character.",
						},
					},
				},
				{
					title = "Deliver the sac promptly",
					goals = {
						{
							t = "turnin",
							quest = 2934,
							title = "Undamaged Venom Sac",
							map = 1424,
							x = 61.5,
							y = 19.2,
							note = "Apothecary Lydon, Tarren Mill.",
							rewards = {
								xp = 3900,
							},
						},
						{
							t = "accept",
							quest = 2935,
							title = "Consult Master Gadrin",
							minLevel = 40,
							map = 1424,
							x = 61.5,
							y = 19.2,
							note = "Hold {quest:2935} until the later Sen'jin visit.",
						},
					},
				},
				{
					title = "Revantusk pickups",
					goals = {
						{
							t = "accept",
							quest = 7828,
							title = "Stalking the Stalkers",
							minLevel = 44,
							map = 1425,
							x = 79.2,
							y = 79.5,
							note = "Huntsman Markhor.",
						},
						{
							t = "accept",
							quest = 7829,
							title = "Hunt the Savages",
							minLevel = 44,
							map = 1425,
							x = 79.2,
							y = 79.5,
							note = "Markhor.",
						},
						{
							t = "accept",
							quest = 7830,
							title = "Avenging the Fallen",
							minLevel = 44,
							map = 1425,
							x = 79.2,
							y = 79.5,
							note = "Markhor.",
						},
						{
							t = "accept",
							quest = 7816,
							title = "Gammerita, Mon!",
							minLevel = 44,
							map = 1425,
							x = 80.3,
							y = 81.5,
							note = "Katoom the Angler; this is the Horde lure quest.",
						},
						{
							t = "accept",
							quest = 7815,
							title = "Snapjaws, Mon!",
							minLevel = 44,
							map = 1425,
							x = 80.3,
							y = 81.5,
							note = "Katoom.",
						},
						{
							t = "accept",
							quest = 7844,
							title = "Cannibalistic Cousins",
							minLevel = 44,
							map = 1425,
							x = 78.8,
							y = 78.2,
							note = "Mystic Yayo'jin.",
						},
						{
							t = "accept",
							quest = 7839,
							title = "Vilebranch Hooligans",
							minLevel = 44,
							map = 1425,
							x = 77.2,
							y = 80.1,
							note = "Smith Slagtree.",
						},
						{
							t = "accept",
							quest = 7840,
							title = "Lard Lost His Lunch",
							minLevel = 44,
							map = 1425,
							x = 78.1,
							y = 81.4,
							note = "Lard.",
						},
					},
				},
				{
					title = "Eastern coast loop",
					goals = {
						{
							t = "complete",
							quest = 7815,
							title = "Snapjaws, Mon!",
							note = "Kill 15 Saltwater Snapjaws.",
						},
						{
							t = "complete",
							quest = 7816,
							title = "Gammerita, Mon!",
							note = "Kill Gammerita and loot Katoom's Best Lure.",
							group = {
								kind = "group",
								size = 5,
							},
						},
						{
							t = "complete",
							quest = 7840,
							title = "Lard Lost His Lunch",
							map = 1425,
							x = 85,
							y = 41,
							note = "Click the island basket, fight its ambush, and loot Lard's Lunch; the basket alone is not the full objective.",
						},
					},
				},
				{
					title = "Eastern forest and troll camps",
					goals = {
						{
							t = "complete",
							quest = 7828,
							title = "Stalking the Stalkers",
							note = "Kill 15 Silvermane Stalkers AND 15 Silvermane Howlers. Howlers are central/west near Valorwind Lake; Stalkers are eastern and stealthed.",
						},
						{
							t = "complete",
							quest = 7829,
							title = "Hunt the Savages",
							note = "Kill 20 Savage Owlbeasts.",
						},
						{
							t = "complete",
							quest = 7830,
							title = "Avenging the Fallen",
							note = "Kill a Razorbeak Skylord and loot its plume.",
						},
						{
							t = "complete",
							quest = 7844,
							title = "Cannibalistic Cousins",
							note = "Kill 30 Vilebranch Scalpers and 15 Soothsayers.",
						},
						{
							t = "complete",
							quest = 7839,
							title = "Vilebranch Hooligans",
							note = "Pick up Slagtree's Lost Tools from their ground-object spawn in the troll camps or Skulk Rock.",
						},
						{
							t = "complete",
							quest = 77,
							title = "A Sticky Situation",
							map = 1425,
							x = 57,
							y = 41,
							note = "Pick up 10 Hinterlands Honey Ripple from ground crates at Skulk Rock.",
						},
					},
				},
				{
					title = "Gilveradin's follow-up",
					goals = {
						{
							t = "turnin",
							quest = 77,
							title = "A Sticky Situation",
							map = 1425,
							x = 26.7,
							y = 48.6,
							note = "Gilveradin Sunchaser.",
							rewards = {
								xp = 4400,
							},
						},
						{
							t = "accept",
							quest = 81,
							title = "Ripple Delivery",
							minLevel = 42,
							map = 1425,
							x = 26.7,
							y = 48.6,
							note = "Keep {quest:81} for Orgrimmar.",
						},
					},
				},
				{
					title = "Revantusk rewards",
					goals = {
						{
							t = "turnin",
							quest = 7828,
							title = "Stalking the Stalkers",
							map = 1425,
							x = 79.2,
							y = 79.5,
							note = "Markhor.",
							rewards = {
								xp = 4400,
							},
						},
						{
							t = "turnin",
							quest = 7829,
							title = "Hunt the Savages",
							map = 1425,
							x = 79.2,
							y = 79.5,
							note = "Markhor.",
							rewards = {
								xp = 4400,
							},
						},
						{
							t = "turnin",
							quest = 7830,
							title = "Avenging the Fallen",
							map = 1425,
							x = 79.2,
							y = 79.5,
							note = "Markhor.",
							rewards = {
								xp = 4400,
							},
						},
						{
							t = "turnin",
							quest = 7816,
							title = "Gammerita, Mon!",
							map = 1425,
							x = 80.3,
							y = 81.5,
							note = "Katoom.",
							rewards = {
								xp = 4400,
							},
						},
						{
							t = "turnin",
							quest = 7815,
							title = "Snapjaws, Mon!",
							map = 1425,
							x = 80.3,
							y = 81.5,
							note = "Katoom.",
							rewards = {
								xp = 4700,
							},
						},
						{
							t = "turnin",
							quest = 7844,
							title = "Cannibalistic Cousins",
							map = 1425,
							x = 78.8,
							y = 78.2,
							note = "Yayo'jin.",
							rewards = {
								xp = 4400,
							},
						},
						{
							t = "turnin",
							quest = 7839,
							title = "Vilebranch Hooligans",
							map = 1425,
							x = 77.2,
							y = 80.1,
							note = "Slagtree.",
							rewards = {
								xp = 4400,
							},
						},
						{
							t = "turnin",
							quest = 7840,
							title = "Lard Lost His Lunch",
							map = 1425,
							x = 78.1,
							y = 81.4,
							note = "Lard.",
							rewards = {
								xp = 4550,
							},
						},
					},
				},
				{
					title = "Jintha'Alor level gate",
					note = "If anyone is short, use unfinished eligible lower-zone quests or shared kills before taking this package. The forecast passes this gate with both the 13% and 3% assumptions.",
					goals = {
						{
							t = "level",
							level = 46,
						},
						{
							t = "task",
							text = "All five are level 46 before taking the Jintha'Alor package",
						},
					},
				},
				{
					title = "Jintha'Alor pickups",
					goals = {
						{
							t = "accept",
							quest = 7850,
							title = "Dark Vessels",
							minLevel = 46,
							map = 1425,
							x = 78.2,
							y = 81.2,
							note = "Primal Torntusk.",
						},
						{
							t = "accept",
							quest = 7845,
							title = "Kidnapped Elder Torntusk!",
							minLevel = 46,
							map = 1425,
							x = 78.2,
							y = 81.2,
							note = "Primal Torntusk.",
						},
						{
							t = "accept",
							quest = 7849,
							title = "Separation Anxiety",
							minLevel = 46,
							map = 1425,
							x = 79.2,
							y = 79.5,
							note = "Huntsman Markhor.",
						},
						{
							t = "accept",
							quest = 7861,
							title = "WANTED: Vile Priestess Hexx and Her Minions",
							minLevel = 46,
							map = 1425,
							x = 79.1,
							y = 79,
							note = "Call to Arms board.",
						},
						{
							t = "accept",
							quest = 7862,
							title = "Job Opening: Guard Captain of Revantusk Village",
							minLevel = 46,
							map = 1425,
							x = 79.1,
							y = 79,
							note = "Call to Arms board.",
						},
					},
				},
				{
					title = "Get the Sacred Mallet",
					note = "One usable Mallet of Zul'Farrak in the party is sufficient. Carry the Sacred Mallet up Jintha'Alor and forge it at the altar during the climb; this item has no quest XP in the forecast.",
					goals = {
						{
							t = "task",
							text = "If nobody has the Mallet of Zul'Farrak, kill Qiaga the Keeper at the Altar of Zul and loot the Sacred Mallet",
						},
					},
				},
				{
					title = "Climb Jintha'Alor",
					note = "Collect Vessels of Tainted Blood, the skull from the skull piles, and the bone from the ooze-pit bone piles. You need 20 of each Guard Captain type, plus Hexx and 20 Aman'zasi Guards. Work these while climbing.",
					goals = {
						{
							t = "task",
							text = "Reach Elder Torntusk while progressing the kill quotas and ground pickups; do not kill Hitah'ya before accepting Recover the Key",
						},
					},
				},
				{
					title = "Elder Torntusk's key quest",
					goals = {
						{
							t = "turnin",
							quest = 7845,
							title = "Kidnapped Elder Torntusk!",
							map = 1425,
							x = 59.6,
							y = 77.9,
							note = "Elder Torntusk at the upper cave.",
							rewards = {
								xp = 4900,
							},
						},
						{
							t = "accept",
							quest = 7846,
							title = "Recover the Key!",
							minLevel = 46,
							map = 1425,
							x = 59.6,
							y = 77.9,
							note = "Everyone accepts Recover the Key before the keeper dies.",
						},
					},
				},
				{
					title = "Recover the key",
					goals = {
						{
							t = "complete",
							quest = 7846,
							title = "Recover the Key!",
							note = "Kill Hitah'ya the Keeper and obtain the key.",
							group = {
								kind = "group",
								size = 5,
							},
						},
					},
				},
				{
					title = "Free the elder",
					goals = {
						{
							t = "turnin",
							quest = 7846,
							title = "Recover the Key!",
							map = 1425,
							x = 59.6,
							y = 77.9,
							note = "Return to Elder Torntusk.",
							rewards = {
								xp = 6100,
							},
						},
						{
							t = "accept",
							quest = 7847,
							title = "Return to Primal Torntusk",
							minLevel = 46,
							map = 1425,
							x = 59.6,
							y = 77.9,
							note = "Take his delivery to Primal Torntusk.",
						},
					},
				},
				{
					title = "Finish the Jintha objectives",
					goals = {
						{
							t = "complete",
							quest = 7850,
							title = "Dark Vessels",
							note = "Finish 10 ground Vessels of Tainted Blood.",
						},
						{
							t = "complete",
							quest = 7849,
							title = "Separation Anxiety",
							note = "Obtain both the skull and bone ground pickups.",
						},
						{
							t = "complete",
							quest = 7861,
							title = "WANTED: Vile Priestess Hexx and Her Minions",
							note = "Kill Vile Priestess Hexx and 20 Vilebranch Aman'zasi Guards.",
							group = {
								kind = "group",
								size = 5,
							},
						},
						{
							t = "complete",
							quest = 7862,
							title = "Job Opening: Guard Captain of Revantusk Village",
							note = "Kill 20 each of Berserkers, Shadow Hunters, Blood Drinkers and Soul Eaters.",
							group = {
								kind = "group",
								size = 5,
							},
						},
						{
							t = "task",
							text = "Use the Sacred Mallet at the Jintha'Alor altar, or confirm a party member already has the Mallet of Zul'Farrak",
						},
					},
				},
				{
					title = "Jintha'Alor rewards",
					note = "Keep the Mallet for Gahz'rilla. The Ancient Egg follow-up is not available before the Zul'Farrak prophecy, so it is outside this climb.",
					goals = {
						{
							t = "turnin",
							quest = 7850,
							title = "Dark Vessels",
							map = 1425,
							x = 78.2,
							y = 81.2,
							note = "Primal Torntusk.",
							rewards = {
								xp = 5900,
							},
						},
						{
							t = "turnin",
							quest = 7847,
							title = "Return to Primal Torntusk",
							map = 1425,
							x = 78.2,
							y = 81.2,
							note = "Primal Torntusk.",
							rewards = {
								xp = 4900,
							},
						},
						{
							t = "turnin",
							quest = 7849,
							title = "Separation Anxiety",
							map = 1425,
							x = 79.2,
							y = 79.5,
							note = "Markhor.",
							rewards = {
								xp = 5900,
							},
						},
						{
							t = "turnin",
							quest = 7861,
							title = "WANTED: Vile Priestess Hexx and Her Minions",
							map = 1425,
							x = 78.2,
							y = 81.2,
							note = "Primal Torntusk, Revantusk Village.",
							rewards = {
								xp = 6100,
							},
						},
						{
							t = "turnin",
							quest = 7862,
							title = "Job Opening: Guard Captain of Revantusk Village",
							map = 1425,
							x = 78.2,
							y = 81.2,
							note = "Primal Torntusk, Revantusk Village.",
							rewards = {
								xp = 6100,
							},
						},
					},
				},
			},
		})
	end
	register()
end

-- Source: guides/07-zulfarrak.guide
do
	local function register()
		Polestar.RegisterGuide({
			id = "five-friends-43-48/07-zulfarrak",
			title = "07 - Zul'Farrak (47-48)",
			faction = "Horde",
			minLevel = 47,
			maxLevel = 48,
			category = "Leveling",
			folder = "Five Friends 43-48",
			keywords = {
				"group",
				"horde",
				"dungeon",
				"five friends",
			},
			why = "Five-player quest route. Level band 47-48 is an estimate, not a grind requirement.",
			zone = 1454,
			next = "five-friends-43-48/08-maraudon-finish",
			author = "Your group",
			version = 3,
			group = true,
			names = {
				["quest:2768"] = "Divino-matic Rod",
				["quest:2770"] = "Gahz'rilla",
				["quest:2846"] = "Tiara of the Deep",
				["quest:2865"] = "Scarab Shells",
				["quest:2936"] = "The Spider God",
				["quest:3042"] = "Troll Temper",
				["quest:3527"] = "The Prophecy of Mosh'aru",
				["quest:7068"] = "Shadowshard Fragments",
				["quest:81"] = "Ripple Delivery",
				["quest:96775"] = "Zum'rah's Head",
				["quest:96776"] = "An'she's Radiance",
			},
			steps = {
				{
					title = "Orgrimmar delivery and Mara pickup",
					goals = {
						{
							t = "turnin",
							quest = 81,
							title = "Ripple Delivery",
							map = 1454,
							x = 59.5,
							y = 36.6,
							note = "Dran Droffers: {quest:81}.",
							rewards = {
								xp = 4400,
							},
						},
						{
							t = "accept",
							quest = 7068,
							title = "Shadowshard Fragments",
							minLevel = 39,
							map = 1454,
							x = 39,
							y = 86.1,
							note = "Uthel'nay: {quest:7068} for Maraudon.",
						},
					},
				},
				{
					title = "Sen'jin prerequisite",
					goals = {
						{
							t = "turnin",
							quest = 2935,
							title = "Consult Master Gadrin",
							map = 1411,
							x = 55.9,
							y = 74.7,
							note = "Master Gadrin in Sen'jin Village.",
							rewards = {
								xp = 2900,
							},
						},
						{
							t = "accept",
							quest = 2936,
							title = "The Spider God",
							minLevel = 40,
							map = 1411,
							x = 55.9,
							y = 74.7,
							note = "{quest:2936}: take it before entering Zul'Farrak.",
						},
					},
				},
				{
					title = "Skywatcher Plateau dungeon pickups",
					goals = {
						{
							t = "accept",
							quest = 96775,
							title = "Zum'rah's Head",
							minLevel = 42,
							map = 1412,
							x = 32.5,
							y = 20.7,
							note = "Mazu'kon: {quest:96775} for Zul'Farrak.",
						},
						{
							t = "accept",
							quest = 96776,
							title = "An'she's Radiance",
							minLevel = 43,
							map = 1412,
							x = 32.6,
							y = 24.1,
							note = "Olana Brighthoof: {quest:96776} for Maraudon.",
						},
					},
				},
				{
					title = "{quest:2770} pickup",
					goals = {
						{
							t = "accept",
							quest = 2770,
							title = "Gahz'rilla",
							minLevel = 40,
							map = 1441,
							x = 78.1,
							y = 77.1,
							note = "Wizzle Brassbolts at Mirage Raceway in the Shimmering Flats.",
						},
					},
				},
				{
					title = "Prophecy prerequisite hand-in",
					goals = {
						{
							t = "turnin",
							quest = 3520,
							title = "Screecher Spirits",
							map = 1446,
							x = 67,
							y = 22.4,
							note = "Yeh'kinya, Steamwheedle Port.",
							rewards = {
								xp = 3750,
							},
						},
						{
							t = "accept",
							quest = 3527,
							title = "The Prophecy of Mosh'aru",
							minLevel = 40,
							map = 1446,
							x = 67,
							y = 22.4,
							note = "{quest:3527}.",
						},
					},
				},
				{
					title = "Gadgetzan dungeon pickups",
					goals = {
						{
							t = "accept",
							quest = 2865,
							title = "Scarab Shells",
							minLevel = 40,
							map = 1446,
							x = 51.6,
							y = 26.8,
							note = "Tran'rek: {quest:2865}.",
						},
						{
							t = "accept",
							quest = 3042,
							title = "Troll Temper",
							minLevel = 40,
							map = 1446,
							x = 51.4,
							y = 28.7,
							note = "Trenton Lighthammer: {quest:3042}.",
						},
						{
							t = "accept",
							quest = 2768,
							title = "Divino-matic Rod",
							minLevel = 40,
							map = 1446,
							x = 52.5,
							y = 28.5,
							note = "Chief Engineer Bilgewhizzle: {quest:2768}.",
						},
					},
				},
				{
					title = "Zul'Farrak readiness",
					note = "Checklist: {quest:2865}, {quest:3042}, {quest:2768}, Prophecy of Mosh'aru, {quest:2770}, {quest:2846}, {quest:96775}, {quest:2936}. If Tiara is missing, visit Tabetha now. Keep the Maraudon quests in your log.",
					goals = {
						{
							t = "task",
							text = "Every player has all eight ZF quests, and someone carries the Mallet of Zul'Farrak",
						},
					},
				},
				{
					title = "Zul'Farrak: Theka and Zum'rah",
					note = "Loot the First Mosh'aru Tablet from Theka while here. Collect {quest:3042} from the dungeon's trolls throughout the clear. This step is mandatory group content.",
					goals = {
						{
							t = "complete",
							quest = 2936,
							title = "The Spider God",
							note = "READ the Tablet of Theka in Theka's area for {quest:2936}; do not confuse it with the prophecy loot.",
							carriedTo = "five-friends-43-48/08-maraudon-finish",
						},
						{
							t = "complete",
							quest = 96775,
							title = "Zum'rah's Head",
							note = "Kill Witch Doctor Zum'rah and loot his head.",
							group = {
								kind = "group",
								size = 5,
							},
						},
					},
				},
				{
					title = "Zul'Farrak: pyramid and Sergeant Bly",
					goals = {
						{
							t = "complete",
							quest = 2768,
							title = "Divino-matic Rod",
							note = "Kill the Executioner, free the prisoners, finish the pyramid event, ask Weegli to open the final gate, then confront and kill Sergeant Bly for the {quest:2768}.",
							group = {
								kind = "group",
								size = 5,
							},
						},
					},
				},
				{
					title = "Zul'Farrak: pool, tablets and collections",
					note = "Check all eight quest objectives before leaving. The one-clear assumption includes finishing these dungeon collections; do not leave while one player still needs loot.",
					goals = {
						{
							t = "complete",
							quest = 2846,
							title = "Tiara of the Deep",
							note = "Kill Hydromancer Velratha and loot the {quest:2846}.",
							group = {
								kind = "group",
								size = 5,
							},
						},
						{
							t = "complete",
							quest = 3527,
							title = "The Prophecy of Mosh'aru",
							note = "Loot both Mosh'aru Tablets: Theka and Hydromancer Velratha.",
						},
						{
							t = "complete",
							quest = 2770,
							title = "Gahz'rilla",
							note = "Use the Mallet on the gong, kill {quest:2770}, and loot the required scale.",
							group = {
								kind = "group",
								size = 5,
							},
						},
						{
							t = "complete",
							quest = 2865,
							title = "Scarab Shells",
							note = "Collect five Uncracked Scarab Shells per player.",
						},
						{
							t = "complete",
							quest = 3042,
							title = "Troll Temper",
							note = "Collect 20 {quest:3042} per player.",
						},
						{
							t = "task",
							text = "Finish the full clear, including the final bosses beyond Weegli's opened gate",
						},
					},
				},
				{
					title = "Gadgetzan ZF rewards",
					goals = {
						{
							t = "turnin",
							quest = 2865,
							title = "Scarab Shells",
							map = 1446,
							x = 51.6,
							y = 26.8,
							note = "Tran'rek.",
							rewards = {
								xp = 7800,
							},
						},
						{
							t = "turnin",
							quest = 3042,
							title = "Troll Temper",
							map = 1446,
							x = 51.4,
							y = 28.7,
							note = "Trenton Lighthammer.",
							rewards = {
								xp = 7800,
							},
						},
						{
							t = "turnin",
							quest = 2768,
							title = "Divino-matic Rod",
							map = 1446,
							x = 52.5,
							y = 28.5,
							note = "Chief Engineer Bilgewhizzle.",
							rewards = {
								xp = 12600,
							},
						},
					},
				},
				{
					title = "Prophecy reward",
					note = "The Ancient Egg is an optional later chain, not part of this 43-48 budget; it would require returning to Jintha'Alor.",
					goals = {
						{
							t = "turnin",
							quest = 3527,
							title = "The Prophecy of Mosh'aru",
							map = 1446,
							x = 67,
							y = 22.4,
							note = "Yeh'kinya, Steamwheedle Port.",
							rewards = {
								xp = 10500,
							},
						},
					},
				},
				{
					title = "{quest:2770} reward",
					goals = {
						{
							t = "turnin",
							quest = 2770,
							title = "Gahz'rilla",
							map = 1441,
							x = 78.1,
							y = 77.1,
							note = "Wizzle Brassbolts, Mirage Raceway.",
							rewards = {
								xp = 14200,
							},
						},
					},
				},
				{
					title = "Tiara reward",
					goals = {
						{
							t = "turnin",
							quest = 2846,
							title = "Tiara of the Deep",
							map = 1445,
							x = 46,
							y = 57.1,
							note = "Tabetha, Dustwallow Marsh.",
							rewards = {
								xp = 12100,
							},
						},
					},
				},
				{
					title = "Zum'rah reward",
					note = "Keep {quest:2936} completed in your log for the final Sen'jin delivery. Proceed to Desolace and Maraudon. Keep {quest:96776}, {quest:7068} and Rot and Regret.",
					goals = {
						{
							t = "turnin",
							quest = 96775,
							title = "Zum'rah's Head",
							map = 1412,
							x = 32.5,
							y = 20.7,
							note = "Mazu'kon, Skywatcher Plateau.",
							rewards = {
								xp = 10100,
							},
						},
					},
				},
			},
		})
	end
	register()
end

-- Source: guides/08-maraudon-finish.guide
do
	local function register()
		Polestar.RegisterGuide({
			id = "five-friends-43-48/08-maraudon-finish",
			title = "08 - Maraudon & Final Rewards (48-49)",
			faction = "Horde",
			minLevel = 48,
			maxLevel = 49,
			category = "Leveling",
			folder = "Five Friends 43-48",
			keywords = {
				"group",
				"horde",
				"dungeon",
				"five friends",
			},
			why = "Five-player quest route. Level band 48-49 is an estimate, not a grind requirement.",
			zone = 1443,
			author = "Your group",
			version = 3,
			group = true,
			names = {
				["quest:2936"] = "The Spider God",
				["quest:7028"] = "Twisted Evils",
				["quest:7029"] = "Vyletongue Corruption",
				["quest:7044"] = "Legends of Maraudon",
				["quest:7046"] = "The Scepter of Celebras",
				["quest:7064"] = "Corruption of Earth and Seed",
				["quest:7066"] = "Seed of Life",
				["quest:7067"] = "The Pariah's Instructions",
				["quest:7068"] = "Shadowshard Fragments",
				["quest:93404"] = "Rot and Regret",
				["quest:96776"] = "An'she's Radiance",
			},
			steps = {
				{
					title = "Maraudon quest pickups",
					goals = {
						{
							t = "accept",
							quest = 7067,
							title = "The Pariah's Instructions",
							minLevel = 39,
							note = "Centaur Pariah, roaming southern Desolace: {quest:7067}.",
						},
						{
							t = "accept",
							quest = 7029,
							title = "Vyletongue Corruption",
							minLevel = 41,
							map = 1443,
							x = 23.2,
							y = 70.2,
							note = "Vark Battlescar in Shadowprey Village: {quest:7029}.",
						},
						{
							t = "accept",
							quest = 7028,
							title = "Twisted Evils",
							minLevel = 41,
							map = 1443,
							x = 62.1,
							y = 39.6,
							note = "Willow at Kormek's Hut: {quest:7028}.",
						},
						{
							t = "accept",
							quest = 7064,
							title = "Corruption of Earth and Seed",
							minLevel = 45,
							map = 1443,
							x = 26.9,
							y = 77.7,
							note = "Selendra near Shadowprey: Horde {quest:7064}, requires level 45.",
						},
					},
				},
				{
					title = "Maraudon entrance pickup",
					goals = {
						{
							t = "accept",
							quest = 7044,
							title = "Legends of Maraudon",
							minLevel = 41,
							note = "Cavindra in the orange-side exterior caverns: {quest:7044}.",
						},
					},
				},
				{
					title = "Exterior preparation",
					note = "Cavindra and the first three khans are outside the instance. Keep the filled Coated Cerulean Vial for the orange-wing plants. The two remaining khans are inside, one in each wing.",
					goals = {
						{
							t = "complete",
							quest = 7068,
							title = "Shadowshard Fragments",
							note = "Collect 10 {quest:7068} per player in the purple-side exterior caverns.",
						},
						{
							t = "task",
							text = "Kill the Nameless Prophet for the Amulet of Spirits; use it on Kolk in the central exterior, Gelk in the purple exterior, and Magra in the orange exterior; loot all three gems",
						},
						{
							t = "task",
							text = "Fill Vark's empty vial at the orange-entrance pool before going inside",
						},
					},
				},
				{
					title = "Maraudon readiness",
					note = "This is a full orange wing + purple wing + Princess clear. Do not use a Princess-only shortcut. Keep bag space for the khan gems, scepter pieces, quest loot, and Rotgrip/Princess water.",
					goals = {
						{
							t = "task",
							text = "All five have Legends, Pariah, Vyletongue, {quest:7028}, Corruption, {quest:93404}, {quest:96776} and Shadowshards as applicable",
						},
					},
				},
				{
					title = "Orange wing",
					note = "The vial quest counts the resulting healing credits; it does not require eight distinct plants. Collect Theradric Crystal Carvings from eligible dungeon enemies throughout the run.",
					goals = {
						{
							t = "complete",
							quest = 7029,
							title = "Vyletongue Corruption",
							note = "Use the filled vial at the red Vylestem plants; defeat the spawned Noxxious Scions until all eight healing credits are recorded.",
						},
						{
							t = "task",
							text = "Kill Noxxion for the Celebrian Rod, and reveal/defeat Veng, the Fifth Khan, in the orange wing for his gem",
						},
					},
				},
				{
					title = "Purple wing and the khan gems",
					note = "Finish both wings before moving through Celebras toward the inner dungeon. Do not discard the scepter pieces.",
					goals = {
						{
							t = "task",
							text = "Kill Lord Vyletongue for the Celebrian Diamond and reveal/defeat Maraudos, the Fourth Khan, in the purple wing",
						},
						{
							t = "complete",
							quest = 7067,
							title = "The Pariah's Instructions",
							note = "With all five khan gems and the Amulet of Spirits, right-click a gem to combine them into the Amulet of Union.",
						},
					},
				},
				{
					title = "Celebras",
					goals = {
						{
							t = "complete",
							quest = 7044,
							title = "Legends of Maraudon",
							note = "Bring the Celebrian Rod and Celebrian Diamond, defeat Celebras the Cursed, then speak to Celebras the Redeemed.",
						},
						{
							t = "turnin",
							quest = 7044,
							title = "Legends of Maraudon",
							note = "Celebras the Redeemed.",
							rewards = {
								xp = 6650,
							},
						},
						{
							t = "accept",
							quest = 7046,
							title = "The Scepter of Celebras",
							minLevel = 41,
							note = "Take {quest:7046}.",
						},
					},
				},
				{
					title = "Scepter ritual",
					goals = {
						{
							t = "complete",
							quest = 7046,
							title = "The Scepter of Celebras",
							note = "Follow Celebras's dialogue and ritual; everyone obtains their quest credit.",
						},
						{
							t = "turnin",
							quest = 7046,
							title = "The Scepter of Celebras",
							note = "Celebras the Redeemed.",
							rewards = {
								xp = 11100,
							},
						},
					},
				},
				{
					title = "Inner Maraudon bosses",
					note = "After the Princess dies, accept {quest:7066} below BEFORE dropping into the pool for Rotgrip and the water.",
					goals = {
						{
							t = "complete",
							quest = 96776,
							title = "An'she's Radiance",
							note = "Loot {quest:96776} from the FIXED CRYSTAL beside Landslide in the inner crystal chamber; it is not his ordinary boss loot.",
						},
						{
							t = "complete",
							quest = 7064,
							title = "Corruption of Earth and Seed",
							note = "Kill Princess Theradras.",
							group = {
								kind = "group",
								size = 5,
							},
						},
					},
				},
				{
					title = "{quest:7066} pickup",
					goals = {
						{
							t = "accept",
							quest = 7066,
							title = "Seed of Life",
							minLevel = 39,
							note = "Zaetar's Spirit in the Princess area; accept before leaving the instance.",
						},
					},
				},
				{
					title = "Rotgrip water and final collection check",
					note = "{quest:93404} is not complete in the dungeon. Its remaining objective is to use the water on the burning treant back in Shen'dralas.",
					goals = {
						{
							t = "collect",
							quest = 93404,
							item = 258296,
							itemName = "Vial of Earth Song Water",
							count = 1,
							oi = 1,
							note = "Loot the geyser in the eastern Rotgrip pool under the stone bridge; keep it for the burning treant.",
						},
						{
							t = "complete",
							quest = 7028,
							title = "Twisted Evils",
							note = "Finish 25 Theradric Crystal Carvings per player.",
						},
						{
							t = "task",
							text = "Finish the full clear, kill Rotgrip, and confirm every player has the water, {quest:96776}, scepter, amulet and {quest:7066}",
						},
					},
				},
				{
					title = "Desolace hand-ins",
					note = "At the 13% assumption the lowest member should reach 48 around this block. The remaining deliveries provide the margin and are needed in the 3% sensitivity case.",
					goals = {
						{
							t = "turnin",
							quest = 7067,
							title = "The Pariah's Instructions",
							note = "Centaur Pariah.",
							rewards = {
								xp = 10650,
							},
						},
						{
							t = "turnin",
							quest = 7029,
							title = "Vyletongue Corruption",
							map = 1443,
							x = 23.2,
							y = 70.2,
							note = "Vark Battlescar, Shadowprey Village.",
							rewards = {
								xp = 10250,
							},
						},
						{
							t = "turnin",
							quest = 7028,
							title = "Twisted Evils",
							map = 1443,
							x = 62.1,
							y = 39.6,
							note = "Willow, Kormek's Hut.",
							rewards = {
								xp = 10250,
							},
						},
						{
							t = "turnin",
							quest = 7064,
							title = "Corruption of Earth and Seed",
							map = 1443,
							x = 26.9,
							y = 77.7,
							note = "Selendra near Shadowprey.",
							rewards = {
								xp = 11900,
							},
						},
					},
				},
				{
					title = "Restore the tree",
					goals = {
						{
							t = "complete",
							quest = 93404,
							title = "Rot and Regret",
							note = "Return to Shen'dralas and use Earth Song Water on the massive burning treant beside Woodwyrd before reporting to him.",
						},
					},
				},
				{
					title = "{quest:93404} reward",
					note = "Corpsefeeder's Carapace is an optional bonus from an elite encounter. Use any already-held starter and deliver it to Kog'thug when convenient; no extra search or respawn wait is part of this route.",
					goals = {
						{
							t = "turnin",
							quest = 93404,
							title = "Rot and Regret",
							map = 2652,
							x = 69.5,
							y = 71.9,
							note = "Woodwyrd.",
							rewards = {
								xp = 11100,
							},
						},
					},
				},
				{
					title = "{quest:96776} reward",
					goals = {
						{
							t = "turnin",
							quest = 96776,
							title = "An'she's Radiance",
							map = 1412,
							x = 32.6,
							y = 24.1,
							note = "Olana Brighthoof, Skywatcher Plateau.",
							rewards = {
								xp = 11900,
							},
						},
					},
				},
				{
					title = "Shadowshard reward",
					goals = {
						{
							t = "turnin",
							quest = 7068,
							title = "Shadowshard Fragments",
							map = 1454,
							x = 39,
							y = 86.1,
							note = "Uthel'nay, Orgrimmar.",
							rewards = {
								xp = 6750,
							},
						},
					},
				},
				{
					title = "{quest:2936} reward",
					goals = {
						{
							t = "turnin",
							quest = 2936,
							title = "The Spider God",
							map = 1411,
							x = 55.9,
							y = 74.7,
							note = "Master Gadrin, Sen'jin Village.",
							rewards = {
								xp = 9700,
							},
						},
					},
				},
				{
					title = "{quest:7066} delivery",
					note = "Use a known travel route or a mage portal as available. The group is not assumed to share the druid's Teleport: Moonglade. Count this XP only when each player reaches Remulos and hands it in.",
					goals = {
						{
							t = "turnin",
							quest = 7066,
							title = "Seed of Life",
							note = "Keeper Remulos, Moonglade.",
							rewards = {
								xp = 11900,
							},
						},
					},
				},
				{
					title = "All planned quest rewards complete",
					note = "Finish every scheduled quest hand-in and dungeon reward. The level band is approximate: do not grind solely to reach a displayed number before completing this guide. Optional quest starters and incidental kills can change the result.",
					goals = {
						{
							t = "task",
							text = "Finished: every required group objective, dungeon quest and reward delivery checked",
						},
					},
				},
			},
		})
	end
	register()
end

