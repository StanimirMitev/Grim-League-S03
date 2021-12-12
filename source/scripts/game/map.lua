gd.map = {}

local dungeon_completed_01 = false
local dungeon_completed_02 = false
local dungeon_completed_03 = false
local dungeon_completed_04 = false
local dungeon_completed_05 = false
local dungeon_completed_06 = false
local portal_area_door_01_id = nil
local portal_area_door_02_id = nil
local portal_area_door_03_id = nil
local portal_area_door_04_id = nil
local portal_area_door_05_id = nil
local portal_area_door_06_id = nil
local is_boss_area_01_entered = false
local is_boss_area_02_entered = false
local is_boss_area_03_entered = false
local is_boss_area_04_entered = false
local is_boss_area_05_entered = false
local is_boss_area_06_entered = false
local is_boss_01_price_paid = false
local is_boss_02_price_paid = false
local is_boss_03_price_paid = false
local is_boss_04_price_paid = false
local is_boss_05_price_paid = false
local is_boss_06_price_paid = false

-- After completing a fight, the exit gets moved to the given coordinates
-- moveDungeonPortal() should be called when the dungeon is completed

--- interactPortalDoor()
-- Replace condition (false) of the if statements with the functions below and add a return value to them > return true when door requirement is met

-- gd.GDLeague.UnlockDoorGalakros(objectId)
-- gd.GDLeague.UnlockDoorRolderathis(objectId)
-- gd.GDLeague.UnlockDoorBallogNath(objectId)

--- Desert Ruins
function gd.map.moveDungeonPortal01()
	gd.map.playSoundEffectPortalMoved(dungeon_portal_01:GetCoords())
	dungeon_completed_01 = true
	dungeon_portal_01:SetLocked(false)
	dungeon_portal_01:Open()
	dungeon_door_01:Open()
end

function gd.map.interactPortalDoor01(objectId)
	if (portal_area_door_01_id ~= nil) then
		return
	end
	portal_area_door_01_id = objectId
	if (false) then
		gd.map.playSoundEffectPortalDoor(Door.Get(objectId):GetCoords())
		Door.Get(objectId):SetLocked(false)
		Door.Get(objectId):Open()
	end
end

function gd.map.closePortalDoor01()
	local portal_area_door_01 = Door.Get(portal_area_door_01_id)
	portal_area_door_01:Close()
	portal_area_door_01:SetLocked(true)
end

--- Spider Nest
function gd.map.moveDungeonPortal02()
	gd.map.playSoundEffectPortalMoved(dungeon_portal_02:GetCoords())
	dungeon_completed_02 = true
	dungeon_portal_02:SetLocked(false)
	dungeon_portal_02:Open()
	dungeon_door_02:Open()
end

function gd.map.interactPortalDoor02(objectId)
	if (portal_area_door_02_id ~= nil) then
		return
	end
	portal_area_door_02_id = objectId
	if (false) then
		gd.map.playSoundEffectPortalDoor(Door.Get(objectId):GetCoords())
		Door.Get(objectId):SetLocked(false)
		Door.Get(objectId):Open()
	end
end

function gd.map.closePortalDoor02()
	local portal_area_door_02 = Door.Get(portal_area_door_02_id)
	portal_area_door_02:SetLocked(true)
	portal_area_door_02:Close()
end

function gd.map.destroyEggs01(objectId)
	gd.GDLeague.Bosses.SpiderEggDestroyed()
	spider_egg_01a:Destroy(Vec(0,1,0), 10, true)
	spider_egg_01b:Destroy(Vec(0,1,0), 10, true)
	spider_egg_01b2:Destroy(Vec(0,1,0), 10, true)
	gd.map.spawnSpidersOnEggs(Entity.Get(objectId):GetCoords())
end

function gd.map.destroyEggs02(objectId)
	gd.GDLeague.Bosses.SpiderEggDestroyed()
	spider_egg_02a:Destroy(Vec(0,1,0), 10, true)
	spider_egg_02a2:Destroy(Vec(0,1,0), 10, true)
	spider_egg_02b:Destroy(Vec(0,1,0), 10, true)
	gd.map.spawnSpidersOnEggs(Entity.Get(objectId):GetCoords())
end

