gd.GDLeague = {}

gd.GDLeague.TokenTable = {
	Dungeon_SoT = {
		token = "GDL_Dungeon_StepsOfTorment",
		notification = "tagGDLeagueDungeonTokenNotification",
	},
	Dungeon_BoC = {
		token = "GDL_Dungeon_Bastion",
		notification = "tagGDLeagueDungeonTokenNotification",
	},
	Dungeon_PV = {
		token = "GDL_Dungeon_Valbury",
		notification = "tagGDLeagueDungeonTokenNotification",
	},
	Dungeon_AG = {
		token = "GDL_Dungeon_Grove",
		notification = "tagGDLeagueDungeonTokenNotification",
	},
	Dungeon_TotH = {
		token = "GDL_Dungeon_TombHeretic",
		notification = "tagGDLeagueDungeonTokenNotification",
	},
	Nemesis_Valdaran = {
		token = "GDL_Nemesis_Valdaran_",
		notification = "tagGDLeagueNemesisKillNotification",
	},
	Nemesis_Aleksander = {
		token = "GDL_Nemesis_Aleksander_",
		notification = "tagGDLeagueNemesisKillNotification",
	},
	Nemesis_Benjar = {
		token = "GDL_Nemesis_Bennjahr_",
		notification = "tagGDLeagueNemesisKillNotification",
	},
	Nemesis_Grava = {
		token = "GDL_Nemesis_Grava_",
		notification = "tagGDLeagueNemesisKillNotification",
	},
	Nemesis_Fabious = {
		token = "GDL_Nemesis_Fabius_",
		notification = "tagGDLeagueNemesisKillNotification",
	},
	Nemesis_Maiden = {
		token = "GDL_Nemesis_SideFaction_",
		notification = "tagGDLeagueNemesisKillNotification",
	},
	Nemesis_Zantarin = {
		token = "GDL_Nemesis_SideFaction_",
		notification = "tagGDLeagueNemesisKillNotification",
	},
	Nemesis_Eldritch = {
		token = "GDL_Nemesis_Kaisan_",
		notification = "tagGDLeagueNemesisKillNotification", 
	},
	Nemesis_Undead = {
		token = "GDL_Nemesis_Moosilauke_",
		notification = "tagGDLeagueNemesisKillNotification",
	},
	Nemesis_Beast = {
		token = "GDL_Nemesis_Kubacabra_",
		notification = "tagGDLeagueNemesisKillNotification",
	},
	Nemesis_Wendigo = {
		token = "GDL_Nemesis_Reaper_",
		notification = "tagGDLeagueNemesisKillNotification",
	},
	Nemesis_Normal = {
		token = "GDL_Nemesis_Normal",
		notification = "",
	},
	Shatterred_Realms_16 = {
		token = "GDL_SR_16",
		notification = "tagGDLeagueSRTokenEarned",
	},
	Shatterred_Realms_31 = {
		token = "GDL_SR_31",
		notification = "tagGDLeagueSRTokenEarned",
	},
	Shatterred_Realms_46 = {
		token = "GDL_SR_46",
		notification = "tagGDLeagueSRTokenEarned",
	},
	Shatterred_Realms_61 = {
		token = "GDL_SR_61",
		notification = "tagGDLeagueSRTokenEarned",
	},
	Shatterred_Realms_76 = {
		token = "GDL_SR_76",
		notification = "tagGDLeagueSRTokenEarned",
	},
	Shatterred_Realms_65_Challenge = {
		token = "GDL_SR_65_Challenge",
		notification = "tagGDLeagueSRChallengeTokenEarned",
	},
	Boss_Protoss = {
		token = "GDL_Boss_Protoss",
		notification = "tagGDLeagueWorldBossKillNotification",
	},
	Boss_Aldric = {
		token = "GDL_Boss_Aldric",
		notification = "tagGDLeagueWorldBossKillNotification",
	},
	Boss_Aldric2 = {
		token = "GDL_Boss_Aldric2",
		notification = "tagGDLeagueWorldBossKillNotification",
	},
	Boss_Loxmere = {
		token = "GDL_Boss_Loxmere",
		notification = "tagGDLeagueWorldBossKillNotification",
	},
	Boss_Kraval = {
		token = "GDL_Boss_Kraval",
		notification = "tagGDLeagueWorldBossKillNotification",
	},
	Boss_Rashalga = {
		token = "GDL_Boss_Rashalga",
		notification = "tagGDLeagueWorldBossKillNotification",
	},
	Super_Boss_Lokarr = {
		token = "GDL_Boss_Lokarr",
		notification = "tagGDLeagueSuperBossKillNotification",
	},
	Super_Boss_Bourbon = {
		token = "GDL_Boss_Bourbon",
		notification = "tagGDLeagueSuperBossKillNotification",
	},
	Super_Boss_Mogdrogen = {
		token = "GDL_Boss_Mogdrogen",
		notification = "tagGDLeagueSuperBossKillNotification",
	},
	Super_Boss_Ravager = {
		token = "GDL_Boss_Ravager",
		notification = "tagGDLeagueSuperBossKillNotification",
	},
	Super_Boss_Callagadra = {
		token = "GDL_Boss_Callagadra",
		notification = "tagGDLeagueSuperBossKillNotification",
	},
	Super_Boss_Crate = {
		token = "GDL_Boss_Crate",
		notification = "tagGDLeagueSuperBossKillNotification",
	},
	Boss_Elite_Challenge_Theodin= {
		token = "GDL_Boss_Theodin",
		notification = "tagGDLeagueWorldBossChallengeNotification",
	},
	Boss_Elite_Challenge_Korvaak= {
		token = "GDL_Boss_Korvaak",
		notification = "tagGDLeagueWorldBossChallengeNotification",
	},
	Super_Boss_Mod_Galakros = {
		token = "GDL_Boss_Galakros",
		notification = "tagGDLeagueSuperBossKillNotification",
	},
	Super_Boss_Mod_BallogNath = {
		token = "GDL_Boss_BallogNath",
		notification = "tagGDLeagueSuperBossKillNotification",
	},
	Super_Boss_Mod_Rolderathis = {
		token = "GDL_Boss_Rolderathis",
		notification = "tagGDLeagueSuperBossKillNotification",
	},
	Super_Boss_Mod_Aranea = {
		token = "GDL_Boss_Aranea",
		notification = "tagGDLeagueSuperBossKillNotification",
	},
	Super_Boss_Mod_Moira = {
		token = "GDL_Boss_Moira",
		notification = "tagGDLeagueSuperBossKillNotification",
	},
	Super_Boss_Mod_Garia = {
		token = "GDL_Boss_Garia",
		notification = "tagGDLeagueSuperBossKillNotification",
	},
	Boss_Galeslice = {
		token = "GDL_Boss_Galeslice",
		notification = "",
	},
	Boss_NarenKur = {
		token = "GDL_Boss_NarenKur",
		notification = "",
	},
	Boss_Karnath = {
		token = "GDL_Boss_Karnath",
		notification = "",
	},
	Boss_Rutnick = {
		token = "GDL_Boss_Rutnick",
		notification = "",
	},
	Boss_Blugrug = {
		token = "GDL_Boss_Blugrug",
		notification = "",
	},
	Boss_Astros = {
		token = "GDL_Boss_Astros",
		notification = "",
	},
	Boss_Abaddoth = {
		token = "GDL_Boss_Abaddoth",
		notification = "",
	},
	Celestial_Totem = {
		token = "GDL_Totem",
		notification = "",
	},
	Boss_Gutworm = {
		token = "GDL_Boss_Gutworm",
		notification = "",
	},
	Boss_HeraldStars = {
		token = "GDL_Boss_HeraldStars",
		notification = "",
	},
	Boss_HeraldDestruction = {
		token = "GDL_Boss_HeraldDestruction",
		notification = "",
	},
	Boss_HeraldFlame = {
		token = "GDL_Boss_HeraldFlame",
		notification = "",
	},
	Boss_Krieg = {
		token = "GDL_Boss_Krieg",
		notification = "",
	},
	Boss_Salazar = {
		token = "GDL_Boss_Salazar",
		notification = "",
	},
	Boss_Shambler = {
		token = "GDL_Boss_Shambler",
		notification = "",
	},
	Boss_Ronaprax = {
		token = "GDL_Boss_Ronaprax",
		notification = "",
	},
}

