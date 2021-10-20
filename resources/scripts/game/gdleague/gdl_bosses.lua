gd.GDLeague.Bosses = {}

function gd.GDLeague.Bosses.MonsterLevel()
	return 112, nil
end

function gd.GDLeague.Bosses.SpawnMonster(id, record)
	local coords = Entity.Get(id):GetCoords()
	local spawn = Character.Create(record, gd.GDLeague.Bosses.MonsterLevel(), nil)
	spawn:SetCoords(coords)
end

function gd.GDLeague.Bosses.MoveMonster(to_move_id, location_id)
	Entity.Get(to_move_id):SetCoords(Entity.Get(location_id):GetCoords())
end

function gd.GDLeague.Bosses.ProxyRun(id)
	local proxy = Proxy.Get(id)
	proxy:Run()
end

-- ARANEA THE WEAVER OF AGONY

local spider_script_spawns = {0,0,0,0,0,0,0,0}
spider_script_spawns[0] = 0
local spider_spawns_left = 9
--local spider_spawn_timers = {75, 60, 45, 30, 15}
local spider_spawn_timers = {30, 30, 30, 30, 30,30,30}
local spider_spawn_difficulty = 1
local has_player_entered = false
local spawn_time = 0;
local spider_eggs_destroyed = 0
local spider_eggs_notifications = {"tagGDLeagueSuperBoss4EggDestory01", "tagGDLeagueSuperBoss4EggDestory02", "tagGDLeagueSuperBoss4EggDestory03", "tagGDLeagueSuperBoss4EggDestory04", "tagGDLeagueSuperBoss4EggDestory05"}
local spider_bomber_dbr = "records/creatures/enemies/GrimLeague/aranea/spider_bomber.dbr"
local spider_list = {}

function gd.GDLeague.Bosses.SpiderEggDestroyed()
	spider_eggs_destroyed = spider_eggs_destroyed + 1
	UI.Notify(spider_eggs_notifications[spider_eggs_destroyed])
	if(spider_eggs_destroyed == 5) then
		-- local spider = Proxy.Create("records/proxies/GrimLeague/proxy_boss_aranea.dbr", Game.GetLocalPlayer().GetCoords().origin, true)
		-- spider.SetCoords(Game.GetLocalPlayer().GetCoords())
		local coords = Game.GetLocalPlayer():GetCoords()
		local proxy = Proxy.Create("records/proxies/GrimLeague/proxy_boss_aranea.dbr", coords.origin, true)
		proxy:SetCoords(coords)
	end
end

function gd.GDLeague.Bosses.IncreaseBattleDifficulty()
	if(spider_spawn_difficulty > 3) then
		return
	end
	if(spider_spawn_difficulty == 1 and spider_spawns_left == 9) then
		spider_spawn_difficulty = 3
		return
	elseif (spider_spawn_difficulty <= 3 and spider_spawns_left >= 5) then
		spider_spawn_difficulty = 5
		return
	else
		spider_spawn_difficulty = spider_spawn_difficulty + 1
	end
end

function gd.GDLeague.Bosses.StartSpiderBattle(id)
	has_player_entered = true
	spawn_time = Game.GetGameTime()
end

function gd.GDLeague.Bosses.FindCorrectSpiderToSpawn(index)
	if(spider_spawns_left == 0) then
		return nil
	end
	if(spider_script_spawns[index]) then
		return index
	end
	if( index < 6) then
		local step = 1
		for i=1,3,1 do
			index = (index + step) % 6
			if(spider_script_spawns[index]) then
				return index
			end
			index = (index - step) % 6
			if(spider_script_spawns[index]) then
				return index
			end
    		step = step + 1
		end
		for i=6,8,1 do
			if(spider_script_spawns[i]) then
				return i
			end
		end
	else
		for i=6,8,1 do
			if(spider_script_spawns[i]) then
				return i
			end
		end
		for i=0,4,2 do
			if(spider_script_spawns[i]) then
				return i
			end
		end
		for i=1,5,2 do
			if(spider_script_spawns[i]) then
				return i
			end
		end
	end
	return nil
end

function gd.GDLeague.Bosses.ForcePlayerAttack()
	local player_id = Game.GetLocalPlayer():GetId()
	for index, value in ipairs(spider_list) do
		Character.Get(index):Attack(player_id)
	end
