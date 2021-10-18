gd.GDLeague.Nemesis = {}

-- Grim Dawn Nemesis Bosses
local aetherialNemesisDBRs = { "records/creatures/enemies/nemesis/nemesis_aetherial_01.dbr", "records/creatures/enemies/nemesis/nemesis_aetherial_01.dbr", "records/creatures/enemies/nemesis/nemesis_aetherial_01.dbr" }
local chthonianNemesisDBRs = { "records/creatures/enemies/nemesis/nemesis_chthonian_02.dbr", "records/creatures/enemies/nemesis/nemesis_chthonian_02.dbr", "records/creatures/enemies/nemesis/nemesis_chthonian_02.dbr" }
local kymonChosenNemesisDBRs = { "records/creatures/enemies/nemesis/nemesis_kymon_02.dbr", "records/creatures/enemies/nemesis/nemesis_kymon_02.dbr" }
local orderDeathVigilNemesisDBRs = { "records/creatures/enemies/nemesis/nemesis_orderdeathsvigil_01.dbr", "records/creatures/enemies/nemesis/nemesis_orderdeathsvigil_01.dbr" }
local outlawNemesisDBRs = { "records/creatures/enemies/nemesis/nemesis_outlaw_01.dbr", "records/creatures/enemies/nemesis/nemesis_outlaw_01.dbr", "records/creatures/enemies/nemesis/nemesis_outlaw_01.dbr" }
local undeadNemesisDBRs = { "records/creatures/enemies/nemesis/nemesis_undead_02a.dbr", "records/creatures/enemies/nemesis/nemesis_undead_02a.dbr", "records/creatures/enemies/nemesis/nemesis_undead_02a.dbr" }
local aetherialSpawned = false
local chthonianSpawned = false
local kymonChosenSpawned = false
local orderDeathVigilSpawned = false
local outlawSpawned = false
local undeadSpawned = false
local monsterId = 0

local aetherialKilled = false
local chthonianKilled = false
local kymonChosenKilled = false
local orderDeathVigilKilled = false
local outlawKilled = false
local undeadKilled = false

local aetherialChestDestroyed = false
local chthonianChestDestroyed = false
local kymonChosenChestDestroyed = false
local orderDeathVigilChestDestroyed = false
local outlawChestDestroyed = false
local undeadChestDestroyed = false

local function CharacterCreateArgs()

	local averageLevel = Game.GetAveragePlayerLevel()
	local monsterLevel = 0
	local minLevel = 0
	local maxLevel = 0

	if (Game.GetGameDifficulty() == Game.Difficulty.Normal) then
		minLevel = 30
		maxLevel = 70
	elseif (Game.GetGameDifficulty() == Game.Difficulty.Epic) then
		minLevel = 55
		maxLevel = 90
	else
		minLevel = 114
		maxLevel = 200
	end
  
	if (averageLevel < minLevel) then
		monsterLevel = ((minLevel+(minLevel/50))+4)
	elseif (averageLevel > maxLevel) then
		monsterLevel = ((maxLevel+(maxLevel/50))+4)
	else
		monsterLevel = ((averageLevel+(averageLevel/50))+4)

	end

	return monsterLevel, nil
   
end

function gd.GDLeague.Nemesis.aetherialNemesisOnAddToWorld(objectId)

	if Server then
		local player = Game.GetLocalPlayer()
		if (Game.GetAveragePlayerLevel() >= 30 and aetherialSpawned == false and aetherialChestDestroyed == false) then
			aetherialSpawned = true
			monsterId = objectId
			local totalNemesis = table.getn(aetherialNemesisDBRs)
			local coords = Entity.Get(objectId):GetCoords()
			
			math.randomseed(Time.Now())
			local randomizer = random(1,totalNemesis)
			
			local spawn = Character.Create (aetherialNemesisDBRs[randomizer], CharacterCreateArgs())
			spawn:SetCoords(coords)
		
		end
	
	end
	
end

