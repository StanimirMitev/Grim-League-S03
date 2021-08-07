gd.GDLeague.Chests = {}

local base_chance = 10
local current_chance = base_chance
local step_increment = 2
--math.randomseed(os.time())

function gd.GDLeague.Chests.TriggerTrap(chest_tier)
	if( current_chance >= random(1, 200)) then
		print("Success ")
		base_chance = base_chance + 6
		current_chance = base_chance
		local coords = Game.GetLocalPlayer():GetCoords()
		local proxy = Proxy.Create("records/proxies/GrimLeagueChests/devotionproxy_b01.dbr", coords.origin, true)
		proxy:SetCoords(coords)
		return
	else
		current_chance = current_chance + step_increment + chest_tier
		current_chance = min(current_chance, 190)
	end
	print("current change:")
	print(current_chance)
end

function gd.GDLeague.Chests.OnOpenTier1()
	gd.GDLeague.Chests.TriggerTrap(1)
end

function gd.GDLeague.Chests.OnOpenTier2()
	gd.GDLeague.Chests.TriggerTrap(2)
end

function gd.GDLeague.Chests.OnOpenTier3()
	gd.GDLeague.Chests.TriggerTrap(3)
end

function gd.GDLeague.Chests.OnOpenTier4()
	gd.GDLeague.Chests.TriggerTrap(4)
end