function gd.map.destroyEggs03(objectId)
	gd.GDLeague.Bosses.SpiderEggDestroyed()
	spider_egg_03a:Destroy(Vec(0,1,0), 10, true)
	spider_egg_03b:Destroy(Vec(0,1,0), 10, true)
	spider_egg_03b2:Destroy(Vec(0,1,0), 10, true)
	gd.map.spawnSpidersOnEggs(Entity.Get(objectId):GetCoords())
end

function gd.map.destroyEggs04(objectId)
	gd.GDLeague.Bosses.SpiderEggDestroyed()
	spider_egg_04a:Destroy(Vec(0,1,0), 10, true)
	spider_egg_04b:Destroy(Vec(0,1,0), 10, true)
	spider_egg_04b2:Destroy(Vec(0,1,0), 10, true)
	gd.map.spawnSpidersOnEggs(Entity.Get(objectId):GetCoords())
end

function gd.map.destroyEggs05(objectId)
	gd.GDLeague.Bosses.SpiderEggDestroyed()
	spider_egg_05a:Destroy(Vec(0,1,0), 10, true)
	spider_egg_05a2:Destroy(Vec(0,1,0), 10, true)
	spider_egg_05b:Destroy(Vec(0,1,0), 10, true)
	gd.map.spawnSpidersOnEggs(Entity.Get(objectId):GetCoords())
end

--- Ashen Waste / Ballog'Nath
function gd.map.moveDungeonPortal03()
	gd.map.playSoundEffectPortalMoved(dungeon_portal_03:GetCoords())
	dungeon_completed_03 = true
	dungeon_portal_03:SetLocked(false)
	dungeon_portal_03:Open()
	dungeon_door_03:Open()
end

function gd.map.interactPortalDoor03(objectId)
	if (portal_area_door_03_id ~= nil) then
		return
	end
	portal_area_door_03_id = objectId
	if (false) then
		gd.map.playSoundEffectPortalDoor(Door.Get(objectId):GetCoords())
		Door.Get(objectId):SetLocked(false)
		Door.Get(objectId):Open()
	end
end

function gd.map.closePortalDoor03()
	local portal_area_door_03 = Door.Get(portal_area_door_03_id)
	portal_area_door_03:Close()
	portal_area_door_03:SetLocked(true)
end

--- Town Square
function gd.map.moveDungeonPortal04()
	gd.map.playSoundEffectPortalMoved(dungeon_portal_04:GetCoords())
	dungeon_completed_04 = true
	dungeon_portal_04:SetLocked(false)
	dungeon_portal_04:Open()
	dungeon_door_04:Open()
end

function gd.map.interactPortalDoor04(objectId)
	if (portal_area_door_04_id ~= nil) then
		return
	end
	portal_area_door_04_id = objectId
	if ( false ) then
		gd.map.playSoundEffectPortalDoor(Door.Get(objectId):GetCoords())
		Door.Get(objectId):SetLocked(false)
		Door.Get(objectId):Open()
	end
end

function gd.map.closePortalDoor04()
	local portal_area_door_04 = Door.Get(portal_area_door_04_id)
	portal_area_door_04:Close()
	portal_area_door_04:SetLocked(true)
end

--- Otherworld
function gd.map.moveDungeonPortal05()
	gd.map.playSoundEffectPortalMoved(dungeon_portal_05:GetCoords())
	dungeon_completed_05 = true
	dungeon_portal_05:SetLocked(false)
	dungeon_portal_05:Open()
	dungeon_door_05:Open()
end

function gd.map.interactPortalDoor05(objectId)
	if (portal_area_door_05_id ~= nil) then
		return
	end
	portal_area_door_05_id = objectId
	if ( true ) then
		gd.map.playSoundEffectPortalDoor(Door.Get(objectId):GetCoords())
		Door.Get(objectId):SetLocked(false)
		Door.Get(objectId):Open()
	end
end

function gd.map.closePortalDoor05()
	local portal_area_door_05 = Door.Get(portal_area_door_05_id)
	portal_area_door_05:Close()
	portal_area_door_05:SetLocked(true)
end

--- Arkovian Ruins
function gd.map.moveDungeonPortal06()
	gd.map.playSoundEffectPortalMoved(dungeon_portal_06:GetCoords())
	dungeon_completed_06 = true
	dungeon_portal_06:SetLocked(false)
	dungeon_portal_06:Open()
	dungeon_door_06:Open()
