
AddCSLuaFile( "fair_damage\\fair_damage_shared.lua" )

include( "fair_damage\\fair_damage_shared.lua" )
addCustomCvars()


fair_damage_initilized = false;

function fd_load_custom_skill_cfg()
  
  ExecuteCommandsFromTable( ConVarsDefault )
  
end

function fd_npc_update_wep_prof( npc )

  if ( npc:GetActiveWeapon() == NULL ) then
    return
  end

  local weapon = npc:GetActiveWeapon():GetClass()

  if (weapon == "weapon_pistol") then
    npc:SetCurrentWeaponProficiency( cvars.Number( "fairdamage_pistol_proficiency", WEAPON_PROFICIENCY_GOOD )  )
  elseif ( weapon == "weapon_smg1" ) then
    npc:SetCurrentWeaponProficiency( cvars.Number( "fairdamage_smg1_proficiency", WEAPON_PROFICIENCY_GOOD ) )
  elseif ( weapon == "weapon_ar2" ) then
    npc:SetCurrentWeaponProficiency( cvars.Number( "fairdamage_ar2_proficiency", WEAPON_PROFICIENCY_GOOD ) )
  elseif ( weapon == "wepon_shotgun" ) then
    npc:SetCurrentWeaponProficiency( cvars.Number( "fairdamage_shotgun_proficiency", WEAPON_PROFICIENCY_GOOD ) )
  elseif ( weapon == "weapon_rpg" ) then
    npc:SetCurrentWeaponProficiency( cvars.Number( "fairdamage_rpg_proficiency", WEAPON_PROFICIENCY_GOOD ) )
  else
    npc:SetCurrentWeaponProficiency( cvars.Number( "fairdamage_other_proficiency", WEAPON_PROFICIENCY_GOOD ) )
  end

  //Debug stuff.
  --print("Fair Damage debug, updated proficiency: " .. weapon .. "->" .. npc:GetCurrentWeaponProficiency() )

end

function fd_update_all_npc_proficiency()

  for _, v in pairs( ents.FindByClass( "npc_*" ) ) do
    fd_npc_update_wep_prof(v)
  end

end

hook.Add( "OnEntityCreated", "fair_damage_npc_spawn", function( ent )
    
    if ( ( !IsValid( ent ) ) ) then
      return
    end
    
    if ent:GetClass() == "player_manager" then
      
      if fair_damage_initilized == false then
        // This is trying to fixup NPCs having default-default heath on spawn.
        // Now they will _maybe_ have Fair Damage default (TM) health.
        // ( Can't use the 'autoload' preset since presets aren't
        // available on the server. )
        fd_load_custom_skill_cfg()
        fair_damage_initilized = true;
      end
      
    end

    if ( ent:IsNPC() != true ) then
      return
    end

    fd_npc_update_wep_prof( ent )

  end
)