local LeagueDummyToken = "records/items/grimleagues03/questitems/GDLeagueDummyToken.dbr"
local LeagueEntryToken = "records/items/grimleagues03/questitems/grim_league_participation_token.dbr"
local recoveryToken = 'records/items/grimleagues03/questitems/grim_league_s02_recovery_token.dbr'
local participationtoken = "S03_Participation"

local LeagueDifficultyRequirement = Game.Difficulty.Legendary
local LeagueLevelRequirement = 100
local LeagueSRChallengeRequirement = 25
local LeagueNormalBossRequirement = 27
local LeagueNormalNemesisRequirement = 45
local LeagueEliteSideBossRequirement = 65
local LeagueEliteDungeonRequirement = 65
local LeagueEliteChallengeRequirement = 75
local LeagueUltimateBossesRequirement = 90
local LeagueUltimateBossChallengeRequirement = 35
local level_to_enter_sr = 0

function gd.GDLeague.DefaultLeagueCondition(player)
	return ( Game.GetGameDifficulty() == LeagueDifficultyRequirement and player:GetLevel() >= LeagueLevelRequirement )
end

function gd.GDLeague.SR65LeagueCondition(player)
	return ( Game.GetGameDifficulty() == Game.Difficulty.Normal and level_to_enter_sr <= LeagueSRChallengeRequirement)
end

function gd.GDLeague.EliteLeagueRequirement(player)
	return ( Game.GetGameDifficulty() == Game.Difficulty.Epic and player:GetLevel() <= LeagueEliteChallengeRequirement )
end

function gd.GDLeague.UltimateBossRequirement(player)
	return ( Game.GetGameDifficulty() == LeagueDifficultyRequirement and player:GetLevel() <= LeagueUltimateBossesRequirement )