end


function gd.map.interactPortalDoor06(objectId)
	if (portal_area_door_06_id ~= nil) then
		return
	end
	portal_area_door_06_id = objectId
	if ( false and dungeon_completed_01 == false ) then
		gd.map.playSoundEffectPortalDoor(Door.Get(objectId):GetCoords())
		Door.Get(objectId):SetLocked(false)
		Door.Get(objectId):Open()
	end
end

function gd.map.closePortalDoor06()
	local portal_area_door_06 = Door.Get(portal_area_door_06_id)
	portal_area_door_06:Close()
	portal_area_door_06:SetLocked(true)
end

function gd.map.triggerHideout()
	-- These NPCs are for some reason moved to the edge of the region the player loads in, this moves them back
	faction_merchant_01:SetCoords(faction_merchant_coords_01)
	faction_merchant_02:SetCoords(faction_merchant_coords_02)
	faction_merchant_03:SetCoords(faction_merchant_coords_03)
	illusionist_01:SetCoords(illusionist_coords_01)
	if (Game.GetLocalPlayer():HasToken("GL_HIDEOUT_SHORTCUT_UNLOCKED")) then
		shortcut_01:SetCoords(shortcut_coords_01)
	end
end

function gd.map.triggerPortalsDoor()
	-- Normal; Epic; Legendary
	if ((Game.GetLocalPlayer():GetLevel() == 100 and Game.GetGameDifficulty() == Game.Difficulty.Legendary)) then
		door_portals:SetLocked(false)
		door_portals:Open()
	end
end

function gd.map.triggerPortals()
	Game.GetLocalPlayer():GiveToken("GL_HIDEOUT_SHORTCUT_UNLOCKED")
end

function gd.map.playSoundEffectPortalDoor(coords)
	local sound_effect = Character.Create("records/__map/sound_door_dungeon_npc.dbr")
		sound_effect:SetCoords(coords)
		sound_effect:PlaySound(SoundType.VoxSound)
		sound_effect:PlaySound(SoundType.SpecialAttackSound1)
		sound_effect:PlaySound(SoundType.SpecialAttackSound2)
	Entity.Create("records/fx/skillsother/aoe/aethernova_fx01.dbr"):SetCoords(coords)
end

function gd.map.playSoundEffectPortalMoved(coords)
	local sound_effect = Character.Create("records/__map/sound_dungeon_portal_moved_npc.dbr")
		sound_effect:SetCoords(coords)
		sound_effect:PlaySound(SoundType.VoxSound)
	Entity.Create("records/fx/ambient/korvaakdoor01_deactivate_fx.dbr"):SetCoords(coords)
	UI.Notify("tag_CompletionDungeon")
end

function gd.map.spawnSpidersOnEggs(coords)
	Proxy.Create("records/creatures/spider_proxy.dbr"):SetCoords(coords)
end

function gd.map.spawnSpidersOnEggsFew(objectId)
	Proxy.Create("records/creatures/spider_few_proxy.dbr"):SetCoords(Entity.Get(objectId):GetCoords())
end

-- Hideout

function gd.map.getFactionMerchantCoords01(objectId)
	faction_merchant_coords_01 = Entity.Get(objectId):GetCoords()
end

function gd.map.getFactionMerchantCoords02(objectId)
	faction_merchant_coords_02 = Entity.Get(objectId):GetCoords()
end

function gd.map.getFactionMerchantCoords03(objectId)
	faction_merchant_coords_03 = Entity.Get(objectId):GetCoords()
end

function gd.map.getIllusionistCoords01(objectId)
	illusionist_coords_01 = Entity.Get(objectId):GetCoords()
end

function gd.map.getShortcutCoords01(objectId)
	shortcut_coords_01 = Entity.Get(objectId):GetCoords()
end

function gd.map.getFactionMerchant01(objectId)
	faction_merchant_01 = Entity.Get(objectId)
end

function gd.map.getFactionMerchant02(objectId)
	faction_merchant_02 = Entity.Get(objectId)
end

function gd.map.getFactionMerchant03(objectId)
	faction_merchant_03 = Entity.Get(objectId)
end

function gd.map.getIllusionist01(objectId)
	illusionist_01 = Entity.Get(objectId)