function gd.GDLeague.Nemesis.chthonianNemesisOnAddToWorld(objectId)

	if Server then
		local player = Game.GetLocalPlayer()
		if (Game.GetAveragePlayerLevel() >= 30 and chthonianSpawned == false and chthonianChestDestroyed == false) then
			chthonianSpawned = true
			monsterId = objectId
			local totalNemesis = table.getn(chthonianNemesisDBRs)
			local coords = Entity.Get(objectId):GetCoords()
			
			math.randomseed(Time.Now())
			local randomizer = random(1,totalNemesis)
			
			local spawn = Character.Create (chthonianNemesisDBRs[randomizer], CharacterCreateArgs())
			spawn:SetCoords(coords)
		
		end
	
	end
	
end

function gd.GDLeague.Nemesis.kymonNemesisOnAddToWorld(objectId)

	if Server then
		local player = Game.GetLocalPlayer()
		if (Game.GetAveragePlayerLevel() >= 30 and player:GetFaction("USER8") < 0 and kymonChosenSpawned == false and kymonChosenChestDestroyed == false) then
			kymonChosenSpawned = true
			monsterId = objectId
			local totalNemesis = table.getn(kymonChosenNemesisDBRs)
			local coords = Entity.Get(objectId):GetCoords()
			
			math.randomseed(Time.Now())
			local randomizer = random(1,totalNemesis)
			
			local spawn = Character.Create (kymonChosenNemesisDBRs[randomizer], CharacterCreateArgs())
			spawn:SetCoords(coords)
		
		end
	
	end
	
end

function gd.GDLeague.Nemesis.orderDeathVigilNemesisOnAddToWorld(objectId)

	if Server then
		local player = Game.GetLocalPlayer()
		if (Game.GetAveragePlayerLevel() >= 30 and player:GetFaction("USER5") < 0 and orderDeathVigilSpawned == false and orderDeathVigilChestDestroyed == false) then
			orderDeathVigilSpawned = true
			monsterId = objectId
			local totalNemesis = table.getn(orderDeathVigilNemesisDBRs)
			local coords = Entity.Get(objectId):GetCoords()
			
			math.randomseed(Time.Now())
			local randomizer = random(1,totalNemesis)
			
			local spawn = Character.Create (orderDeathVigilNemesisDBRs[randomizer], CharacterCreateArgs())
			spawn:SetCoords(coords)
		
		end
	
	end
	
end

function gd.GDLeague.Nemesis.outlawNemesisOnAddToWorld(objectId)
	if Server then
		local player = Game.GetLocalPlayer()
		if (Game.GetAveragePlayerLevel() >= 30 and outlawSpawned == false and outlawChestDestroyed == false) then
			outlawSpawned = true
			monsterId = objectId
			local totalNemesis = table.getn(outlawNemesisDBRs)
			local coords = Entity.Get(objectId):GetCoords()
			
			math.randomseed(Time.Now())
			local randomizer = random(1,totalNemesis)
			
			local spawn = Character.Create (outlawNemesisDBRs[randomizer], CharacterCreateArgs())
			spawn:SetCoords(coords)
		
		end
	
	end
end

function gd.GDLeague.Nemesis.undeadNemesisOnAddToWorld(objectId)

	if Server then
		local player = Game.GetLocalPlayer()
		if (Game.GetAveragePlayerLevel() >= 30 and undeadSpawned == false and undeadChestDestroyed == false) then
			undeadSpawned = true
			monsterId = objectId
			local totalNemesis = table.getn(undeadNemesisDBRs)
			local coords = Entity.Get(objectId):GetCoords()
			
			math.randomseed(Time.Now())
			local randomizer = random(1,totalNemesis)
			
			local spawn = Character.Create (undeadNemesisDBRs[randomizer], CharacterCreateArgs())
			spawn:SetCoords(coords)
		
		end
	
	end
	
end



-- Chests
local aetherialChestId = 0
local chthonianChestId = 0
local kymonChosenChestId = 0
local orderDeathVigilChestId = 0
local outlawChestId = 0
local undeadChestId = 0

function gd.GDLeague.Nemesis.aetherialChestOnAddToWorld(objectId)
	
	if Server then	
		aetherialChestId = objectId
		local chestEntity = Entity.Get(objectId)
		local player = Game.GetLocalPlayer()
	
		-- Destroy chest if this is the initial load and the player does not meet the faction requirements to spawn the Nemesis
		if (player ~= nil) and (chestEntity:IsReloaded() == false) and (Game.GetAveragePlayerLevel() < 30) then
			chestEntity:Destroy()
			aetherialChestDestroyed = true
		elseif aetherialKilled then
			local chest = Chest.Get(objectId)
			chest:SetLocked(false)
		
		end
	
	end
	
