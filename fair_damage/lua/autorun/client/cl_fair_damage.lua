
include( "fair_damage\\fair_damage_shared.lua" )
addCustomCvars()

--ConVars.

local function addProficiencySettingToDForm( dform, name, cvar )

	local combobox, label = dform:ComboBox( name, cvar )
	combobox:AddChoice( "Poor",        WEAPON_PROFICIENCY_POOR )
	combobox:AddChoice( "Average",     WEAPON_PROFICIENCY_AVERAGE )
	combobox:AddChoice( "Good",        WEAPON_PROFICIENCY_GOOD )
	combobox:AddChoice( "Very Good",   WEAPON_PROFICIENCY_VERY_GOOD )
	combobox:AddChoice( "Perfect",     WEAPON_PROFICIENCY_PERFECT )

end

--Panel functions.

local function addHealthSettingToDForm( dform, name, cvar )

	local slider = dform:NumSlider( name, cvar, 1, 120, 0 )

end

local function addMultiVarNumSlider( dform, name, cvar_list )
	
	local slider = dform:NumSlider( name, cvar_list[1], 1, 120, 0 )
	
	slider.OnValueChanged = function()
		for k, v in pairs( cvar_list ) do
			
			RunConsoleCommand( v, slider:GetValue() )
			
		end
	end
	
end

-- General functions.

local function saveCurrentSettingsToPreset( preset_name )
	
	ConVarsCurrent = {}
	for k, v in pairs( ConVarsDefault ) do
		ConVar = GetConVar( k )
		ConVarsCurrent[k] = ConVar:GetString()
	end
	
	-- for k, v in pairs( ConVarsCurrent ) do
	-- 	print( "  ", k, " = ", v)
	-- end
	
	if table.Count(ConVarsCurrent) != 0 then
		presets.Add( "fair_damage", preset_name, ConVarsCurrent )
	end
	
end

-- Hooks.

hook.Add( "ShutDown", "fair_damage_shutting_down", function()
	print( "Fair Damage: Saving them settings. (To 'autoload' preset.)" )
	saveCurrentSettingsToPreset( "autoload" )
end)

hook.Add( "InitPostEntity", "fairdamage_doclientstuff", function()
	
	local plr = LocalPlayer()
	
	if IsValid( plr ) then
		
		//Try to load autoload preset.
		local fd_presets = presets.GetTable( "fair_damage" )
	  local fd_preset_autoload = fd_presets["autoload"]
		
		if fd_preset_autoload != nil then
			ExecuteCommandsFromTable( fd_preset_autoload )
		end
		
	end
	
end)