end

function gd.map.getShortcut01(objectId)
	shortcut_01 = Entity.Get(objectId)
end

function gd.map.getDoorPortals(objectId)
	door_portals = Door.Get(objectId)
end

-- Portals

function gd.map.getDungeonPortalCoords01(objectId)
	dungeon_portal_coords_01 = Entity.Get(objectId):GetCoords()
end

function gd.map.getDungeonPortalCoords02(objectId)
	dungeon_portal_coords_02 = Entity.Get(objectId):GetCoords()
end

function gd.map.getDungeonPortalCoords03(objectId)
	dungeon_portal_coords_03 = Entity.Get(objectId):GetCoords()
end

function gd.map.getDungeonPortalCoords04(objectId)
	dungeon_portal_coords_04 = Entity.Get(objectId):GetCoords()
end

function gd.map.getDungeonPortalCoords05(objectId)
	dungeon_portal_coords_05 = Entity.Get(objectId):GetCoords()
end

function gd.map.getDungeonPortalCoords06(objectId)
	dungeon_portal_coords_06 = Entity.Get(objectId):GetCoords()
end

function gd.map.getDungeonPortal01(objectId)
	dungeon_portal_01 = Door.Get(objectId)
end

function gd.map.getDungeonPortal02(objectId)
	dungeon_portal_02 = Door.Get(objectId)
end

function gd.map.getDungeonPortal03(objectId)
	dungeon_portal_03 = Door.Get(objectId)
end

function gd.map.getDungeonPortal04(objectId)
	dungeon_portal_04 = Door.Get(objectId)
end

function gd.map.getDungeonPortal05(objectId)
	dungeon_portal_05 = Door.Get(objectId)
end

function gd.map.getDungeonPortal06(objectId)
	dungeon_portal_06 = Door.Get(objectId)
end

-- Dungeons

function gd.map.getDungeonDoor01(objectId)
	dungeon_door_01 = Door.Get(objectId)
end

function gd.map.getDungeonDoor02(objectId)
	dungeon_door_02 = Door.Get(objectId)
end

function gd.map.getDungeonDoor03(objectId)
	dungeon_door_03 = Door.Get(objectId)
end

function gd.map.getDungeonDoor04(objectId)
	dungeon_door_04 = Door.Get(objectId)
end

function gd.map.getDungeonDoor05(objectId)
	dungeon_door_05 = Door.Get(objectId)
end

function gd.map.getDungeonDoor06(objectId)
	dungeon_door_06 = Door.Get(objectId)
end

function gd.map.PayPriceBoss01()

end

function gd.map.PayPriceBoss02()
	
end

function gd.map.PayPriceBoss03()
	
end

function gd.map.PayPriceBoss04()
	
end

function gd.map.PayPriceBoss05()
	if( is_boss_05_price_paid ) then
		return true
	end
	local player = Game.GetLocalPlayer()
	local has_item_01 = player:HasItem("records/items/crafting/materials/craft_bloodchthon.dbr", 5, false)
	local has_item_02 = player:HasItem("records/items/crafting/materials/craft_celestiallotus.dbr", 3, false)
	local has_item_03 = player:HasItem("records/items/crafting/materials/craft_ugdenbloom.dbr", 16, false)
	local has_item_04 = player:HasItem("records/items/materia/compa_riftstone.dbr", 10, false)
	local has_item_05 = player:HasItem("records/items/gearweapons/shields/c025_shield.dbr", 1, false)
	if (has_item_01 and has_item_02 and has_item_03 and has_item_04 and has_item_05) then
		player:TakeItem("records/items/crafting/materials/craft_bloodchthon.dbr", 5, false)
		player:TakeItem("records/items/crafting/materials/craft_celestiallotus.dbr", 3, false)
		player:TakeItem("records/items/crafting/materials/craft_ugdenbloom.dbr", 16, false)
		player:TakeItem("records/items/materia/compa_riftstone.dbr", 10, false)
		player:TakeItem("records/items/gearweapons/shields/c025_shield.dbr", 1, false)
		is_boss_05_price_paid = true
		UI.Notify("tagGDLeagueEntryFeeSuccess")
	else
		UI.Notify("tagGDLeagueEntryFeeFail05")
	end
	return is_boss_05_price_paid
end