end

function gd.GDLeague.Nemesis.chthonianChestOnAddToWorld(objectId)
	
	if Server then	
		chthonianChestId = objectId
		local chestEntity = Entity.Get(objectId)
		local player = Game.GetLocalPlayer()
	
		-- Destroy chest if this is the initial load and the player does not meet the faction requirements to spawn the Nemesis
		if (player ~= nil) and (chestEntity:IsReloaded() == false) and (Game.GetAveragePlayerLevel() < 30) then
			chestEntity:Destroy()
			chthonianChestDestroyed = true
		elseif chthonianKilled then
			local chest = Chest.Get(objectId)
			chest:SetLocked(false)
		
		end
	
	end
	
end

function gd.GDLeague.Nemesis.kymonChosenChestOnAddToWorld(objectId)
	
	if Server then	
		kymonChosenChestId = objectId
		local chestEntity = Entity.Get(objectId)
		local player = Game.GetLocalPlayer()
	
		-- Destroy chest if this is the initial load and the player does not meet the faction requirements to spawn the Nemesis
		if (player ~= nil) and (chestEntity:IsReloaded() == false) and (Game.GetAveragePlayerLevel() < 30) then
			chestEntity:Destroy()
			kymonChosenChestDestroyed = true
		elseif kymonChosenKilled then
			local chest = Chest.Get(objectId)
			chest:SetLocked(false)
		
		end
	
	end
	
end

function gd.GDLeague.Nemesis.orderDeathVigilChestOnAddToWorld(objectId)
	
	if Server then	
		orderDeathVigilChestId = objectId
		local chestEntity = Entity.Get(objectId)
		local player = Game.GetLocalPlayer()
	
		-- Destroy chest if this is the initial load and the player does not meet the faction requirements to spawn the Nemesis
		if (player ~= nil) and (chestEntity:IsReloaded() == false) and (Game.GetAveragePlayerLevel() < 30) then
			chestEntity:Destroy()
			orderDeathVigilChestDestroyed = true
		elseif orderDeathVigilKilled then
			local chest = Chest.Get(objectId)
			chest:SetLocked(false)
		
		end
	
	end
	
end

function gd.GDLeague.Nemesis.outlawChestOnAddToWorld(objectId)
	if Server then	
		outlawChestId = objectId
		local chestEntity = Entity.Get(objectId)
		local player = Game.GetLocalPlayer()
	
		-- Destroy chest if this is the initial load and the player does not meet the faction requirements to spawn the Nemesis
		if (player ~= nil) and (chestEntity:IsReloaded() == false) and (Game.GetAveragePlayerLevel() < 30) then
			chestEntity:Destroy()
			outlawChestDestroyed = true
		elseif outlawKilled then
			local chest = Chest.Get(objectId)
			chest:SetLocked(false)
		end
	
	end
end

function gd.GDLeague.Nemesis.undeadChestOnAddToWorld(objectId)
	
	if Server then	
		undeadChestId = objectId
		local chestEntity = Entity.Get(objectId)
		local player = Game.GetLocalPlayer()
	
		-- Destroy chest if this is the initial load and the player does not meet the faction requirements to spawn the Nemesis
		if (player ~= nil) and (chestEntity:IsReloaded() == false) and (Game.GetAveragePlayerLevel() < 30) then
			chestEntity:Destroy()
			undeadChestDestroyed = true
		elseif undeadKilled then
			local chest = Chest.Get(objectId)
			chest:SetLocked(false)
		
		end
	
	end
	
end

function gd.GDLeague.Nemesis.aetherialNemesisKilled()
	
	if Server then
		local chest = Chest.Get(aetherialChestId);
		
		aetherialKilled = true
		
		-- Unlock chest if present
		if (chest ~= nil) then
			chest:SetLocked(false)
		end
		
	end
	
end

function gd.GDLeague.Nemesis.chthonianNemesisKilled()
	
	if Server then
		local chest = Chest.Get(chthonianChestId);
		
		chthonianKilled = true
		
		-- Unlock chest if present
		if (chest ~= nil) then
			chest:SetLocked(false)
		end
		
	end
	