hook.Add( "PopulateToolMenu", "fairdamage_configuration", function()
	spawnmenu.AddToolMenuOption( "Options", "Fair Damage", "config", "Configuration", "", "", function( panel )
    panel:ClearControls()
		
		//Presets, yay.
		panel:Help("Preset Control")
		panel:AddControl( "ComboBox", { MenuButton = 1, Folder = "fair_damage", Options = { [ "#preset.default" ] = ConVarsDefault }, CVars = table.GetKeys( ConVarsDefault ) } )
		
		//Weapon Proficiency.
		panel:Help("Weapon Proficiency")
		addProficiencySettingToDForm( panel, "weapon_pistol", "fairdamage_pistol_proficiency" )
		addProficiencySettingToDForm( panel, "weapon_smg1", "fairdamage_smg1_proficiency" )
		addProficiencySettingToDForm( panel, "weapon_ar2", "fairdamage_ar2_proficiency" )
		addProficiencySettingToDForm( panel, "weapon_shotgun", "fairdamage_shotgun_proficiency" )
		addProficiencySettingToDForm( panel, "weapon_rpg", "fairdamage_rpg_proficiency" )
		addProficiencySettingToDForm( panel, "Other", "fairdamage_other_proficiency" )

		//NPC Health.
		panel:Help("NPC Health")
		addHealthSettingToDForm( panel, "Citizen", "sk_citizen_health" )
		addHealthSettingToDForm( panel, "Vortigaunt", "sk_vortigaunt_health" )
		addHealthSettingToDForm( panel, "Stalker", "sk_stalker_health" )
		addHealthSettingToDForm( panel, "Metropolice Simple", "sk_metropolice_simple_health" )
		addHealthSettingToDForm( panel, "Metropolice", "sk_metropolice_health" )
		addHealthSettingToDForm( panel, "Combine Soldier", "sk_combine_s_health" )
		addHealthSettingToDForm( panel, "Combine Soldier Elite", "sk_combine_guard_health" )
		addHealthSettingToDForm( panel, "Manhack", "sk_manhack_health" )
		addHealthSettingToDForm( panel, "Headcrab (and fast)", "sk_headcrab_health" )
		addHealthSettingToDForm( panel, "Headcrab Poison", "sk_headcrab_poison_health" )
		addHealthSettingToDForm( panel, "Zombie", "sk_zombie_health" )
		addHealthSettingToDForm( panel, "Poison Zombie", "sk_zombie_poison_health" )
		addHealthSettingToDForm( panel, "Zombine", "sk_zombie_soldier_health" )
		addHealthSettingToDForm( panel, "Antlion", "sk_antlion_health" )
		addHealthSettingToDForm( panel, "Antlion Guard", "sk_antlionguard_health" )
		
		//NPC Melee Damage.
		panel:Help("NPC Melee Damage")
		addHealthSettingToDForm( panel, "Combine Soldier", "sk_combine_s_kick" )
		addHealthSettingToDForm( panel, "Combine Soldier Elite", "sk_combine_guard_kick" )
		addHealthSettingToDForm( panel, "Manhack", "sk_manhack_melee_dmg" )
		addHealthSettingToDForm( panel, "Headcrab", "sk_headcrab_melee_dmg" )
		addHealthSettingToDForm( panel, "Zombie", "sk_zombie_dmg_one_slash" )
		
		panel:Help("NPC Special Damage")
		addHealthSettingToDForm( panel, "AR2 Ball", "sk_npc_dmg_combineball" )
		
		//Weapon Base Damage.
		panel:Help("Base Weapon Damage")
		//addMultiVarNumSlider( panel, "Crowbar", { "sk_npc_dmg_crowbar", "sk_plr_dmg_crowbar" } )
		addMultiVarNumSlider( panel, "Stunstick", { "sk_npc_dmg_stunstick", "sk_plr_dmg_stunstick" } )
		addMultiVarNumSlider( panel, "Pistol", { "sk_npc_dmg_pistol", "sk_plr_dmg_pistol" } )
		addMultiVarNumSlider( panel, ".357", { "sk_npc_dmg_357", "sk_plr_dmg_357" } )
		addMultiVarNumSlider( panel, "SMG", { "sk_npc_dmg_smg1", "sk_plr_dmg_smg1" } )
		addMultiVarNumSlider( panel, "AR2", { "sk_npc_dmg_ar2", "sk_plr_dmg_ar2" } )
		addMultiVarNumSlider( panel, "Shotgun", { "sk_npc_dmg_buckshot", "sk_plr_dmg_buckshot" } )
		//addMultiVarNumSlider( panel, "Crossbow", { "sk_npc_dmg_crossbow", "sk_plr_dmg_crossbow" } )
		--addMultiVarNumSlider( panel, "Sniper Rifle (Combine Sniper)", { "sk_npc_dmg_sniper_round", "sk_plr_dmg_sniper_round" } )
		--addMultiVarNumSlider( panel, "RPG", { "sk_npc_dmg_rpg_round", "sk_plr_dmg_rpg_round" } )
		
		//Damage Multipliers.
		-- panel:Help("Damage Multipliers")
		-- addMultiVarNumSlider( panel, "Head", { "sk_npc_head", "sk_player_head" } )
		-- addMultiVarNumSlider( panel, "Chest", { "sk_npc_chest", "sk_player_chest" } )
		-- addMultiVarNumSlider( panel, "Arms", { "sk_npc_arm", "sk_player_arm" } )
		-- addMultiVarNumSlider( panel, "Stomach", { "sk_npc_stomach", "sk_player_stomach" } )
		-- addMultiVarNumSlider( panel, "Legs", { "sk_npc_leg", "sk_player_leg" } )
		
    //
	end )
end )