end

function gd.GDLeague.Bosses.ControlSpiderSpawns(index)
	if(has_player_entered and spider_spawns_left > 0) then
		if( ( Game.GetGameTime() - spawn_time ) / 1000 >= spider_spawn_timers[spider_spawn_difficulty] ) then
			index = gd.GDLeague.Bosses.FindCorrectSpiderToSpawn(index)
			if(index == nil) then
				return
			end
			gd.GDLeague.Bosses.SpawnMonster(spider_script_spawns[index], spider_bomber_dbr)
			spider_script_spawns[index] = nil
			spider_spawns_left = spider_spawns_left - 1
			spawn_time = Game.GetGameTime()
		end
	end
	gd.GDLeague.Bosses.ForcePlayerAttack()
end

function gd.GDLeague.Bosses.SpiderBoxTrigger01(id)
	gd.GDLeague.Bosses.ControlSpiderSpawns(0)
end

function gd.GDLeague.Bosses.SpiderBoxTrigger02(id)
	gd.GDLeague.Bosses.ControlSpiderSpawns(1)
end

function gd.GDLeague.Bosses.SpiderBoxTrigger03(id)
	gd.GDLeague.Bosses.ControlSpiderSpawns(2)
end

function gd.GDLeague.Bosses.SpiderBoxTrigger04(id)
	gd.GDLeague.Bosses.ControlSpiderSpawns(3)
end

function gd.GDLeague.Bosses.SpiderBoxTrigger05(id)
	gd.GDLeague.Bosses.ControlSpiderSpawns(4)
end

function gd.GDLeague.Bosses.SpiderBoxTrigger06(id)
	gd.GDLeague.Bosses.ControlSpiderSpawns(5)
end

function gd.GDLeague.Bosses.SpiderBoxTrigger07(id)
	gd.GDLeague.Bosses.ControlSpiderSpawns(6)
end

function gd.GDLeague.Bosses.SpiderBoxTrigger08(id)
	gd.GDLeague.Bosses.ControlSpiderSpawns(7)
end

function gd.GDLeague.Bosses.SpiderBoxTrigger09(id)
	gd.GDLeague.Bosses.ControlSpiderSpawns(8)
end

-- record the ID of all script objects, needed to get coordinates later to spawn spiders.
-- Array indexing coresponds to placement in the arena
function gd.GDLeague.Bosses.AddScriptObjectToList(index, id)
	if(spider_script_spawns[index] ~= 0) then
		return
	end
	spider_script_spawns[index] = id
end

function gd.GDLeague.Bosses.onAddToWorldSpiderScript01(id)
	gd.GDLeague.Bosses.AddScriptObjectToList(0, id)
end

function gd.GDLeague.Bosses.onAddToWorldSpiderScript02(id)
	gd.GDLeague.Bosses.AddScriptObjectToList(1, id)
end

function gd.GDLeague.Bosses.onAddToWorldSpiderScript03(id)
	gd.GDLeague.Bosses.AddScriptObjectToList(2, id)
end

function gd.GDLeague.Bosses.onAddToWorldSpiderScript04(id)
	gd.GDLeague.Bosses.AddScriptObjectToList(3, id)
end

function gd.GDLeague.Bosses.onAddToWorldSpiderScript05(id)
	gd.GDLeague.Bosses.AddScriptObjectToList(4, id)
end

function gd.GDLeague.Bosses.onAddToWorldSpiderScript06(id)
	gd.GDLeague.Bosses.AddScriptObjectToList(5, id)
end

function gd.GDLeague.Bosses.onAddToWorldSpiderScript07(id)
	gd.GDLeague.Bosses.AddScriptObjectToList(6, id)
end

function gd.GDLeague.Bosses.onAddToWorldSpiderScript08(id)
	gd.GDLeague.Bosses.AddScriptObjectToList(7, id)
end

function gd.GDLeague.Bosses.onAddToWorldSpiderScript09(id)
	gd.GDLeague.Bosses.AddScriptObjectToList(8, id)
end

function gd.GDLeague.Bosses.onDieAranea(id)
	gd.map.moveDungeonPortal02()
	gd.GDLeague.GrantGDLTokenItem("Super_Boss_Mod_Aranea")
end