end

function gd.GDLeague.UltimateBossChallengeRequirement(player)
	return ( Game.GetGameDifficulty() == LeagueDifficultyRequirement and player:GetLevel() <= LeagueUltimateBossChallengeRequirement )
end

function gd.GDLeague.EliteDungeonRequirement(player)
	return ( Game.GetGameDifficulty() == Game.Difficulty.Epic and player:GetLevel() <= LeagueEliteDungeonRequirement )
end

function gd.GDLeague.NormalBossRequirement(player)
	return ( Game.GetGameDifficulty() == Game.Difficulty.Normal and player:GetLevel() <= LeagueNormalBossRequirement )
end

function gd.GDLeague.NormalNemesisRequirement(player)
	return ( Game.GetGameDifficulty() == Game.Difficulty.Normal and player:GetLevel() <= LeagueNormalNemesisRequirement )
end

function gd.GDLeague.RedeemCondition(player)
	return (Game.GetGameDifficulty() == Game.Difficulty.Normal and player:GetLevel() == 4)
end

function gd.GDLeague.EliteSideBossRequirement(player)
	return ( Game.GetGameDifficulty() == Game.Difficulty.Epic and player:GetLevel() <= LeagueEliteSideBossRequirement )
end

function gd.GDLeague.RecoverToken()
	local player = Game.GetLocalPlayer()
	if (player:HasToken(participationtoken) and not player:HasItem(LeagueEntryToken, 1, false)) then
		player:GiveItem(LeagueEntryToken, 1, false)
	end
end

function gd.GDLeague.TestAllTokens()
	local player = Game.GetLocalPlayer()
	if(player:HasItem("records/items/grimleagues03/questitems/grim_league_s02_test_all_token.dbr", 1, false)) then
		gd.GDLeague.GrantTokenBoss_Galeslice()
		gd.GDLeague.GrantTokenBoss_NarenKur()
		gd.GDLeague.GrantTokenBoss_Karnath()
		gd.GDLeague.GrantTokenBoss_Rutnick()
		gd.GDLeague.GrantTokenBoss_Astros()
		gd.GDLeague.GrantTokenBoss_Abaddoth()
		gd.GDLeague.GrantTokenCelestialTotem()
		gd.GDLeague.GrantTokenGutworm()
		gd.GDLeague.GrantTokenHeraldStars()
		gd.GDLeague.GrantTokenHeraldDestruction()
		gd.GDLeague.GrantTokenHeraldFlame()
		gd.GDLeague.GrantTokenRonaprax()
		gd.GDLeague.GrantTokenShambler()
		gd.GDLeague.GrantTokenSalazar()
		gd.GDLeague.GrantTokenKrieg()
		
		gd.GDLeague.GrantTokenDungeonSoT()
		gd.GDLeague.GrantTokenDungeonBoC()
		gd.GDLeague.GrantTokenDungeonPV()
		gd.GDLeague.GrantTokenDungeonAG()
		gd.GDLeague.GrantTokenDungeonTotH()

		gd.GDLeague.GrantTokenNemesisAetherial()
		gd.GDLeague.GrantTokenNemesisVanguard()
		gd.GDLeague.GrantTokenNemesisChthonian()
		gd.GDLeague.GrantTokenNemesisAOMChthonian()
		gd.GDLeague.GrantTokenNemesisOutlaw()
		gd.GDLeague.GrantTokenNemesisMaiden()
		gd.GDLeague.GrantTokenNemesisOrder()
		gd.GDLeague.GrantTokenNemesisEldritch()
		gd.GDLeague.GrantTokenNemesisUndead()
		gd.GDLeague.GrantTokenNemesisBeast()
		gd.GDLeague.GrantTokenNemesisBeast()
		gd.GDLeague.GrantTokenNemesisBeast()
		gd.GDLeague.GrantTokenNemesisBeast()

		-- gd.GDLeague.GrantTokenDeepShatteredRealm(81)
		-- gd.GDLeague.GrantTokenDeepShatteredRealm(99)
		-- gd.GDLeague.GrantTokenDeepShatteredRealm(100)
		-- gd.GDLeague.GrantTokenDeepShatteredRealm(130)
	
		gd.GDLeague.GrantTokenShatteredRealm76()
		gd.GDLeague.GrantTokenShatteredRealm61()
		gd.GDLeague.GrantTokenShatteredRealm46()
		gd.GDLeague.GrantTokenShatteredRealm31()
		gd.GDLeague.GrantTokenShatteredRealm16()
		gd.GDLeague.GrantTokenShatteredRealm50Challenge()

		player:TakeItem("records/items/grimleagues03/questitems/grim_league_s02_test_all_token.dbr", 1, false)
		
		gd.GDLeague.GrantTokenProtossKill()
		gd.GDLeague.GrantTokenAldricKill()
		gd.GDLeague.GrantTokenAldricKill2()
		gd.GDLeague.GrantTokenLoxmereKill()
		gd.GDLeague.GrantTokenKravalKill()
		gd.GDLeague.GrantTokenRashalgaKill()
		gd.GDLeague.GrantTokenLokarrKill()
		gd.GDLeague.GrantTokenBourbonKill()
		gd.GDLeague.GrantTokenMogdrogenKill()
		gd.GDLeague.GrantTokenRavagerKill()
		gd.GDLeague.GrantTokenCallagadraKill()
		gd.GDLeague.GrantTokenCrateKill()
		gd.GDLeague.GrantTokenTheodinKill()
		gd.GDLeague.GrantTokenKorvaakKill()

		-- gd.GDLeague.GrantTokenRolderathis()
		-- gd.GDLeague.GrantTokenGalakros()
		-- gd.GDLeague.GrantTokenBallogNath()
	end