function gd.map.PayPriceBoss06()
	
end


function gd.map.triggerOpenDungeonDoor01()
	if(is_boss_area_01_entered) then
		return
	end
	dungeon_door_01:Open()
end

function gd.map.triggerOpenDungeonDoor02()
	if(is_boss_area_02_entered) then
		return
	end
	dungeon_door_02:Open()
end

function gd.map.triggerOpenDungeonDoor03()
	if(is_boss_area_03_entered) then
		return
	end
	dungeon_door_03:Open()
end

function gd.map.triggerOpenDungeonDoor04()
	if(is_boss_area_04_entered) then
		return
	end
	dungeon_door_04:Open()
end

function gd.map.triggerOpenDungeonDoor05()
	if(is_boss_area_05_entered) then
		return
	end
	if(gd.map.PayPriceBoss05()) then
		dungeon_door_05:Open()
	end
end

function gd.map.triggerOpenDungeonDoor06()
	if(is_boss_area_06_entered) then
		return
	end
	dungeon_door_06:Open()
end

function gd.map.triggerCloseDungeonDoor01()
	if (not dungeon_completed_01) then
		dungeon_door_01:Close()
		is_boss_area_01_entered = true
	end
end

function gd.map.triggerCloseDungeonDoor02()
	if (not dungeon_completed_02) then
		dungeon_door_02:Close()
		is_boss_area_02_entered = true
	end
end

function gd.map.triggerCloseDungeonDoor03()
	if (not dungeon_completed_03) then
		dungeon_door_03:Close()
		is_boss_area_03_entered = true
	end
end

function gd.map.triggerCloseDungeonDoor04()
	if (not dungeon_completed_04) then
		dungeon_door_04:Close()
		is_boss_area_04_entered = true
	end
end

function gd.map.triggerCloseDungeonDoor05()
	if (not dungeon_completed_05) then
		dungeon_door_05:Close()
		is_boss_area_05_entered = true
	end
end

function gd.map.triggerCloseDungeonDoor06()
	if (not dungeon_completed_06) then
		dungeon_door_06:Close()
		is_boss_area_06_entered = true
	end
end

-- Egg Stuff

function gd.map.getEggs01a(objectId)	
	spider_egg_01a = Destructible.Get(objectId)
end
	
function gd.map.getEggs01b(objectId)	
	spider_egg_01b = Destructible.Get(objectId)
end
		
function gd.map.getEggs01b2(objectId)	
	spider_egg_01b2 = Destructible.Get(objectId)
end
	
function gd.map.getEggs02a(objectId)	
	spider_egg_02a = Destructible.Get(objectId)
end
		
function gd.map.getEggs02a2(objectId)	
	spider_egg_02a2 = Destructible.Get(objectId)
end
	
function gd.map.getEggs02b(objectId)	
	spider_egg_02b = Destructible.Get(objectId)
end
		
function gd.map.getEggs03a(objectId)	
	spider_egg_03a = Destructible.Get(objectId)
end
	
function gd.map.getEggs03b(objectId)	
	spider_egg_03b = Destructible.Get(objectId)
end
	
function gd.map.getEggs03b2(objectId)	
	spider_egg_03b2 = Destructible.Get(objectId)
end
		
function gd.map.getEggs04a(objectId)	
	spider_egg_04a = Destructible.Get(objectId)
end
	
function gd.map.getEggs04b(objectId)	
	spider_egg_04b = Destructible.Get(objectId)
end
		
function gd.map.getEggs04b2(objectId)	
	spider_egg_04b2 = Destructible.Get(objectId)
end
		
function gd.map.getEggs05a(objectId)	
	spider_egg_05a = Destructible.Get(objectId)
end
			
function gd.map.getEggs05a2(objectId)	
	spider_egg_05a2 = Destructible.Get(objectId)
end
	
function gd.map.getEggs05b(objectId)	
	spider_egg_05b = Destructible.Get(objectId)
end

function gd.map.UnlockPortalToHideOut(objectId)
	local player = Game.GetLocalPlayer()
	if ((player:GetQuestState(0xD631D200) == QuestState.Complete)) then
		Door.Get(objectId):SetLocked(false)
	end
end

function gd.map.LockPortalAfterUse(objectId)
	Door.Get(objectId):SetLocked(true)
end