function gd.GDLeague.Bosses.onAddToWorldSpiderBomber(id)
	spider_list[id] = true;
end

-- GALAKROS THE DEVASTATING MOUNTAIN
local script_crystal_spawns_tier_01 = {}
local script_crystal_spawns_tier_02 = {}
local crystals = {script_crystal_spawns_tier_01, script_crystal_spawns_tier_02}
local crystals_counter = 1
local crystal_dbr = "records/creatures/enemies/GrimLeague/galakros/galakros_aethercrystal.dbr"

function gd.GDLeague.Bosses.onAddToWorldCrystalScript01(id)
	script_crystal_spawns_tier_01[id] = true
end

function gd.GDLeague.Bosses.onAddToWorldCrystalScript02(id)
	script_crystal_spawns_tier_02[id] = true
end

function gd.GDLeague.Bosses.SpawnGalakrosCrystals(id)
	if(crystals_counter > 2) then
		return
	end
	for i,v in pairs(crystals[crystals_counter]) do
		gd.GDLeague.Bosses.SpawnMonster(i, crystal_dbr)
	end
	crystals_counter = crystals_counter + 1
end

function gd.GDLeague.Bosses.onDieGalakros(id)
	gd.map.moveDungeonPortal04()
	gd.GDLeague.GrantGDLTokenItem("Super_Boss_Mod_Galakros")
end

-- ASCENDED SPELLBREAKER MOIRA

local blade_spirit_proxy_ids = {}
local blade_spirit_script_spawns_01 = {}
local blade_spirit_script_spawns_02 = {}
local obelisc_proxies = {}
local obelisc_ids = {}
local obelisc_shells = {}
local swap_location_id = nil
local attack_location_id = nil
local invunerable_monster_id = nil
local walk_to_center_monster_id = nil
local has_invunerable_stage_finished = false
local script_invunerable_stage_controller_id = nil
local invunerable_stage_records = {
	"records/creatures/enemies/GrimLeague/moira/super_boss_moira_invunerable_stage_01.dbr",
	"records/creatures/enemies/GrimLeague/moira/super_boss_moira_invunerable_stage_02.dbr",
	"records/creatures/enemies/GrimLeague/moira/super_boss_moira_invunerable_stage_03.dbr",
	"records/creatures/enemies/GrimLeague/moira/super_boss_moira_invunerable_stage_04.dbr"
}
local invunerable_stage_records_enumerator = 0
local invunerable_stage_function_list = {}
local invunerable_stage_function_list_index = 1
local invunerable_stage_start_time = 0
local invenrable_stage_attack_times = {35,35,35,35}
local echos_alive = 3

function gd.GDLeague.Bosses.onAddToWorldBladeSpiritPatrol(id)
	blade_spirit_proxy_ids[id] = true
end

function gd.GDLeague.Bosses.onAddToWorldBladeSpiritSpawns01(id)
	Proxy.Get(id):LinkPatrolPointGroup("-- Moira_spirits_patrol_points")
	table.insert(blade_spirit_script_spawns_01, id)
end

function gd.GDLeague.Bosses.onAddToWorldBladeSpiritSpawns02(id)
	Proxy.Get(id):LinkPatrolPointGroup("-- Moira_spirits_patrol_points")
	table.insert(blade_spirit_script_spawns_02, id)
end

function gd.GDLeague.Bosses.StageDefeated01(id)
	gd.GDLeague.Bosses.ProxyRun(blade_spirit_script_spawns_01[1])
	gd.GDLeague.Bosses.ProxyRun(blade_spirit_script_spawns_01[2])
	gd.GDLeague.Bosses.ProxyRun(blade_spirit_script_spawns_02[1])
	gd.GDLeague.Bosses.ProxyRun(blade_spirit_script_spawns_02[2])
	gd.GDLeague.Bosses.onDeathSetUpNextStage(id)
end

function gd.GDLeague.Bosses.StageDefeated02(id)
	gd.GDLeague.Bosses.SwitchBladeSpiritPatrolAura()
	gd.GDLeague.Bosses.onDeathSetUpNextStage(id)
end

function gd.GDLeague.Bosses.StageDefeated03(id)
	gd.GDLeague.Bosses.onDeathSetUpNextStage(id)
	gd.GDLeague.Bosses.ActivateObeliscBuff()
end