end

function gd.GDLeague.GrantGDLTokenItem(key, condition)
	local player = Game.GetLocalPlayer()
	-- if a custom condition is provided it will be used instead of the default one: lvl 100 on Ultimate
	condition = condition or gd.GDLeague.DefaultLeagueCondition
	if (player:HasItem(LeagueEntryToken, 1, false) and condition(player) and not player:HasToken(gd.GDLeague.TokenTable[key]["token"])) then
		GiveTokenToLocalPlayer(gd.GDLeague.TokenTable[key]["token"])
		UI.Notify(gd.GDLeague.TokenTable[key]["notification"])
	end
end

function gd.GDLeague.GrantGDLNemesisToken(key)
	local player = Game.GetLocalPlayer()
	if (player:HasItem(LeagueEntryToken, 1, false) and Game.GetGameDifficulty() == Game.Difficulty.Legendary and not player:HasToken(gd.GDLeague.TokenTable[key]["token"])) then
		GiveTokenToLocalPlayer(gd.GDLeague.TokenTable[key]["token"]..player:GetLevel())
		UI.Notify(gd.GDLeague.TokenTable[key]["notification"])
	end
end

-- Grant starter itmes to new characters
function gd.GDLeague.GiveStartingItems(id)
	local player = Game.GetLocalPlayer()
	gd.quests.devilsCrossingNPCSpiritGuide.triggerSpawnNecklace(id)

	gd.GDLeague.RecoverToken()
	
	if(player:HasToken("Received_Start_Items") or player:GetLevel() > 2 or Game.GetGameDifficulty() ~= Game.Difficulty.Normal) then
		return
	end
	GiveTokenToLocalPlayer("Received_Start_Items")
	player:GiveItem("records/items/faction/booster/boost_dc_b01.dbr", 1, false)
	player:GiveItem("records/items/faction/booster/boost_ro_b01.dbr", 1, false)
	player:GiveItem("records/items/faction/booster/boost_hs_b01.dbr", 1, false)
	player:GiveItem("records/items/faction/booster/boost_bl_b01.dbr", 1, false)
	player:GiveItem("records/items/faction/booster/boost_odv_b01.dbr", 1, false)
	player:GiveItem("records/items/faction/booster/boost_kc_b01.dbr", 1, false)
	player:GiveItem("records/items/faction/booster/boost_exile_b01.dbr", 1, false)
	player:GiveItem("records/items/faction/booster/boost_cw_b01.dbr", 1, false)
	player:GiveItem("records/items/faction/booster/boost_cu_b01.dbr", 1, false)
	player:GiveItem("records/items/faction/booster/boost_pm_b01.dbr", 1, false)
	player:GiveItem("records/items/faction/booster/boost_wgd_b01.dbr", 1, false)
	player:GiveItem("records/items/faction/booster/boost_wgb_b01.dbr", 1, false)
	player:GiveItem("records/items/faction/booster/boost_wgs_b01.dbr", 1, false)
	player:GiveItem("records/items/misc/difficultyunlock_ultimate.dbr", 1, false)
	player:GiveItem("records/items/crafting/consumables/gdl_xppotion_malmouth.dbr", 26, false)
	player:GiveItem("records/items/faction/booster/boosthostile_odv_c01.dbr", 1, false)
	player:GiveItem("records/items/faction/booster/boosthostile_kc_c01.dbr", 1, false)
	player:GiveItem("records/items/faction/booster/boosthostile_outlaw_c01.dbr", 1, false)
	player:GiveItem("records/items/crafting/blueprints/other/craft_endlessdungeon_keystone_04.dbr", 1, false)
	player:GiveItem(LeagueEntryToken, 1, false)
	GiveTokenToLocalPlayer(participationtoken)
end


-- Normal Boss Challenges
local quest_boss_Galeslice = "Boss_Galeslice"
local quest_boss_NarenKur = "Boss_NarenKur"
local quest_boss_Karnath = "Boss_Karnath"
local quest_boss_Rutnick = "Boss_Rutnick"
local quest_boss_Astros = "Boss_Astros"
local quest_boss_Abaddoth = "Boss_Abaddoth"
local quest_celestial_totem = "Celestial_Totem"
local quest_boss_gutworm = "Boss_Gutworm"
local quest_boss_heraldstars = "Boss_HeraldStars"
local quest_boss_heralddestruction = "Boss_HeraldDestruction"
local quest_boss_heraldflame = "Boss_HeraldFlame"
local quest_boss_Krieg = "Boss_Krieg"
local quest_Boss_Salazar = "Boss_Salazar"
local quest_Biss_Shambler = "Boss_Shambler"
local quest_Boss_Ronaprax = "Boss_Ronaprax"

