/*
	
	GRIM DAWN SURVIVAL MODE
	
	For more information visit us at http://www.grimdawn.com
	
*/


gd.endlessDungeon.mutatorControl = {}

-- Define Mutator Pack List
-- Mutator Packs intended for players MUST have "player" in the dbr name. Otherwise it will get applied to the monsters.
local mutatorList = {"records/game/mutators/mutatorpak_monster_01.dbr",
"records/game/mutators/mutatorpak_monster_02.dbr",
"records/game/mutators/mutatorpak_monster_03.dbr",
"records/game/mutators/mutatorpak_monster_04.dbr",
"records/game/mutators/mutatorpak_monster_05.dbr",
"records/game/mutators/mutatorpak_monster_06.dbr",
"records/game/mutators/mutatorpak_monster_07.dbr",
"records/game/mutators/mutatorpak_monster_08.dbr",
"records/game/mutators/mutatorpak_monster_09.dbr",
"records/game/mutators/mutatorpak_monster_10.dbr",
"records/game/mutators/mutatorpak_monster_11.dbr",
"records/game/mutators/mutatorpak_monster_12.dbr",
"records/game/mutators/mutatorpak_monster_13.dbr",
"records/game/mutators/mutatorpak_monster_14.dbr",
"records/game/mutators/mutatorpak_monster_15.dbr",
"records/game/mutators/mutatorpak_monster_16.dbr",
"records/game/mutators/mutatorpak_monster_17.dbr",
"records/game/mutators/mutatorpak_player_01.dbr",
"records/game/mutators/mutatorpak_player_02.dbr",
"records/game/mutators/mutatorpak_player_03.dbr",
"records/game/mutators/mutatorpak_player_04.dbr",
"records/game/mutators/mutatorpak_player_05.dbr",
"records/game/mutators/mutatorpak_player_06.dbr",
"records/game/mutators/mutatorpak_player_07.dbr",
"records/game/mutators/mutatorpak_player_08.dbr",
"records/game/mutators/mutatorpak_player_09.dbr",
"records/game/mutators/mutatorpak_player_10.dbr"}

local totalMutators = 0
local currentMutators = 0
local assignedMutators = { }

-- Select Mutator(s)
local function EndlessDungeon_MutatorRandomizer()

	local maxMutators = table.getn(mutatorList)
	local selectedList = {}
	
	print "selecting mutators"
	-- randomly select mutators until a unique list of length totalMutators is created
	if totalMutators <= maxMutators then
		math.randomseed(Time.Now())
		
		while table.getn(assignedMutators) ~= totalMutators do
			local rand = random(1,maxMutators)
			local found = false
			
			if rand <= maxMutators then
				for id = 1, table.getn(selectedList) do
					if mutatorList[rand] == selectedList[id] then
						found = true
					
					end
				
				end
				
				for id = 1, table.getn(assignedMutators) do
					if mutatorList[rand] == assignedMutators[id] then
						found = true
					
					end
				
				end
				
				if not found then
					table.insert(selectedList, mutatorList[rand])
					table.insert(assignedMutators, mutatorList[rand])
				
				end
			
			end
		
		end
		
		-- update current Mutators count
		currentMutators = table.getn(assignedMutators)
		
		-- apply selected Mutators
		local totalMutatorsSelected = table.getn(selectedList)
		
		for id = 1, totalMutatorsSelected do
			--Game.AddMutator(selectedList[id])
		
		end		
	
	end

end

function gd.endlessDungeon.mutatorControl.addMutators(dungeonTier)
	
	if dungeonTier <= 2 then
		totalMutators = 1
	elseif dungeonTier <= 5 then
		totalMutators = 2
	elseif dungeonTier <= 10 then
		totalMutators = 3
	elseif dungeonTier <= 20 then
		totalMutators = 4
	elseif dungeonTier <= 40 then
		totalMutators = 5
	elseif dungeonTier <= 60 then
		totalMutators = 6
	elseif dungeonTier <= 80 then
		totalMutators = 7
	else
		totalMutators = 8
	end
	
	
	if totalMutators > 0 and currentMutators < totalMutators then
		EndlessDungeon_MutatorRandomizer()
		
	end

end

function gd.endlessDungeon.mutatorControl.resetMutatorVariables()

	totalMutators = 0
	currentMutators = 0
	assignedMutators = { }

end


