gd.map = {}

local boss_fee = "records/items/crafting/materials/craft_skeletonkey.dbr"
local boss_fee_amount = 1

-- After completing a fight, the exit gets moved to the given coordinates
-- The functions below should be called when a boss dies / the dungeon is completed

--- Desert Ruins
function gd.map.moveDungeonPortal01()
	dungeon_portal_01:SetCoords(dungeon_portal_coords_01)
	gd.map.playSoundEffectPortalMoved(dungeon_portal_coords_01)
end

--- Spider Nest
function gd.map.moveDungeonPortal02()
	dungeon_portal_02:SetCoords(dungeon_portal_coords_02)
	gd.map.playSoundEffectPortalMoved(dungeon_portal_coords_02)
end

function gd.map.moveDungeonPortal03()
	dungeon_portal_03:SetCoords(dungeon_portal_coords_03)
	gd.map.playSoundEffectPortalMoved(dungeon_portal_coords_03)
end

--- Town Square
function gd.map.moveDungeonPortal04()
	dungeon_portal_04:SetCoords(dungeon_portal_coords_04)
	gd.map.playSoundEffectPortalMoved(dungeon_portal_coords_04)
end

function gd.map.moveDungeonPortal05()
	dungeon_portal_05:SetCoords(dungeon_portal_coords_05)
	gd.map.playSoundEffectPortalMoved(dungeon_portal_coords_05)
end

function gd.map.triggerHideout()
	Game.GetLocalPlayer():RemoveToken("GL_TESTING")
	-- !!! Remove line on Live Version
	Game.GetLocalPlayer():GiveToken("GL_TESTING")
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
	if ((Game.GetLocalPlayer():GetLevel() == 100 and Game.GetGameDifficulty() == Game.Difficulty.Legendary) or Game.GetLocalPlayer():HasToken("GL_TESTING")) then
		door_portals:SetLocked(false)
		door_portals:Open()
	end
end

function gd.map.triggerPortals()
	Game.GetLocalPlayer():GiveToken("GL_HIDEOUT_SHORTCUT_UNLOCKED")
end

function gd.map.interactPortalDoor(objectId)
	if (Game.GetLocalPlayer():HasItem(boss_fee, boss_fee_amount, false) or Game.GetLocalPlayer():HasToken("GL_TESTING")) then
		Door.Get(objectId):SetLocked(false)
		Door.Get(objectId):Open()
		gd.map.playSoundEffectPortalDoor(Door.Get(objectId):GetCoords())
		Game.GetLocalPlayer():TakeItem(boss_fee, boss_fee_amount, false)
	end
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

function gd.map.getDungeonPortal01(objectId)
	dungeon_portal_01 = Entity.Get(objectId)
end

function gd.map.getDungeonPortal02(objectId)
	dungeon_portal_02 = Entity.Get(objectId)
end

function gd.map.getDungeonPortal03(objectId)
	dungeon_portal_03 = Entity.Get(objectId)
end

function gd.map.getDungeonPortal04(objectId)
	dungeon_portal_04 = Entity.Get(objectId)
end

function gd.map.getDungeonPortal05(objectId)
	dungeon_portal_05 = Entity.Get(objectId)
end