function gd.GDLeague.GrantTokenBoss_Galeslice()
	gd.GDLeague.GrantGDLTokenItem(quest_boss_Galeslice, gd.GDLeague.NormalBossRequirement)
end

function gd.GDLeague.GrantTokenBoss_NarenKur()
	gd.GDLeague.GrantGDLTokenItem(quest_boss_NarenKur, gd.GDLeague.NormalBossRequirement)
end

function gd.GDLeague.GrantTokenBoss_Karnath()
	gd.GDLeague.GrantGDLTokenItem(quest_boss_Karnath, gd.GDLeague.NormalBossRequirement)
end

function gd.GDLeague.GrantTokenBoss_Rutnick()
	gd.GDLeague.GrantGDLTokenItem(quest_boss_Rutnick, gd.GDLeague.NormalBossRequirement)
end

function gd.GDLeague.GrantTokenBoss_Astros()
	gd.GDLeague.GrantGDLTokenItem(quest_boss_Astros, gd.GDLeague.NormalBossRequirement)
end

function gd.GDLeague.GrantTokenBoss_Abaddoth()
	gd.GDLeague.GrantGDLTokenItem(quest_boss_Abaddoth, gd.GDLeague.NormalBossRequirement)
end

function gd.GDLeague.GrantTokenCelestialTotem()
	gd.GDLeague.GrantGDLTokenItem(quest_celestial_totem, gd.GDLeague.NormalBossRequirement)
end

function gd.GDLeague.GrantTokenGutworm()
	gd.GDLeague.GrantGDLTokenItem(quest_boss_gutworm, gd.GDLeague.NormalBossRequirement)
end

function gd.GDLeague.GrantTokenHeraldStars()
	gd.quests.areaDPortValburyBosses.doorGuardianKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_boss_heraldstars, gd.GDLeague.EliteSideBossRequirement)
end

function gd.GDLeague.GrantTokenHeraldDestruction()
	gd.quests.areaCQuestLegionPriority.bossKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_boss_heralddestruction, gd.GDLeague.EliteSideBossRequirement)
end

function gd.GDLeague.GrantTokenHeraldFlame()
	gd.homesteadRepairs.heraldOfFlameKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_boss_heraldflame, gd.GDLeague.EliteSideBossRequirement)
end

function gd.GDLeague.GrantTokenKrieg()
	gd.quests.devilsCrossingQuestWarden.wardenKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_boss_Krieg, gd.GDLeague.UltimateBossChallengeRequirement)
end

function gd.GDLeague.GrantTokenSalazar(id)
	gd.quests.wightmireCultistCellar.bossDoorOpen(id)
	gd.GDLeague.GrantGDLTokenItem(quest_Boss_Salazar, gd.GDLeague.NormalBossRequirement)
end

function gd.GDLeague.GrantTokenShambler(id)
	gd.quests.devilsCrossingQuestBurrwitch.golemKilled(id)
	gd.GDLeague.GrantGDLTokenItem(quest_Biss_Shambler, gd.GDLeague.UltimateBossChallengeRequirement)
end

function gd.GDLeague.GrantTokenRonaprax()
	gd.GDLeague.GrantGDLTokenItem(quest_Boss_Ronaprax, gd.GDLeague.UltimateBossChallengeRequirement)
end


-- Skeleton Key Dungeons
local quest_dungeon_SoT = "Dungeon_SoT"
local quest_dungeon_BoC = "Dungeon_BoC"
local quest_dungeon_PV = "Dungeon_PV"
local quest_dungeon_AG = "Dungeon_AG"
local quest_dungeon_TotH = "Dungeon_TotH"

-- Gives token for completing the Steps Of Torment
function gd.GDLeague.GrantTokenDungeonSoT()
	gd.quests.homesteadStepsOfTormentBosses.unlockShortcut()
	gd.GDLeague.GrantGDLTokenItem(quest_dungeon_SoT, gd.GDLeague.EliteDungeonRequirement)
	gd.GDLeague.Chests.OnOpenTier4()
end

-- Gives token for completing the Bastion of Chaos
function gd.GDLeague.GrantTokenDungeonBoC()
	gd.GDLeague.GrantGDLTokenItem(quest_dungeon_BoC, gd.GDLeague.EliteDungeonRequirement)
	gd.GDLeague.Chests.OnOpenTier4()
end

-- Gives token for completing the Port Valbury
function gd.GDLeague.GrantTokenDungeonPV()
	gd.quests.areaDPortValburyBosses.unlockShortcut()
	gd.GDLeague.GrantGDLTokenItem(quest_dungeon_PV, gd.GDLeague.EliteDungeonRequirement)
	gd.GDLeague.Chests.OnOpenTier4()
end