function gd.GDLeague.Bosses.StageDefeated04(id)
	gd.GDLeague.Bosses.onDeathSetUpNextStage(id)
end

function gd.GDLeague.Bosses.SwitchBladeSpiritPatrolAura()
	for i,v in pairs(blade_spirit_proxy_ids) do
		Character.Get(i):UseSkillAction("records/skills/GrimLeague/moira/blade_spirit_patrol_aura_arcane.dbr", i, false)
	end
end

function gd.GDLeague.Bosses.BladeSpiritSuicide(id)
	local char = Character.Get(id)
	char:SetCoords(Game.GetLocalPlayer():GetCoords())
	local spawn = Character.Create("records/creatures/enemies/GrimLeague/moira/aetherial_echos_spawner02.dbr", gd.GDLeague.Bosses.MonsterLevel(), nil)
	spawn:SetCoords(Game.GetLocalPlayer():GetCoords())
end

function gd.GDLeague.Bosses.PlaceAetherEchosProxy(id)
	local coords = Entity.Get(id):GetCoords()
	local proxy = Proxy.Create("records/proxies/GrimLeague/proxy_boss_moira_aether_echos.dbr", coords.origin, true)
	proxy:SetCoords(coords)
end

function gd.GDLeague.Bosses.onDeathSetUpNextStage(id)
	local proxy = Proxy.Create("records/proxies/GrimLeague/proxy_boss_moira_walk_stage.dbr", Entity.Get(id):GetCoords().origin, true)
	proxy:SetCoords(Entity.Get(id):GetCoords())
end

function gd.GDLeague.Bosses.onAddToWorldObelisc(id)
	if(obelisc_ids[id] == nil) then
		obelisc_ids[id] = true
		--local spawn = Entity.Create("records/level art/GrimLeague/sandtemple_obelisk_01a.dbr")
		--spawn:SetCoords(Entity.Get(id):GetCoords())
		--gd.GDLeague.Bosses.SpawnMonster(id, "records/creatures/enemies/GrimLeague/moira/turret_obelisc_shell.dbr")
	end
end

function gd.GDLeague.Bosses.ActivateObeliscBuff()
	for i,v in pairs(obelisc_ids) do
		Character.Get(i):UseSkillAction("records/skills/GrimLeague/moira/obelisc_arcane_effect.dbr", i, false)
	end
end

function gd.GDLeague.Bosses.onAddToWorldInvunerableStageProxy(id)
	Proxy.Get(id):LinkPatrolPointGroup("-- Moira_swap_points")
	Proxy.Get(id):Run()
end

function gd.GDLeague.Bosses.onAddToWorldPositionSwapper(id)
	swap_location_id = id
end

function gd.GDLeague.Bosses.onAddToWorldObjectToAttack(id)
	attack_location_id = id
end

function gd.GDLeague.Bosses.onAddToWorldWalkStage(id)
	walk_to_center_monster_id = id
end

function gd.GDLeague.Bosses.onDieWalkStage(id)
	walk_to_center_monster_id = nil
	invunerable_stage_records_enumerator = invunerable_stage_records_enumerator + 1
	gd.GDLeague.Bosses.SpawnMonster(id, invunerable_stage_records[invunerable_stage_records_enumerator])
end

function gd.GDLeague.Bosses.onAddToWorldInvunerableStage(id)
	invunerable_monster_id = id
	has_invunerable_stage_finished = false
end

function gd.GDLeague.Bosses.onDieInvunerableStage(id)
	invunerable_monster_id = nil
end

function gd.GDLeague.Bosses.onAddToWorldInvunerableScriptController(id)
	script_invunerable_stage_controller_id = id
end

function gd.GDLeague.Bosses.boxTriggerSwapToCenter(id)
	if(walk_to_center_monster_id == nil or swap_location_id == nil) then
		return
	end
	Character.Get(walk_to_center_monster_id):UseSkillAction("records/skills/GrimLeague/moira/teleportswap.dbr", swap_location_id, false)
end

function gd.GDLeague.Bosses.SwapWithCenter(id)
	Character.Get(id):UseSkillAction("records/skills/GrimLeague/moira/teleportswap.dbr", swap_location_id, false)
	invunerable_stage_function_list_index = invunerable_stage_function_list_index + 1
end