end

function gd.GDLeague.Nemesis.kymonChosenNemesisKilled()
	
	if Server then
		local chest = Chest.Get(kymonChosenChestId);
		
		kymonChosenKilled = true
		
		-- Unlock chest if present
		if (chest ~= nil) then
			chest:SetLocked(false)
		end
		
	end
	
end

function gd.GDLeague.Nemesis.orderDeathVigilNemesisKilled()
	
	if Server then
		local chest = Chest.Get(orderDeathVigilChestId);
		
		orderDeathVigilKilled = true
		
		-- Unlock chest if present
		if (chest ~= nil) then
			chest:SetLocked(false)
		end
		
	end
	
end

function gd.GDLeague.Nemesis.outlawNemesisKilled()
	
	if Server then
		local chest = Chest.Get(outlawChestId);
		
		outlawKilled = true
		
		-- Unlock chest if present
		if (chest ~= nil) then
			chest:SetLocked(false)
		end
		
	end
	
end

function gd.GDLeague.Nemesis.undeadNemesisKilled()
	
	if Server then
		local chest = Chest.Get(undeadChestId);
		
		undeadKilled = true
		
		-- Unlock chest if present
		if (chest ~= nil) then
			chest:SetLocked(false)
		end
		
	end
	
end

-- Grim Dawn Nemesis Bosses
local aetherialVanguardSpawned = false
local chthonianVoidbornSpawned = false
local beastSpawned = false
local wendigoSpawned = false
local monsterId = 0

local aetherialVanguardKilled = false
local chthonianVoidbornKilled = false
local beastKilled = false
local wendigoKilled = false

local aetherialVanguardChestDestroyed = false
local chthonianVoidbornChestDestroyed = false
local beastChestDestroyed = false
local wendigoChestDestroyed = false

function gd.GDLeague.Nemesis.aetherialVanguardNemesisOnAddToWorld(objectId)

	if Server then
		local player = Game.GetLocalPlayer()
		if (Game.GetAveragePlayerLevel() >= 30 and aetherialVanguardSpawned == false and aetherialVanguardChestDestroyed == false) then
			aetherialVanguardSpawned = true
			monsterId = objectId
			local coords = Entity.Get(objectId):GetCoords()
			
			local spawn = Character.Create ("records/creatures/enemies/nemesis/nemesis_aetherialvanguard_01.dbr", CharacterCreateArgs())
			spawn:SetCoords(coords)
		
		end
	
	end
	
end

function gd.GDLeague.Nemesis.chthonianVoidbornNemesisOnAddToWorld(objectId)
-- only spawn new chthonian nemesis after player has traversed the void with Ulgrim, aka met the Rylok boss
	if Server then
		local player = Game.GetLocalPlayer()
		if (Game.GetAveragePlayerLevel() >= 30 and chthonianVoidbornSpawned == false and chthonianVoidbornChestDestroyed == false and player:HasToken("AREAF_DAILATRANSITION")) then
			chthonianVoidbornSpawned = true
			monsterId = objectId
			local coords = Entity.Get(objectId):GetCoords()
			
			local spawn = Character.Create ("records/creatures/enemies/nemesis/nemesis_chthonianvoidborn_01.dbr", CharacterCreateArgs())
			spawn:SetCoords(coords)
		
		end
	
	end
	
end

function gd.GDLeague.Nemesis.beastNemesisOnAddToWorld(objectId)

	if Server then
		local player = Game.GetLocalPlayer()
		if (Game.GetAveragePlayerLevel() >= 30 and beastSpawned == false and beastChestDestroyed == false) then
			beastSpawned = true
			monsterId = objectId
			local coords = Entity.Get(objectId):GetCoords()
			
			local spawn = Character.Create ("records/creatures/enemies/nemesis/nemesis_beast_01_p1.dbr", CharacterCreateArgs())
			spawn:SetCoords(coords)
		
		end
	
	end
	
end