-- Gives token for completing the Ancient Grove
function gd.GDLeague.GrantTokenDungeonAG()
	gd.quests.areaEAncientGroveBosses.unlockShortcut()
	gd.GDLeague.GrantGDLTokenItem(quest_dungeon_AG)
	gd.GDLeague.Chests.OnOpenTier4()
end

-- Gives token for completing the Tomb of The Heretic
function gd.GDLeague.GrantTokenDungeonTotH()
	gd.quests.areaGTombOfHereticBosses.unlockShortcut()
	gd.GDLeague.GrantGDLTokenItem(quest_dungeon_TotH)
	gd.GDLeague.Chests.OnOpenTier4()
end

-- Nemesis
local quest_nemesis_valdaran= "Nemesis_Valdaran"
local quest_nemesis_aleksander= "Nemesis_Aleksander"
local quest_nemesis_benjar= "Nemesis_Benjar"
local quest_nemesis_grava= "Nemesis_Grava"
local quest_nemesis_fabious= "Nemesis_Fabious"
local quest_nemesis_maiden= "Nemesis_Maiden"
local quest_nemesis_zantarin= "Nemesis_Zantarin"
local quest_nemesis_eldritch= "Nemesis_Eldritch"
local quest_nemesis_undead= "Nemesis_Undead"
local quest_nemesis_beast= "Nemesis_Beast"
local quest_nemesis_normal = "Nemesis_Normal"

-- Gives token for killing the Aehterial Nemesis
function gd.GDLeague.GrantTokenNemesisAetherial()
	gd.GDLeague.Nemesis.aetherialNemesisKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_nemesis_normal,  gd.GDLeague.NormalNemesisRequirement)
	gd.GDLeague.GrantGDLNemesisToken(quest_nemesis_valdaran)
end

-- Gives token for killing the Aetherial Vanguard Nemesis
function gd.GDLeague.GrantTokenNemesisVanguard()
	gd.GDLeague.Nemesis.aetherialVanguardNemesisKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_nemesis_normal, gd.GDLeague.NormalNemesisRequirement)
	gd.GDLeague.GrantGDLNemesisToken(quest_nemesis_aleksander)
end

-- Gives token for killing the Chthonian Nemesis
function gd.GDLeague.GrantTokenNemesisChthonian()
	gd.GDLeague.Nemesis.chthonianNemesisKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_nemesis_normal, gd.GDLeague.NormalNemesisRequirement)
	gd.GDLeague.GrantGDLNemesisToken(quest_nemesis_benjar)
end

-- Gives token for killing the Chthonian Nemesis Ashesh of Malmouth
function gd.GDLeague.GrantTokenNemesisAOMChthonian()
	gd.GDLeague.Nemesis.chthonianVoidbornNemesisKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_nemesis_normal, gd.GDLeague.NormalNemesisRequirement)
	gd.GDLeague.GrantGDLNemesisToken(quest_nemesis_grava)
end

-- Gives token for killing the Cronley's Ganag Nemesis
function gd.GDLeague.GrantTokenNemesisOutlaw()
	gd.GDLeague.Nemesis.outlawNemesisKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_nemesis_normal, gd.GDLeague.NormalNemesisRequirement)
	gd.GDLeague.GrantGDLNemesisToken(quest_nemesis_fabious)
end

-- Gives token for killing the Kymon's Chosen Nemesis
function gd.GDLeague.GrantTokenNemesisMaiden()
	gd.GDLeague.Nemesis.kymonChosenNemesisKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_nemesis_normal, gd.GDLeague.NormalNemesisRequirement)
	gd.GDLeague.GrantGDLNemesisToken(quest_nemesis_maiden)
end

-- Gives token for killing the Order of Death's VIgil Nemesis
function gd.GDLeague.GrantTokenNemesisOrder()
	gd.GDLeague.Nemesis.orderDeathVigilNemesisKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_nemesis_normal, gd.GDLeague.NormalNemesisRequirement)
	gd.GDLeague.GrantGDLNemesisToken(quest_nemesis_zantarin)
end
	
-- Gives token for killing the Eldrith Nemesis
function gd.GDLeague.GrantTokenNemesisEldritch()
	gd.GDLeague.Nemesis.eldritchNemesisKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_nemesis_normal, gd.GDLeague.NormalNemesisRequirement)
	gd.GDLeague.GrantGDLNemesisToken(quest_nemesis_eldritch)
end

-- Gives token for killing the Undead Nemesis
function gd.GDLeague.GrantTokenNemesisUndead()
	gd.GDLeague.Nemesis.undeadNemesisKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_nemesis_normal, gd.GDLeague.NormalNemesisRequirement)
	gd.GDLeague.GrantGDLNemesisToken(quest_nemesis_undead)
end