function gd.GDLeague.Chests.gauntletWaveEventChestOpened()
	gd.quests.areaDPortValburyChallenges.gauntletWaveEventChestOpened()
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.trappedChest01Opened()
	gd.quests.areaDPortValburyChallenges.trappedChest01Opened()
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.trappedChest02Opened()
	gd.quests.areaDPortValburyChallenges.trappedChest02Opened()
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.gauntletChestOpened()
	gd.quests.areaDBastionOfChaosChallenges.gauntletChestOpened()
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.trappedChest01Opened()
	gd.quests.areaDBastionOfChaosChallenges.trappedChest01Opened()
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.trappedChest02Opened()
	gd.quests.areaDBastionOfChaosChallenges.trappedChest02Opened()
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.gauntletChestOpened()
	gd.quests.areaEAncientGroveChallenges.gauntletChestOpened()
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.trappedChest01Opened()
	gd.quests.areaEAncientGroveChallenges.trappedChest01Opened()
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.trappedChest02Opened()
	gd.quests.areaEAncientGroveChallenges.trappedChest02Opened()
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.trappedChest03Opened()
	gd.quests.areaEAncientGroveChallenges.trappedChest03Opened()
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.trappedChest04Opened()
	gd.quests.areaEAncientGroveChallenges.trappedChest04Opened()
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.waveEventRoomAChestOpened()
	gd.quests.homesteadStepsOfTormentChallenges.waveEventRoomAChestOpened()
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.gauntletChestOpened()
	gd.quests.areaGTombOfHereticChallenges.gauntletChestOpened()
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.onOpenSOTChallengeChest()
	gd.quests.homesteadStepsOfTormentChallenges.trappedChestOpened()
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretA01ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_A01")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretA02ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_A02")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretA03ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_A03")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretA04ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_A04")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretA05ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_A05")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretA06ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_A06")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretA07ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_A07")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretA08ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_A08")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretA09ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_A09")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretA10ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_A10")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretA11ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_A11")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretA12ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_A12")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretB01ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_B01")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretB02ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_B02")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretB03ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_B03")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretB04ChestFound()
    GiveTokenToLocalPlayer("SECRETCHEST_B04")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretB05ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_B05")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretB06ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_B06")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretB07ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_B07")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretB08ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_B08")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretB09ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_B09")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretB10ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_B10")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretB11ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_B11")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretB12ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_B12")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretB13ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_B13")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretB14ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_B14")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretB15ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_B15")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretB16ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_B16")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretB17ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_B17")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretB18ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_B18")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretB19ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_B19")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretB20ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_B20")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretB21ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_B21")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretC01ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_C01")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretC02ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_C02")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretC03ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_C03")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretC04ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_C04")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretC05ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_C05")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretC06ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_C06")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretC07ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_C07")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretC08ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_C08")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretC09ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_C09")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretC10ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_C10")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretC11ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_C11")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretC12ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_C12")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretC13ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_C13")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretD01ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_D01")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretD02ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_D02")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretD03ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_D03")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretD04ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_D04")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretD05ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_D05")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretD06ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_D06")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretD07ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_D07")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretD08ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_D08")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretD09ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_D09")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretD10ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_D10")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretD11ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_D11")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretD12ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_D12")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretD13ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_D13")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretD14ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_D14")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretD15ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_D15")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretD16ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_D16")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretD17ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_D17")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretD18ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_D18")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretD19ChestFound()
    GiveTokenToLocalPlayer("SECRETCHEST_D19")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretD20ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_D20")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretD21ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_D21")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretD22ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_D22")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretD23ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_D23")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretE01ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_E01")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretE02ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_E02")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretE03ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_E03")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretE04ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_E04")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretE05ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_E05")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretE06ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_E06")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretE07ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_E07")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretE08ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_E08")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretE09ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_E09")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretE10ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_E10")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretE11ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_E11")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretE12ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_E12")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretE13ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_E13")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretE14ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_E14")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretE15ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_E15")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretE16ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_E16")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretE17ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_E17")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretE18ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_E18")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretE19ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_E19")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretE20ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_E20")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretE21ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_E21")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretE22ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_E22")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretF01ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_F01")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretF02ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_F02")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretF03ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_F03")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretF04ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_F04")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretF05ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_F05")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretF06ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_F06")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretF07ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_F07")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretF08ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_F08")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretF09ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_F09")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretF10ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_F10")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretF11ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_F11")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretF12ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_F12")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretF13ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_F13")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretF14ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_F14")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretF15ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_F15")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretF16ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_F16")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretF17ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_F17")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretF18ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_F18")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretF19ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_F19")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretF20ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_F20")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretF21ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_F21")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretF22ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_F22")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretF23ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_F23")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretF24ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_F24")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretF25ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_F25")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretF26ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_F26")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretF27ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_F27")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG01ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G01")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG02ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G02")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG03ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G03")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG04ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G04")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG05ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G05")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG06ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G06")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG07ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G07")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG08ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G08")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG09ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G09")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG10ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G10")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG11ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G11")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG12ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G12")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG13ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G13")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG14ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G14")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG15ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G15")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG16ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G16")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG17ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G17")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG18ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G18")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG19ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G19")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG20ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G20")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG21ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G21")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG22ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G22")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG23ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G23")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG24ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G24")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG25ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G25")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG26ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G26")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG27ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G27")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG28ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G28")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG29ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G29")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG30ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G30")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG31ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G31")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG32ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G32")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG33ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G33")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG34ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G34")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG35ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G35")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG36ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G36")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG37ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G37")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG38ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G38")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.secretG39ChestFound()
	GiveTokenToLocalPlayer("SECRETCHEST_G39")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.bonusA01ChestFound()
	GiveTokenToLocalPlayer("BONUSCHEST_A01")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.bonusA02ChestFound()
	GiveTokenToLocalPlayer("BONUSCHEST_A02")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.bonusA03ChestFound()
	GiveTokenToLocalPlayer("BONUSCHEST_A03")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.bonusB01ChestFound()
	GiveTokenToLocalPlayer("BONUSCHEST_B01")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.bonusB02ChestFound()
	GiveTokenToLocalPlayer("BONUSCHEST_B02")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.bonusB03ChestFound()
	GiveTokenToLocalPlayer("BONUSCHEST_B03")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.bonusE02ChestFound()
	GiveTokenToLocalPlayer("BONUSCHEST_E02")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.bonusE03ChestFound()
	GiveTokenToLocalPlayer("BONUSCHEST_E03")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.bonusE04ChestFound()
	GiveTokenToLocalPlayer("BONUSCHEST_E04")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.bonusF01ChestFound()
	GiveTokenToLocalPlayer("BONUSCHEST_F01")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.bonusF02ChestFound()
	GiveTokenToLocalPlayer("BONUSCHEST_F02")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.bonusF03ChestFound()
	GiveTokenToLocalPlayer("BONUSCHEST_F03")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.bonusF04ChestFound()
	GiveTokenToLocalPlayer("BONUSCHEST_F04")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.bonusF05ChestFound()
	GiveTokenToLocalPlayer("BONUSCHEST_F05")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.bonusG01ChestFound()
	GiveTokenToLocalPlayer("BONUSCHEST_G01")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.bonusG02ChestFound()
	GiveTokenToLocalPlayer("BONUSCHEST_G02")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.bonusG03ChestFound()
	GiveTokenToLocalPlayer("BONUSCHEST_G03")
	gd.GDLeague.Chests.OnOpenTier3()
end

function gd.GDLeague.Chests.bonusG04ChestFound()
	GiveTokenToLocalPlayer("BONUSCHEST_G04")
	gd.GDLeague.Chests.OnOpenTier3()
end


