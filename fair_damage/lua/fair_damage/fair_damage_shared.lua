AddCSLuaFile()

ConVarsDefault = {
  
  // ===========
  // NPCs
  // ============
  // Barnacle
  --sk_barnacle_health = 35

  // Barney
  --sk_barney_health = 35 //I don't change it because he regenerates

  // Bullseye
  sk_bullseye_health = 35,

  // Citizen
  sk_citizen_health = 100,

  // Combine Soldier
  sk_combine_s_health = 100,
  sk_combine_s_kick = 25,
  sk_npc_dmg_combineball = 200,

  // Combine Guard
  sk_combine_guard_health = 100,
  sk_combine_guard_kick = 25,

  // strider
  sk_strider_health = 350,
  sk_strider_num_missiles1 = 5,
  sk_strider_num_missiles2 = 7,
  sk_strider_num_missiles3 = 7,

  // Headcrab
  sk_headcrab_health = 10,
  sk_headcrab_melee_dmg = 5,

  // Fast" = "Headcrab
  sk_headcrab_fast_health = 10,

  // Poison" = "Headcrab
  sk_headcrab_poison_health = 35,

  // Houndeye
  --sk_houndeye_health = 80,
  --sk_houndeye_dmg_blast = 25,

  // Manhack
  sk_manhack_health = 25,
  sk_manhack_melee_dmg = 20,

  // Metropolice
  sk_metropolice_health = 100,
  sk_metropolice_simple_health = 60,
  sk_metropolice_stitch_reaction = 1.0,
  sk_metropolice_stitch_tight_hitcount = 2,
  sk_metropolice_stitch_at_hitcount = 1,
  sk_metropolice_stitch_behind_hitcount = 3,
  sk_metropolice_stitch_along_hitcount = 2,

  // Rollermine
  sk_rollermine_shock = 10,
  sk_rollermine_stun_delay = 3,
  sk_rollermine_vehicle_intercept = 1,

  // Scanner (City)
  sk_scanner_health = 30,
  sk_scanner_dmg_dive = 25,

  // Stalker
  sk_stalker_health = 100,
  sk_stalker_melee_dmg = 5,

  // Vortigaunt
  sk_vortigaunt_health = 100,
  sk_vortigaunt_dmg_claw = 10,
  sk_vortigaunt_dmg_rake = 25,
  sk_vortigaunt_dmg_zap = 50,
  sk_vortigaunt_armor_charge = 30,

  // Zombie
  sk_zombie_health = 100,
  sk_zombie_dmg_one_slash = 10,
  sk_zombie_dmg_both_slash = 25,

  // Poison" = "Zombie
  sk_zombie_poison_health = 175,
  sk_zombie_poison_dmg_spit = 20,

  //Antlion
  sk_antlion_health = 30,
  sk_antlion_swipe_damage = 5,
  sk_antlion_jump_damage = 5,

  //Antlion" = "Guard
  sk_antlionguard_health = 500,
  sk_antlionguard_dmg_charge = 20,
  sk_antlionguard_dmg_shove = 10,

  //Antlion Grub
  --sk_antliongrub_health = 5,

  //Ichthyosaur
  --sk_ichthyosaur_health = 200,
  --sk_ichthyosaur_melee_dmg = 8,

  // Combine" = "Gunship
  sk_gunship_burst_size = 15,
  sk_gunship_health_increments = 5,
  sk_npc_dmg_gunship = 40,
  sk_npc_dmg_gunship_to_plr = 3,

  // Combine" = "Helicopter
  sk_npc_dmg_helicopter = 6,
  sk_npc_dmg_helicopter_to_plr = 3,
  sk_helicopter_grenadedamage = 30,
  sk_helicopter_grenaderadius = 275,
  sk_helicopter_grenadeforce = 55000,

  // Combine = Dropship
  --sk_npc_dmg_dropship = 2,

  // Combine APC
  --sk_apc_health = 750,

  // =================
  // WEAPONS
  // =================,

  sk_plr_dmg_ar2 = 8,
  sk_npc_dmg_ar2 = 8,
  sk_max_ar2 = 60,
  sk_max_ar2_altfire = 3,

  sk_plr_dmg_alyxgun = 5,
  sk_npc_dmg_alyxgun = 5,
  sk_max_alyxgun = 150,

  sk_plr_dmg_pistol = 5,
  sk_npc_dmg_pistol = 5,
  sk_max_pistol = 150,

  sk_plr_dmg_smg1 = 5,
  sk_npc_dmg_smg1 = 5,
  sk_max_smg1 = 225,

  sk_plr_dmg_buckshot = 8,
  sk_npc_dmg_buckshot = 8,
  sk_max_buckshot = 30,

  sk_plr_dmg_rpg_round = 100,
  sk_npc_dmg_rpg_round = 100,
  sk_max_rpg_round = 3,

  sk_plr_dmg_smg1_grenade = 100,
  sk_npc_dmg_smg1_grenade = 100,
  sk_max_smg1_grenade = 3,
  sk_smg1_grenade_radius = 250,

  //sk_plr_dmg_gauss			25
  //sk_plr_max_dmg_gauss		30,

  sk_plr_dmg_sniper_round = 100,
  sk_npc_dmg_sniper_round = 100,
  sk_max_sniper_round = 30,

  sk_plr_dmg_357 = 40,
  sk_npc_dmg_357 = 40,
  sk_max_357 = 12,

  sk_plr_dmg_crossbow = 100,
  sk_npc_dmg_crossbow = 100,
  sk_max_crossbow = 10,

  sk_plr_dmg_airboat = 3,
  sk_npc_dmg_airboat = 3,

  //sk_dmg_sniper_penetrate_plr" = "10
  //sk_dmg_sniper_penetrate_npc" = "100,

  sk_plr_dmg_grenade = 150,
  sk_npc_dmg_grenade = 150,
  sk_max_grenade = 5,

  -- sk_plr_dmg_crowbar = 10,
  -- sk_npc_dmg_crowbar = 10,
  -- 
  -- sk_plr_dmg_stunstick = 100,
  -- sk_npc_dmg_stunstick = 100,	// Kill a citizen in one hit,

  //sk_plr_dmg_satchel			150,
  --sk_npc_dmg_satchel			75,
  --sk_satchel_radius			150,

  // Mortar Synth projectile
  --sk_dmg_energy_grenade = 2
  --sk_energy_grenade_radius = 100,

  sk_dmg_homer_grenade = 20,
  sk_homer_grenade_radius = 100,

  // Bullsquid spit
  --sk_dmg_spit_grenade = 5
  --sk_spit_grenade_radius = 50,

  //sk_plr_dmg_tripmine = 150
  //sk_npc_dmg_tripmine = 125
  //sk_tripmine_radius = 200,

  sk_plr_dmg_fraggrenade = 125,
  sk_npc_dmg_fraggrenade = 125,
  sk_fraggrenade_radius = 250,

  // HEALTH/SUIT CHARGE DISTRIBUTION
  sk_suitcharger = 75,
  sk_suitcharger_citadel = 500,
  sk_suitcharger_citadel_maxarmor = 200,
  sk_battery = 15,
  sk_healthcharger = 50,
  sk_healthkit = 25,
  sk_healthvial = 10,

  // Combine" = "balls
  sk_combineball_seek_angle = 15,
  sk_combineball_guidefactor = 1.0,

  // NPC damage adjusters
  sk_npc_head = 10,
  sk_npc_chest = 5,
  sk_npc_stomach = 3,
  sk_npc_arm = 1,
  sk_npc_leg = 1,

  // player damage adjusters
  sk_player_head = 10,
  sk_player_chest = 5,
  sk_player_stomach = 3,
  sk_player_arm = 1,
  sk_player_leg = 1,

  // Allies
  --sk_ally_regen_time = 0.2,

  // Jeep
  sk_max_gauss_round = 30,

  --skai_enable_fear_behavior = 1,

  // zombine
  sk_zombie_soldier_health = 100,

  // Episodic APC - Experimental
  --sk_apc_missile_damage = 50,

  // Antlion air attack
  sk_antlion_air_attack_dmg = 10,

  // Antlion worker
  sk_antlion_worker_spit_speed = 600,
  sk_antlion_worker_health = 60,

  // Vortigaunt charge limit
  --sk_vortigaunt_armor_charge = 15,
  --sk_vortigaunt_armor_charge_per_token = 5,
  --sk_vortigaunt_dmg_zap = 25,

  // Poison" = "headcrab
  sk_headcrab_poison_npc_damage = 20.0,
  
}

CustomConVars = {
  
  fairdamage_pistol_proficiency   = WEAPON_PROFICIENCY_PERFECT,
  fairdamage_smg1_proficiency     = WEAPON_PROFICIENCY_VERY_GOOD,
  fairdamage_ar2_proficiency      = WEAPON_PROFICIENCY_GOOD,
  fairdamage_shotgun_proficiency  = WEAPON_PROFICIENCY_GOOD,
  fairdamage_rpg_proficiency      = WEAPON_PROFICIENCY_PERFECT,
  fairdamage_other_proficiency    = WEAPON_PROFICIENCY_GOOD,
  
}

//This is called separately on client and server, I forgot why.
function addCustomCvars()
  
  for k, v in pairs( CustomConVars ) do
    CreateConVar( k, v/*, FCVAR_UNREGISTERED*/ )
  end
  
  table.Merge( ConVarsDefault, CustomConVars )
  
end

//...
function ExecuteCommandsFromTable( command_table )
  
  for k, v in pairs( command_table ) do
    
    //game.ConsoleCommand( k .." ".. v .."\n" )
    RunConsoleCommand( k, v ) 
    
  end
  
end