function gd.GDLeague.Nemesis.wendigoNemesisOnAddToWorld(objectId)

	if Server then
		local player = Game.GetLocalPlayer()
		if (Game.GetAveragePlayerLevel() >= 30 and player:GetFaction("USER10") < 0 and wendigoSpawned == false and wendigoChestDestroyed == false) then
			wendigoSpawned = true
			monsterId = objectId
			local coords = Entity.Get(objectId):GetCoords()
			
			local spawn = Character.Create ("records/creatures/enemies/nemesis/nemesis_wendigo_01.dbr", CharacterCreateArgs())
			spawn:SetCoords(coords)
		
		end
	
	end
	
end


-- Chests
local aetherialVanguardChestId = 0
local chthonianVoidbornChestId = 0
local beastChestId = 0
local wendigoChestId = 0

function gd.GDLeague.Nemesis.aetherialVanguardChestOnAddToWorld(objectId)
	
	if Server then	
		aetherialVanguardChestId = objectId
		local chestEntity = Entity.Get(objectId)
		local player = Game.GetLocalPlayer()
	
		-- Destroy chest if this is the initial load and the player does not meet the faction requirements to spawn the Nemesis
		if (player ~= nil) and (chestEntity:IsReloaded() == false) and (Game.GetAveragePlayerLevel() < 30) then
			chestEntity:Destroy()
			aetherialVanguardChestDestroyed = true
		elseif aetherialVanguardKilled then
			local chest = Chest.Get(objectId)
			chest:SetLocked(false)
		
		end
	
	end
	
end

function gd.GDLeague.Nemesis.chthonianVoidbornChestOnAddToWorld(objectId)
-- only spawn new chthonian nemesis after player has traversed the void with Ulgrim, aka met the Rylok boss
	if Server then	
		chthonianVoidbornChestId = objectId
		local chestEntity = Entity.Get(objectId)
		local player = Game.GetLocalPlayer()
	
		-- Destroy chest if this is the initial load and the player does not meet the faction requirements to spawn the Nemesis
		if ((player ~= nil) and (chestEntity:IsReloaded() == false) and Game.GetAveragePlayerLevel() < 30 or player:HasToken("AREAF_DAILATRANSITION") == false) then
			chestEntity:Destroy()
			chthonianVoidbornChestDestroyed = true
		elseif chthonianVoidbornKilled then
			local chest = Chest.Get(objectId)
			chest:SetLocked(false)
		
		end
	
	end
	
end

function gd.GDLeague.Nemesis.beastChestOnAddToWorld(objectId)
	
	if Server then	
		beastChestId = objectId
		local chestEntity = Entity.Get(objectId)
		local player = Game.GetLocalPlayer()
	
		-- Destroy chest if this is the initial load and the player does not meet the faction requirements to spawn the Nemesis
		if (player ~= nil) and (chestEntity:IsReloaded() == false) and (Game.GetAveragePlayerLevel() < 30) then
			chestEntity:Destroy()
			beastChestDestroyed = true
		elseif beastKilled then
			local chest = Chest.Get(objectId)
			chest:SetLocked(false)
		
		end
	
	end
	
end

function gd.GDLeague.Nemesis.wendigoChestOnAddToWorld(objectId)
	
	if Server then	
		wendigoChestId = objectId
		local chestEntity = Entity.Get(objectId)
		local player = Game.GetLocalPlayer()
	
		-- Destroy chest if this is the initial load and the player does not meet the faction requirements to spawn the Nemesis
		if (player ~= nil) and (chestEntity:IsReloaded() == false) and (Game.GetAveragePlayerLevel() < 30) then
			chestEntity:Destroy()
			wendigoChestDestroyed = true
		elseif wendigoKilled then
			local chest = Chest.Get(objectId)
			chest:SetLocked(false)
		
		end
	
	end
	
end


function gd.GDLeague.Nemesis.aetherialVanguardNemesisKilled()
	
	if Server then
		local chest = Chest.Get(aetherialVanguardChestId);
		
		aetherialVanguardKilled = true
		
		-- Unlock chest if present
		if (chest ~= nil) then
			chest:SetLocked(false)
		end
		
	end
	
end

function gd.GDLeague.Nemesis.chthonianVoidbornNemesisKilled()
	
	if Server then
		local chest = Chest.Get(chthonianVoidbornChestId);
		
		chthonianVoidbornKilled = true
		
		-- Unlock chest if present
		if (chest ~= nil) then
			chest:SetLocked(false)
		end
		
	end
	