function gd.GDLeague.Bosses.ActivateSphere(id)
	Character.Get(id):UseSkillAction("records/skills/grimleague/moira/sphereofprotection_large.dbr", id, false)
	invunerable_stage_function_list_index = invunerable_stage_function_list_index + 1
	invunerable_stage_start_time = Game.GetGameTime()
end

function gd.GDLeague.Bosses.ActivateSphereArcane(id)
	Character.Get(id):UseSkillAction("records/skills/GrimLeague/moira/sphereofprotection_large_arcane.dbr", id, false)
	invunerable_stage_function_list_index = invunerable_stage_function_list_index + 1
	invunerable_stage_start_time = Game.GetGameTime()
end

function gd.GDLeague.Bosses.InitiateAttack(id)
	Character.Get(id):Attack(attack_location_id)
	invunerable_stage_function_list_index = invunerable_stage_function_list_index + 1
end

function gd.GDLeague.Bosses.SurvivalStage(id)
	if((Game.GetGameTime() - invunerable_stage_start_time) / 1000 >= invenrable_stage_attack_times[1]) then
		invunerable_stage_start_time = 0
		invunerable_stage_function_list_index = invunerable_stage_function_list_index + 1
		return
	end
end

function gd.GDLeague.Bosses.SurvivalStageEchos(id)
	if(echos_alive == 0) then
		invunerable_stage_start_time = 0
		invunerable_stage_function_list_index = invunerable_stage_function_list_index + 1
		return
	end
end

function gd.GDLeague.Bosses.KillInvunerableStage(id)
	Character.Get(id):Kill()
	invunerable_stage_function_list_index = invunerable_stage_function_list_index + 1
end

function gd.GDLeague.Bosses.OnDeathAetherEcho(id)
	echos_alive = echos_alive - 1
end

function gd.GDLeague.Bosses.boxTriggerAttackCenter(id)
	if(walk_to_center_monster_id == nil or attack_location_id == nil) then
		return
	end
	Character.Get(walk_to_center_monster_id):Kill()
	if(invunerable_stage_records_enumerator > 2) then
		invunerable_stage_function_list[1] = gd.GDLeague.Bosses.ActivateSphereArcane
		invunerable_stage_function_list[2] = gd.GDLeague.Bosses.InitiateAttack
		if(invunerable_stage_records_enumerator == 4) then
			invunerable_stage_function_list[3] = gd.GDLeague.Bosses.SurvivalStageEchos
		else
			invunerable_stage_function_list[3] = gd.GDLeague.Bosses.SurvivalStage
		end
		invunerable_stage_function_list[4] = gd.GDLeague.Bosses.ActivateSphereArcane
	else
		invunerable_stage_function_list[1] = gd.GDLeague.Bosses.ActivateSphere
		invunerable_stage_function_list[2] = gd.GDLeague.Bosses.InitiateAttack
		invunerable_stage_function_list[3] = gd.GDLeague.Bosses.SurvivalStage
		invunerable_stage_function_list[4] = gd.GDLeague.Bosses.ActivateSphere
	end
	invunerable_stage_function_list[5] = gd.GDLeague.Bosses.SwapWithCenter
	invunerable_stage_function_list[6] = gd.GDLeague.Bosses.KillInvunerableStage
	Script.RegisterForUpdate(script_invunerable_stage_controller_id, "gd.GDLeague.Bosses.InvunerableStageController", 2000)
end


function gd.GDLeague.Bosses.InvunerableStageController(id)
	if(invunerable_stage_function_list[invunerable_stage_function_list_index] == nil) then
		Script.UnregisterForUpdate(script_invunerable_stage_controller_id, "gd.GDLeague.Bosses.InvunerableStageController")
		invunerable_stage_function_list_index = 1
		return
	end
	invunerable_stage_function_list[invunerable_stage_function_list_index](invunerable_monster_id)
end

function gd.GDLeague.Bosses.onDieMoira(id)
	invunerable_monster_id = nil
	gd.map.moveDungeonPortal01()
	gd.GDLeague.GrantGDLTokenItem("Super_Boss_Mod_Moira")
end

-- GARIA THE GATE TAKER

function gd.GDLeague.Bosses.onDieGaria()
	gd.map.moveDungeonPortal05()
	gd.GDLeague.GrantGDLTokenItem("Super_Boss_Mod_Garia")
end