-- Gives token for killing the Beast Nemesis, must kill all 4 small Kubas
local killcount = 0
function gd.GDLeague.GrantTokenNemesisBeast()
	killcount = killcount + 1
	if(killcount == 4) then
		gd.GDLeague.Nemesis.beastNemesisP03AKilled()
		gd.GDLeague.Nemesis.beastNemesisP03BKilled()
		gd.GDLeague.Nemesis.beastNemesisP03CKilled()
		gd.GDLeague.Nemesis.beastNemesisP03DKilled()
		gd.GDLeague.GrantGDLTokenItem(quest_nemesis_normal, gd.GDLeague.NormalNemesisRequirement)
		gd.GDLeague.GrantGDLNemesisToken(quest_nemesis_beast)
		killcount = 0
	end
end

-- Shattered Realm
local quest_shatterred_realms_16 = "Shatterred_Realms_16"
local quest_shatterred_realms_31 = "Shatterred_Realms_31"
local quest_shatterred_realms_46 = "Shatterred_Realms_46"
local quest_shatterred_realms_61 = "Shatterred_Realms_61"
local quest_shatterred_realms_76 = "Shatterred_Realms_76"
local quest_shatterred_realms_65_challenge = "Shatterred_Realms_65_Challenge"

-- checks if player has beaten the time and awards tokens for the respective shard. Earning a token for a higher shard also awards the lower tiers.
function gd.GDLeague.GrantTokenShatteredRealm()
	gd.endlessDungeon.core.dispenseTreasure()
	local player = Game.GetLocalPlayer()
	if (Game.IsEndlessDungeonBonusComplete()) then
		local rewardTier = Game.GetEndlessDungeonsGenerated()
		if(rewardTier > 80) then
			gd.GDLeague.GrantTokenDeepShatteredRealm(rewardTier)
		end
		if(rewardTier == 65) then
			gd.GDLeague.GrantTokenShatteredRealm50Challenge()
		end
		if(rewardTier >= 76) then
			gd.GDLeague.GrantTokenShatteredRealm76()
		end
		if(rewardTier >= 61) then
			gd.GDLeague.GrantTokenShatteredRealm61()
		end
		if(rewardTier >= 46) then
			gd.GDLeague.GrantTokenShatteredRealm46()
		end
		if(rewardTier >= 31) then
			gd.GDLeague.GrantTokenShatteredRealm31()
		end
		if(rewardTier >= 16) then
			gd.GDLeague.GrantTokenShatteredRealm16()
		end
	end
end
-- grant toke for SR level 80+
function gd.GDLeague.GrantTokenDeepShatteredRealm(rewardTier)
	-- local drb_path = "records/items/grimleagues03/questitems/SREndless/token_SR"
	-- if(rewardTier > 99) then
	-- 	drb_path = drb_path..rewardTier..".dbr"
	-- else
	-- 	drb_path = drb_path.."0"..rewardTier..".dbr"
	-- end
	-- local gl_token = "GDL_SR_"..rewardTier
	-- gd.GDLeague.TokenTable[gl_token] = {
	-- 	token = gl_token,
	-- 	item = drb_path,
	-- 	notification = "tagGDLeagueSRTokenEarned",
	-- 	reward_notification = "",
	-- 	points = 1
	-- }
	-- gd.GDLeague.GrantGDLTokenItem(gl_token)
end

function gd.GDLeague.GrantPointsDeepShatteredRealm()
	-- local dbr_path = "records/items/grimleagues03/questitems/SREndless/token_SR"
	-- local player = Game.GetLocalPlayer()
	-- for sr_tier=130, 81, -1 do
	-- 	local token_dbr = ""
	-- 	if(sr_tier > 99) then
	-- 		token_dbr = dbr_path..sr_tier..".dbr"
	-- 	else
	-- 		token_dbr = dbr_path.."0"..sr_tier..".dbr"
	-- 	end
	-- 	if( player:HasItem(token_dbr, 1, false) and not player:HasToken("GDL_SR_"..sr_tier)) then
	-- 		GiveTokenToLocalPlayer("GDL_SR_"..sr_tier)
	-- 		for token_sr_tier = sr_tier, 81, -1 do
	-- 			if( not player:HasToken("GDL_SR_"..token_sr_tier) ) then
	-- 				player:GiveItem(LeaguePointsItem, 1, false)
	-- 			else
	-- 				break
	-- 			end
	-- 		end
	-- 		UI.Notify("tagGDLeagueSR"..sr_tier)
	-- 		break
	-- 	end
	-- end
end

-- grants token for completing SR50 Ult Challenge
function gd.GDLeague.GrantTokenShatteredRealm50Challenge()
	gd.GDLeague.GrantGDLTokenItem(quest_shatterred_realms_65_challenge,  gd.GDLeague.SR65LeagueCondition)
end

-- grants token for completing SR76
function gd.GDLeague.GrantTokenShatteredRealm76()
	gd.GDLeague.GrantGDLTokenItem(quest_shatterred_realms_76)
end

-- grants token for completing SR61
function gd.GDLeague.GrantTokenShatteredRealm61()
	gd.GDLeague.GrantGDLTokenItem(quest_shatterred_realms_61)
end

-- grants token for completing SR46
function gd.GDLeague.GrantTokenShatteredRealm46()
	gd.GDLeague.GrantGDLTokenItem(quest_shatterred_realms_46)