end

function gd.GDLeague.Nemesis.wendigoNemesisKilled()
	
	if Server then
		local chest = Chest.Get(wendigoChestId);
		
		wendigoKilled = true
		
		-- Unlock chest if present
		if (chest ~= nil) then
			chest:SetLocked(false)
		end
		
	end
	
end

-- Beast Nemesis
local beastP03Dead = { false, false, false, false }

local function beastNemesisFinished()
	if Server then
		local chest = Chest.Get(beastChestId);
		
		beastKilled = true
		
		-- Unlock chest if present
		if (chest ~= nil) then
			chest:SetLocked(false)
		end
		
	end

	end

function gd.GDLeague.Nemesis.beastNemesisP03AKilled()
	
	if Server then
		beastP03Dead[1] = true
		
		if beastP03Dead[1] and beastP03Dead[2] and beastP03Dead[3] and beastP03Dead[4] then
			-- if all 4 Beast Nemesis phase 3 copies have been killed, open the chest
			beastNemesisFinished()
		
		end
		
	end
	
end

function gd.GDLeague.Nemesis.beastNemesisP03BKilled()
	
	if Server then
		beastP03Dead[2] = true
		
		if beastP03Dead[1] and beastP03Dead[2] and beastP03Dead[3] and beastP03Dead[4] then
			-- if all 4 Beast Nemesis phase 3 copies have been killed, open the chest
			beastNemesisFinished()
		
		end
		
	end
	
end

function gd.GDLeague.Nemesis.beastNemesisP03CKilled()
	
	if Server then
		beastP03Dead[3] = true
		
		if beastP03Dead[1] and beastP03Dead[2] and beastP03Dead[3] and beastP03Dead[4] then
			-- if all 4 Beast Nemesis phase 3 copies have been killed, open the chest
			beastNemesisFinished()
		
		end
		
	end
	
end

function gd.GDLeague.Nemesis.beastNemesisP03DKilled()
	
	if Server then
		beastP03Dead[4] = true
		
		if beastP03Dead[1] and beastP03Dead[2] and beastP03Dead[3] and beastP03Dead[4] then
			-- if all 4 Beast Nemesis phase 3 copies have been killed, open the chest
			beastNemesisFinished()
		
		end
		
	end
	
end

-- Grim Dawn Nemesis Bosses
 local eldritchSpawned = false
 local monsterId = 0

 local eldritchKilled = false

 local eldritchChestDestroyed = false

 function gd.GDLeague.Nemesis.eldritchNemesisOnAddToWorld(objectId)

	 if Server then
		 local player = Game.GetLocalPlayer()
		 if (Game.GetAveragePlayerLevel() >= 30 and eldritchSpawned == false and eldritchChestDestroyed == false) then
			 eldritchSpawned = true
			 monsterId = objectId
			 local coords = Entity.Get(objectId):GetCoords()
			
			 local spawn = Character.Create ("records/creatures/enemies/nemesis/nemesis_eldritch_01.dbr", CharacterCreateArgs())
			 spawn:SetCoords(coords)
		
		 end
	
	 end
	
 end

 -- Chests
 local eldritchChestId = 0

 function gd.GDLeague.Nemesis.eldritchChestOnAddToWorld(objectId)
	
	 if Server then	
		 eldritchChestId = objectId
		 local chestEntity = Entity.Get(objectId)
		 local player = Game.GetLocalPlayer()
	
		 -- Destroy chest if this is the initial load and the player does not meet the faction requirements to spawn the Nemesis
		 if (player ~= nil) and (chestEntity:IsReloaded() == false) and (Game.GetAveragePlayerLevel() < 30) then
			 chestEntity:Destroy()
			 eldritchChestDestroyed = true
		 elseif eldritchKilled then
			 local chest = Chest.Get(objectId)
			 chest:SetLocked(false)
		
		 end
	
	 end
	
 end

 function gd.GDLeague.Nemesis.eldritchNemesisKilled()
	
	 if Server then
		 local chest = Chest.Get(eldritchChestId);
		
		 eldritchKilled = true
		
		 -- Unlock chest if present
		 if (chest ~= nil) then
			 chest:SetLocked(false)
		 end
		
	 end
	
 end