end

-- grants token for completing SR31
function gd.GDLeague.GrantTokenShatteredRealm31()
	gd.GDLeague.GrantGDLTokenItem(quest_shatterred_realms_31)
end

-- grants token for completing SR16
function gd.GDLeague.GrantTokenShatteredRealm16()
	gd.GDLeague.GrantGDLTokenItem(quest_shatterred_realms_16)
end

function gd.GDLeague.EnterShatteredRealm()
	local player = Game.GetLocalPlayer()
	level_to_enter_sr = player:GetLevel()
end


-- World Bosses
local quest_boss_protoss = "Boss_Protoss"
local quest_boss_aldric = "Boss_Aldric"
local quest_boss_aldric2 = "Boss_Aldric2"
local quest_boss_loxmere = "Boss_Loxmere"
local quest_boss_kraval = "Boss_Kraval"
local quest_boss_rashalga = "Boss_Rashalga"

-- grants the token to the player when Protoss is killed
function gd.GDLeague.GrantTokenProtossKill()
	gd.GDLeague.GrantGDLTokenItem(quest_boss_protoss, gd.GDLeague.UltimateBossRequirement)
end

-- grants the token to the player when Alric is killed
function gd.GDLeague.GrantTokenAldricKill()
	gd.GDLeague.GrantGDLTokenItem(quest_boss_aldric, gd.GDLeague.UltimateBossRequirement)
end

-- grants the token to the player when Alric #2 is killed
function gd.GDLeague.GrantTokenAldricKill2()
	gd.GDLeague.GrantGDLTokenItem(quest_boss_aldric2, gd.GDLeague.UltimateBossRequirement)
end

-- grants the token to the player when Loxemere is killed
function gd.GDLeague.GrantTokenLoxmereKill()
	gd.GDLeague.GrantGDLTokenItem(quest_boss_loxmere, gd.GDLeague.UltimateBossRequirement)
end

-- grants the token to the player when Kra'val is killed
function gd.GDLeague.GrantTokenKravalKill()
	gd.quests.areaEQuestUgdenbog.krakenKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_boss_kraval, gd.GDLeague.UltimateBossRequirement)
end

-- grants the token to the player when Rashsalga is killed
function gd.GDLeague.GrantTokenRashalgaKill()
	gd.quests.devilsCrossingWitchGodShrines.secretBossKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_boss_rashalga, gd.GDLeague.UltimateBossRequirement)
end

local quest_super_boss_Lokarr = "Super_Boss_Lokarr"
local quest_super_boss_Bourbon = "Super_Boss_Bourbon"
local quest_super_boss_Mogdrogen = "Super_Boss_Mogdrogen"
local quest_super_boss_Ravager = "Super_Boss_Ravager"
local quest_super_boss_Callagadra = "Super_Boss_Callagadra"
local quest_super_boss_Crate = "Super_Boss_Crate"

-- grants the token to the player when Lokarr is killed
function gd.GDLeague.GrantTokenLokarrKill()
	gd.quests.areaFNPCSpecial.bossKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_super_boss_Lokarr)
end

-- grants the token to the player when John Bourbon is killed
function gd.GDLeague.GrantTokenBourbonKill()
	gd.quests.areaDNPCClone.bossKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_super_boss_Bourbon)
end

-- grants the token to the player when Mogdrogen is killed
function gd.GDLeague.GrantTokenMogdrogenKill()
	gd.quests.roverLegacy.avatarKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_super_boss_Mogdrogen)
end

-- grants the token to the player when any Ravager is killed
function gd.GDLeague.GrantTokenRavagerKill()	
	gd.quests.areaEQuestWendigoVillage.ravagerKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_super_boss_Ravager)
end

-- grants the token to the player when Calagadra is killed
function gd.GDLeague.GrantTokenCallagadraKill()
	gd.GDLeague.GrantGDLTokenItem(quest_super_boss_Callagadra)
end

-- grants the token to the player when Crate of Enterntainment is killed
function gd.GDLeague.GrantTokenCrateKill()
	gd.quests.areaGNPCSpecial.bossKilled()
	gd.GDLeague.GrantGDLTokenItem(quest_super_boss_Crate)
end

local quest_boss_elite_challenge_Theodin = "Boss_Elite_Challenge_Theodin"
local quest_boss_elite_challenge_Korvaak = "Boss_Elite_Challenge_Korvaak"

-- grants the token to the player when Theodin Marcell is killed
function gd.GDLeague.GrantTokenTheodinKill()
	gd.quests.areaFFleshshaper.bossPhase03Killed()
	gd.GDLeague.GrantGDLTokenItem(quest_boss_elite_challenge_Theodin, gd.GDLeague.EliteLeagueRequirement)
end

-- grants the token to the player when Korvaak is killed
function gd.GDLeague.GrantTokenKorvaakKill(id)
	gd.quests.areaGKorvaak.bossPhase03Finished(id)
	gd.GDLeague.GrantGDLTokenItem(quest_boss_elite_challenge_Korvaak, gd.GDLeague.EliteLeagueRequirement )
end
