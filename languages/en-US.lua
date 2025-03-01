if not OP then OP = {} end
if not OP.Global then OP.Global = {} end
if not OP.Global.Locales then OP.Global.Locales = {} end
if not OP.Global.Locales.Languages then OP.Global.Locales.Languages = {} end

OP.Global.Locales.Languages["en-US"] = {
	-- configuration settings for language
	largeNumberSeperator = ",", -- with it set as ",", 1000000 -> 1,000,000 in a lot of labels
	floatSeperator = ".", -- with it set as ".", (25 + (1/5)) -> 25.2
	useMetric = false,

	-- locales shared between all resources
	shared = {
		system = "System",
		warning = "Warning",
		invalid_input = "Invalid Input.",
		missing_input = "Missing Input.",
		player_not_found = "Could not find player with server ID `${serverId}`.",
		something_went_wrong = "Something went wrong. Please try again.",
		yes = "Yes",
		no = "No"
	},

	-- animations/*
	chairs = {
		chair_is_occupied = "This chair is occupied."
	},

	emotes = {
		get_in_trunk = "Press ~INPUT_ENTER~ to enter trunk",
		put_boombox_in_trunk = "Press ~INPUT_ENTER~ to put boombox in the trunk",
		put_player_in_trunk = "Press ~INPUT_ENTER~ to put the player in the trunk",
		put_ped_in_trunk = "Press ~INPUT_ENTER~ to put the ped in the trunk",
		put_bicycle_in_trunk = "Press ~INPUT_ENTER~ to put the bicycle in the trunk",
		trunk_interaction_display = "[${VehicleEnterKey}] Climb Out [${InteractionKey}] Open/Close Trunk",
		boombox_already_in_trunk = "There is already a boombox in the trunk.",
		the_trunk_is_occupied = "The trunk is occupied.",
		unable_to_toggle_carry = "Please wait a bit before toggling the carry."
	},

	-- base/*
	admin = {
		aimbot_activated = "Aimbot Activated",
		wallhack_activated = "Wallhack Activated",

		feature_toggle_not_admin = "Attempted to toggle their own or someone else's `${featureName}`, but didn't have proper permissions to do so.",
		feature_toggle_activated_logs_title = "Remotely Toggled Feature",
		feature_toggle_activated_logs_details = "${consoleName} toggled `${featureName}` for player ${targetConsoleName}.",
		feature_toggle_activated_logs_details_state = "${consoleName} toggled `${featureName}` ${newState} for player ${targetConsoleName}.",
		feature_toggle_activated_all_logs_title = "Remotely Toggled Feature For Everyone",
		feature_toggle_activated_all_logs_details = "${consoleName} toggled `${featureName}` for everyone.",
		feature_toggle_activated_self_logs_title = "Toggled Feature",
		feature_toggle_activated_self_on_logs_details = "${consoleName} toggled `${featureName}` on for themselves.",
		feature_toggle_activated_self_off_logs_details = "${consoleName} toggled `${featureName}` off for themselves.",
		feature_toggle_success = "Toggled `${featureName}` for ${consoleName}.",
		feature_toggle_success_all = "Toggled `${featureName}` for everyone.",
		feature_toggle_failed = "Failed to toggle `${featureName}` for server ID ${serverId}.",
		feature_toggle_success_on = "Toggled `${featureName}` on for ${consoleName}.",
		feature_toggle_success_off = "Toggled `${featureName}` off for ${consoleName}.",

		noclip_toggle_activated_self_logs_title = "Noclip Toggled",
		noclip_toggle_activated_self_on_logs_details = "${consoleName} toggled noclip on at position `x: ${xCoord}, y: ${yCoord}, z: ${zCoord}`. (In vehicle: ${inVehicle})",
		noclip_toggle_activated_self_off_logs_details = "${consoleName} toggled noclip off at position `x: ${xCoord}, y: ${yCoord}, z: ${zCoord}`.",

		model_name_not_provided = "No model name passed.",
		model_name_invalid = "Model name `${modelName}` is invalid.",
		failed_to_spawn_vehicle = "Failed to execute the `/spawn_vehicle` command correctly.",
		spawned_vehicle_for_player = "Successfully spawned `${modelName}` for ${consoleName}.",
		spawned_vehicle_for_everyone = "Successfully spawned `${modelName}` for everyone.",
		spawn_vehicle_for_player_not_staff = "Player attempted to spawn a vehicle for someone else but they didn't have the requried permissions to do so.",
		spawn_vehicle_for_self_not_staff = "Player attempted to spawn a vehicle for themselves but they didn't have the requried permissions to do so.",
		spawned_vehicle_for_self_title = "Spawned Vehicle",
		spawned_vehicle_for_self_details = "${consoleName} spawned a vehicle with model name `${modelName}`.",
		spawned_vehicle_for_player_title = "Spawned Vehicle For Player",
		spawned_vehicle_for_player_details = "${consoleName} spawned a vehicle with model name `${modelName}` for player ${targetConsoleName}.",
		spawned_vehicle_for_everyone_title = "Spawned Vehicle For Everyone",
		spawned_vehicle_for_everyone_details = "${consoleName} spawned a vehicle with model name `${modelName}` for everyone.",

		invalid_amount = "Invalid amount.",

		added_cash_title = "Added Cash",
		added_cash_details = "${consoleName} added $${amount} cash.",
		added_cash_to_player_title = "Added Cash To Player",
		added_cash_to_player_details = "${consoleName} added $${amount} cash to ${targetConsoleName}.",
		added_cash_to_everyone_title = "Added Cash To Everyone",
		added_cash_to_everyone_details = "${consoleName} added $${amount} cash to everyone.",

		removed_cash_title = "Removed Cash",
		removed_cash_details = "${consoleName} removed $${amount} cash.",
		removed_cash_from_player_title = "Removed Cash From Player",
		removed_cash_from_player_details = "${consoleName} removed $${amount} cash from ${targetConsoleName}.",
		removed_cash_from_everyone_title = "Removed Cash To Everyone",
		removed_cash_from_everyone_details = "${consoleName} removed $${amount} cash from everyone.",

		added_bank_title = "Added Bank",
		added_bank_details = "${consoleName} added $${amount} bank.",
		added_bank_to_player_title = "Added Bank To Player",
		added_bank_to_player_details = "${consoleName} added $${amount} bank to ${targetConsoleName}.",
		added_bank_to_everyone_title = "Added Bank To Everyone",
		added_bank_to_everyone_details = "${consoleName} added $${amount} bank to everyone.",

		removed_bank_title = "Removed Bank",
		removed_bank_details = "${consoleName} removed $${amount} bank.",
		removed_bank_from_player_title = "Removed Bank From Player",
		removed_bank_from_player_details = "${consoleName} removed $${amount} bank from ${targetConsoleName}.",
		removed_bank_from_everyone_title = "Removed Bank From Everyone",
		removed_bank_from_everyone_details = "${consoleName} removed $${amount} bank from everyone.",

		added_cash = "Added $${amount} cash.",
		added_cash_to_player = "Added $${amount} cash to ${targetConsoleName}.",
		added_cash_to_everyone = "Added $${amount} cash to everyone.",

		removed_cash = "Removed $${amount} cash.",
		removed_cash_from_player = "Removed $${amount} cash from ${targetConsoleName}.",
		removed_cash_from_everyone = "Removed $${amount} cash from everyone.",

		added_bank = "Added $${amount} bank.",
		added_bank_to_player = "Added $${amount} bank to ${targetConsoleName}.",
		added_bank_to_everyone = "Added $${amount} bank to everyone.",

		removed_bank = "Removed $${amount} bank.",
		removed_bank_from_player = "Removed $${amount} bank from ${targetConsoleName}.",
		removed_bank_from_everyone = "Removed $${amount} bank from everyone.",

		money_event_not_admin = "Attempted to toggle money event `${moneyEvent}`.",

		event_not_admin = "Attempted to ${eventName}, but user didn't have proper permissions to do so.",

		removed_bank_balance_from_player = "Removed $${amount} bank balance from ${consoleName}.",

		spawned_item_title = "Spawned Item",
		spawned_item_details = "${consoleName} spawned in ${amount}x `${itemName}` for themselves.",
		spawned_item_for_player_title = "Spawned Item For Player",
		spawned_item_for_player_details = "${consoleName} spawned in ${amount}x `${itemName}` for ${targetConsoleName}.",
		spawned_item_for_everyone_title = "Spawned Item For Everyone",
		spawned_item_for_everyone_details = "${consoleName} spawned in ${amount}x `${itemName}` for everyone.",

		report_title = "REPORT ${reporterName}",
		report_logs_title = "Report",
		report_logs_details = "${consoleName} created a report with the following message: `${reportMessage}`",

		announcement_staff_title = "Staff Announcement",
		announcement_server_title = "Server Announcement",

		announcement_logs_title = "Server Wide Announcement",
		announcement_logs_details = "${consoleName} broadcasted the following message to the entire server: `${announcementMessage}`",
		announcement_not_admin = "Attempted to post a staff announcement.",

		announcement_maintenance = "The server will be going down in ${minutes} minutes for maintenance.",
		announcement_update = "The server will be going down in ${minutes} minutes for an update.",
		announcement_restart = "The server will be going down in ${minutes} minutes for a restart.",

		posted_announcement = "Posted announcement message.",
		posted_announcement_locale = "Posted announcement message from locale.",
		failed_to_post_announcement = "Failed to post announcement message as no message was added.",
		failed_to_post_announcement_locale = "Failed to post announcement message as the announcement locale added is not supported.",

		staff_title = "STAFF ${staffName}",
		staff_message_logs_title = "Staff Message",
		staff_message_logs_details = "${consoleName} sent the following message in the staff chat: `${staffMessage}`",
		staff_message_illegal = "Player attempted sending a message in the staff chat, but wasn't staff.",

		staff_pm_title = "STAFF PM ${transmissionTitle}",
		staff_pm_logs_title = "Staff PM",
		staff_pm_logs_details = "${senderConsoleName} sent the following message to ${recipientConsoleName}: `${staffPrivateMessage}`",
		staff_pm_not_logged_in = "You are not logged in.",
		staff_pm_not_user_not_found = "User with server ID ${serverId} was not found.",
		staff_pm_not_recipient_not_staff = "The player you are attepting to send a message to is not a staff member.",
		staff_pm_unable_to_message_self = "You are not able to message yourself.",
		staff_pm_warning = "Staff PM Warning",
		staff_pm_first_time = "We see you have never used staff PMs before. To respond to a staff PM, use the /staffpm command.",

		external_staff_message = "External Staff Message",
		external_staff_message_from_player = "External Staff Message From ${playerName}",
		external_staff_message_content = "${staffMessage} (You can not respond to this message.)",

		unale_to_staff_message_yourself = "Unable to staff message yourself.",
		message_sent = "Message sent.",
		player_not_found = "Player not found.",
		missing_valid_target_source_parameter = "Missing a valid 'target source' parameter.",
		missing_valid_message_parameter = "Missing a valid 'message' parameter.",

		player_revived_success = "Revived player successfully.",

		missing_valid_steam_identifier_parameter = "Missing a valid 'steamIdentifier' parameter.",

		illegal_entity_wipe = "Player attempted to wipe entities, but didn't have permissions.",
		wiped_entities = "Wiped Entities",
		wipe_entities_logs_title = "Wiped Entities",
		wipe_entities_logs_details = "${consoleName} issued an entity wipe with the following configuration: distance = `${distance}`, ignoreLocalEntities = `${ignoreLocalEntities}`, modelName = `${modelName}`",

		wipe_awaiting_confirmation = "The wipe is now awaiting confirmation. Do `/wipe_confirm` to respond to it or wait until it expires in 60 seconds.\n\nThe chosen parameters are:\n- distance: `${distance}`\n- ignoreLocalEntities: `${ignoreLocalEntities}`\n- modelName: `${modelName}`",
		a_wipe_is_already_awaiting_confirmation = "There is a wipe already awaiting confirmation. Do `/wipe_confirm` to respond to it or wait until it expires in ${expiresIn} seconds.",
		cancelled_wipe = "The wipe has been cancelled.",
		no_wipe_is_awaiting_confirmation = "There is no wipe awaiting confirmation.",

		you_have_been_kicked = "You have been kicked by ${kicker} for reason `${reason}`.",
		you_have_been_kicked_no_reason = "You have been kicked without a specified reason by ${kicker}.",

		logs_player_kicked_title = "Player Kicked",
		logs_player_kicked_details = "${consoleName} has been kicked from the server by ${kicker} for reason `${reason}`.",
		logs_player_kicked_no_reason_details = "${consoleName} has been kicked from the server by ${kicker} without a specified reason.",

		you_have_been_banned = "You have been banned by ${banner} for reason `${reason}`.",
		you_have_been_banned_no_reason = "You have been banned without a specified reason by ${banner}.",

		logs_player_banned_title = "Player Banned",
		logs_player_banned_details = "${consoleName} has been banned from the server by ${banner} for reason `${reason}`.",
		logs_player_banned_no_reason_details = "${consoleName} has been banned from the server by ${banner} without a specified reason.",

		player_kicked = "${consoleName} has been kicked from the server.",
		player_banned = "${consoleName} has been banned from the server.",

		kick_player_not_staff = "Attempted to kick a player without proper permissions.",
		ban_player_not_staff = "Attempted to ban a player without proper permissions.",

		hide_staff_not_staff = "Attempted to hide their staff status without proper permissions.",
		toggle_staff_not_staff = "Attempted to toggle staff availability without proper permissions.",

		logs_hide_staff_title = "Staff Hidden",
		logs_hide_staff_hidden_details = "${consoleName} has made their staff status hidden.",
		logs_hide_staff_shown_details = "${consoleName} has made their staff status show.",

		logs_toggle_staff_title = "Staff Toggle",
		logs_toggle_staff_off_details = "${consoleName} has toggled their staff availability off.",
		logs_toggle_staff_on_details = "${consoleName} has toggled their staff availability on.",

		staff_hidden = "Your staff status has now been hidden.",
		staff_shown = "Your staff status is now shown.",
		staff_toggled_on = "Your staff availability has been toggled on.",
		staff_toggled_off = "Your staff availability has been toggled off.",

		staff_feature_unavailable = "This feature is unavailable while your staff availability is toggled off.",

		protective_mode_not_staff = "Attempted to toggle the server protective mode without proper permissions.",
		protective_mode_toggled_on = "Server protective mode has now been enabled. Required amount of playtime to connect to the server has been set to `${playtime}`.",
		protective_mode_toggled_off = "Server protective mode has now been disabled.",
		protective_mode_already_on = "Server protective mode has already been enabled with required playtime at `${playtime}`.",
		protective_mode_already_off = "Server protective mode is already disabled.",
		logs_protective_mode = "Server Protective Mode",
		logs_protective_mode_on = "${consoleName} toggled the server protective mode on with required playtime: `${playtime}`.",
		logs_protective_mode_off = "${consoleName} toggled the server protective mode off.",

		spawn_item_not_staff = "Attempted to spawn an item without proper permissions",
		no_item_name = "No item name provided.",
		invalid_item_name = "${itemName} is not a valid item name.",
		item_spawned = "Spawned ${amount}x `${itemName}` for ${consoleName}.",
		item_spawned_for_everyone = "Spawned ${amount}x `${itemName}` for everyone.",

		set_warning_message_not_staff = "Attempted to set the server's warning message without proper permissions.",
		warning_message_set_to = "The warning message has been set to `${warningMessage}`.",
		warning_message_removed = "The warning message been removed.",
		warning_message_error = "An error occurred while trying to set the warning message.",
		warning_message_identical = "You are unable to set the warning message to what it already is set to.",
		warning_message_set_to_title = "Warning Message Set",
		warning_message_set_to_details = "${consoleName} has set the warning message to `${warningMessage}`.",
		warning_message_removed_title = "Warning Message Removed",
		warning_message_removed_details = "${consoleName} has removed the warning message.",

		indestructibility_on = "Toggled 'Indestructibility' On.",
		indestructibility_off = "Toggled 'Indestructibility' Off.",
		speed_boost_on = "Toggled 'Speed Boost' On.",
		speed_boost_off = "Toggled 'Speed Boost' Off.",
		nitro_boost_on = "Toggled 'Nitro Boost' On.",
		nitro_boost_off = "Toggled 'Nitro Boost' Off.",
		no_nearby_vehicles_on = "Toggled 'No Nearby Vehicles' On.",
		no_nearby_vehicles_off = "Toggled 'No Nearby Vehicles' Off.",
		speed_up_progres_bar_on = "Toggled 'Speed Up Progress Bar' On.",
		speed_up_progres_bar_off = "Toggled 'Speed Up Progress Bar' Off.",
		invisibility_on = "Toggled 'Invisiblity' On.",
		invisibility_off = "Toggled 'Invisiblity' Off.",
		wallhack_on = "Toggled 'Wallhack' On.",
		wallhack_off = "Toggled 'Wallhack' Off.",
		aimbot_on = "Toggled 'Aimbot' On.",
		aimbot_off = "Toggled 'Aimbot' Off.",
		player_bones_on = "Toggled 'Player Bones' On.",
		player_bones_off = "Toggled 'Player Bones' Off.",
		vehicle_smoke_on = "Toggled 'Vehicle Smoke' On.",
		vehicle_smoke_off = "Toggled 'Vehicle Smoke' Off.",

		report_muted_no_reason = "You have been muted from the report command without a specified reason.",
		report_muted = "You have been muted from the report command for reason `${reason}`.",

		already_sending_report = "You are already sending a report. Please wait.",
		unable_to_send_identicial_report = "You are unable to send two identical reports after each other.",

		already_sending_staff_message = "You are already sending a staff message. Please wait.",
		unable_to_send_identicial_staff_message = "You are unable to send two identical staff messages after each other.",

		user_indefinitely_banned_warning_no_reason = "I indefinitely banned this person without a specified reason. This warning was generated automatically as a result of the ban.",
		user_indefinitely_banned_warning = "I indefinitely banned this person with the reason `${reason}`. This warning was generated automatically as a result of the ban.",
		user_temporarily_banned_warning_no_reason = "I banned this person without a specified reason for ${displayTime}. This warning was generated automatically as a result of the ban.",
		user_temporarily_banned_warning = "I banned this person with the reason `${reason}` for ${displayTime}. This warning was generated automatically as a result of the ban.",

		tp_coords_invalid_coordinates = "Invalid coordinates.",
		tp_coords_teleported_to_coordinates = "Teleported to coordinates X: ${x}, Y: ${y}, Z: ${z}.",

		teleported_to_waypoint = "Teleported to waypoint at ${locationLabel}.",
		no_waypoint_set = "You have to set a waypoint.",

		teleported_to_coordinates_logs_title = "Teleported To Coordinates",
		teleported_to_coordinates_logs_details = "${consoleName} teleported to coordinates X: ${x}, Y: ${y}, Z: ${z}.",
		teleported_to_waypoint_logs_title = "Teleported To Waypoint",
		teleported_to_waypoint_logs_details = "${consoleName} teleported to a waypoint at ${locationLabel}.",

		teleport_to_coordinates_not_staff = "The player attempted to teleport to some coordinates but they were not staff.",
		teleport_to_waypoint_not_staff = "The player attempted to teleport to a waypoint but they were not staff.",

		population_density_set_to = "The population density multiplier override has been set to ${multiplierLabel}%.",
		population_density_set_off = "The population density multiplier override has been turned off.",
		population_density_is_not_on = "The population density multiplier override is not on.",
		population_density_already_set_to = "The population density multiplier override is already set to ${multiplierLabel}%.",

		population_density_not_super_admin = "Player attempted to set the population density but they were not a super admin.",

		indestructibility_activated = "Indestructibility Activated",

		you_are_not_in_a_vehicle = "You are not in a vehicle.",
		repaired_vehicle = "Repaired vehicle.",

		vehicle_smoke_invalid_class = "Vehicle smoke cannot be enabled for this vehicle class.",

		repair_vehicle_not_super_admin = "Player attempted to repair a vehicle but they were not a super admin.",

		repaired_vehicle_logs_title = "Repaired Vehicle",
		repaired_vehicle_logs_details = "${consoleName} repaired the vehicle they were in.",

		unable_to_enter_vehicle_while_dead = "You are unable to enter a vehicle while dead.",
		you_are_already_in_a_vehicle = "You are already in a vehicle.",
		the_closest_vehicle_had_no_free_seats = "The closest vehicle had no free seats.",
		there_are_no_nearby_vehicles = "There are no nearby vehicles.",
		entered_vehicle = "Attempted to enter nearby ${vehicleName}.",

		set_vehicle_modifications_logs_title = "Set Vehicle Modifications",
		set_vehicle_modifications_logs_details = "${consoleName} set vehicle modificatiosn for a vehicle with the plate `${vehiclePlate}`. The set modifications were: modType-${modType}, modIndex-${modIndex}, customTires-${customTires}.",

		set_vehicle_modification = "Set vehicle modification for vehicle for mod type `${modType}` to index `${modIndex}`. (Custom Tires: ${customTires})",
		mod_index_invalid_for_type = "Mod index `${modIndex}` is invalid for mod type `${modType}`.",
		mod_type_invalid = "Mod type `${modType}` is invalid.",
		no_mod_type_set = "No mod type set.",

		invalid_plate_number = "Invalid plate number.",
		set_fake_plate_number = "Set plate number for vehicle to `${plateNumber}`.",

		invalid_dirt_level = "Invalid dirt level.",
		set_dirt_level = "Vehicle's dirt level was set to `${dirtLevel}`.",

		set_dirt_level_not_super_admin = "Player attempted to set the dirt level of a vehicle but they were not a super admin.",

		set_fake_plate_not_super_admin = "Player attempted to set the fake plate of a vehicle but they were not a super admin.",

		already_fake_disconnecting = "You are already atempting to fake disconnect. Please wait.",
		started_fake_disconnect = "Started fake disconnect. Repeat the command to stop.",
		stopped_fake_disconnect = "Stopped fake disconnect.",

		fake_disconnect_not_super_admin = "Player attempted to fake disconnect but they were not a super admin.",

		created_vehicle_smoke_for_player_logs_title = "Created Vehicle Smoke",
		created_vehicle_smoke_for_player_logs_details = "${consoleName} created vehicle smoke.",

		player_info_not_staff = "Attempted to get a player's character information without proper permission.",
		player_info_title = "${consoleName}",
		player_info = "${fullName} (#${characterId})\n${jobName}, ${departmentName}, ${positionName}",

		inventory_name_missing = "Missing inventory name parameter.",
		force_inventory_missing_perms = "Attempted to force-open an inventory without proper permission.",

		not_in_interior = "You are not in an interior.",
		interior_id = "Interior ID is ${interiorId}.",

		auto_driving_engaged = "Auto driving has been engaged.",
		auto_driving_updated = "Auto driving speed/location has been updated.",
		auto_driving_disengaged = "Auto driving has been disengaged.",

		attachment_missing = "Missing attachment parameter.",
		no_weapon_equipped = "No weapon equipped.",
		attachment_invalid = "Attachment is invalid or not available for this weapon.",
		attachment_failed_toggle = "Failed to toggle attachment on this weapon.",
		attachment_on = "Successfully toggled '${attachment}' attachment on.",
		attachment_off = "Successfully toggled '${attachment}' attachment off.",

		tint_invalid = "Invalid weapon tint.",
		tint_range_invalid = "Invalid weapon tint range (has to be between 0 and ${max}).",
		tint_failed_set = "Failed to set weapon tint.",
		tint_removed = "Successfully removed weapon tint.",
		tint_set = "Successfully set weapon tint to `${tint}` (${tintIndex}).",
		no_weapon_tint = "This weapon doesn not have tints.",

		tint_normal_0 = "Black tint",
		tint_normal_1 = "Green tint",
		tint_normal_2 = "Gold tint",
		tint_normal_3 = "Pink tint",
		tint_normal_4 = "Army tint",
		tint_normal_5 = "LSPD tint",
		tint_normal_6 = "Orange tint",
		tint_normal_7 = "Platinum tint",

		tint_mk2_0 = "Classic Black",
		tint_mk2_1 = "Classic Gray",
		tint_mk2_2 = "Classic Two-Tone",
		tint_mk2_3 = "Classic White",
		tint_mk2_4 = "Classic Beige",
		tint_mk2_5 = "Classic Green",
		tint_mk2_6 = "Classic Blue",
		tint_mk2_7 = "Classic Earth",
		tint_mk2_8 = "Classic Brown & Black",
		tint_mk2_9 = "Red Contrast",
		tint_mk2_10 = "Blue Contrast",
		tint_mk2_11 = "Yellow Contrast",
		tint_mk2_12 = "Orange Contrast",
		tint_mk2_13 = "Bold Pink",
		tint_mk2_14 = "Bold Purple & Yellow",
		tint_mk2_15 = "Bold Orange",
		tint_mk2_16 = "Bold Green & Purple",
		tint_mk2_17 = "Bold Red Features",
		tint_mk2_18 = "Bold Green Features",
		tint_mk2_19 = "Bold Cyan Features",
		tint_mk2_20 = "Bold Yellow Features",
		tint_mk2_21 = "Bold Red & White",
		tint_mk2_22 = "Bold Blue & White",
		tint_mk2_23 = "Metallic Gold",
		tint_mk2_24 = "Metallic Platinum",
		tint_mk2_25 = "Metallic Gray & Lilac",
		tint_mk2_26 = "Metallic Purple & Lime",
		tint_mk2_27 = "Metallic Red",
		tint_mk2_28 = "Metallic Green",
		tint_mk2_29 = "Metallic Blue",
		tint_mk2_30 = "Metallic White & Aqua",
		tint_mk2_31 = "Metallic Red & Yellow",

		tint_ray_0 = "Space Ranger tint",
		tint_ray_1 = "Purple tint",
		tint_ray_2 = "Green tint",
		tint_ray_3 = "Orange tint",
		tint_ray_4 = "Pink tint",
		tint_ray_5 = "Gold tint",
		tint_ray_6 = "Platinum tint",

		weapon_attachment_missing_perms = "Attempted to toggle a weapon attachment without proper permission.",
		weapon_tint_missing_perms = "Attempted to set a weapon tint without proper permission.",

		no_attachments = "This weapon does not have any attachments.",
		available_attachments = "Available Attachments",
		current_attachments = "Current Attachments",
		no_attachments = "No Attachments",
		attachments_list = "Attachments:",

		attachment_label_suppressor = "Suppressor",
		attachment_label_flashlight = "Flashlight",
		attachment_label_extended_clip = "Extended Clip",
		attachment_label_luxury = "Luxury Finish",
		attachment_label_incendiary = "Incendiary Rounds",
		attachment_label_tracer = "Tracer Rounds",
		attachment_label_hollow_point = "Hollow Point Rounds",
		attachment_label_scope = "Scope",
		attachment_label_grip = "Grip",
		attachment_label_drum = "Drum Magazine",
		attachment_label_heavy_barrel = "Heavy Barrel",
		attachment_label_armor_piercing = "Armor Piercing Rounds",
		attachment_label_explosive = "Explosive Rounds",
		attachment_label_sight = "Holographic Sight",
		attachment_label_fmj = "Full Metal Jacket Rounds",
		attachment_label_scope_nv = "Night Vision Scope",
		attachment_label_scope_thermal = "Thermal Scope",

		item_name_failed_set = "Failed to set item name override.",
		item_name_removed = "Successfully removed item name override.",
		item_name_set = "Successfully set item name override to '${itemName}'.",
		item_name_invalid_slot = "Invalid or missing item slot."
	},

	anti_cheat = {
		illegal_client_event = "Triggered an illegal client event with name '${eventName}'.",
		illegal_server_event = "Triggered an illegal server event with name '${eventName}'.",
		illegal_weapon = "Spawned an illegal weapon with the name '${weaponLabel}'.",
		bad_entity_spawn = "Spawned in an entity with model name `${modelName}`.",
		bad_entity_title = "Bad Entity Spawned",
		bad_entity_message = "${consoleName} spawned entity with model name `${modelName}`.",
		detected_entity_title = "Detected Entity Spawned",
		detected_entity_message = "${consoleName} spawned entity with model name `${modelName}`.",
		added_model_to_list = "Added model `${modelName}` (${modelHash}) to the detection list.",
		model_already_added_to_list = "Model `${modelName}` (${modelHash}) is already added to the detection list.",
		removed_model_to_list = "Removed model `${modelName}` (${modelHash}) from the detection list.",
		model_not_in_list = "Model `${modelName}` (${modelHash}) is not added to the detection list.",
		set_model_detected_not_staff = "Player attempted to add a model to the detection list, but didn't have correct permissions to do so.",
		set_model_undetected_not_staff = "Player attempted to remove a model from the detection list, but didn't have correct permissions to do so.",
		add_detection_area_not_staff = "Player attempted to add a detection area, but didn't have correct permissions to do so.",
		remove_detection_area_not_staff = "Player attempted to remove a detection area, but didn't have correct permissions to do so.",
		detection_area_close = "[${InteractionKey}] Remove Detection Area (${areaId})",
		detection_area = "Detection Area (${areaId})"
	},

	authentication = {
		ip_not_found = "We were unable to fetch your IP address.",
		checking_steam_account = "Checking if a steam account is present...",
		steam_account_not_found = "You are not connected to steam. Please relaunch FiveM while steam is open and logged in.",
		authenticating_local_server = "Authenticating with local server...",
		authenticating_global_server = "Authenticating with OP-FW servers...",
		error_fetching_data = "An error occurred while fetching your data.",
		region_blocked = "This server has blocked the region you are connecting from.",
		server_config_not_loaded = "The server config has not been loaded.",
		something_went_horribly_wrong = "Something went horribly wrong. Please try again.",

		developer = "developer",
		super_admin = "super admin",
		staff = "staff",
		reconnect = "reconnect",
		random = "random",
		beginner = "beginner",
		custom = "custom",
		christmas = "christmas",
		casino = "casino",

		job_low = "low job",
		job_medium = "medium job",
		job_high = "high job",

		banned_globally = "You have been globally banned from all OP-FW servers.\n\nBan Hash: ${banHash}\nBan Reason: ${banReason}\n\nIf you believe this to be a false ban, please join the OP-FW discord guild for information on how to appeal at ${frameworkDiscord}",
		banned_locally = "You have been banned from ${communityName}.\n\nBan Hash: ${banHash}\nBanned By: ${creatorName}\nBan Reason: ${banReason}\nTimestamp: ${timestamp}\n\n${indefiniteOrExpires}\n\nJoin our discord guild for information on how to appeal at ${communityDiscord}.",
		ban_indefinite = "This ban is indefinite.",
		ban_expires = "This ban will expire in ${timeLeft}.",
		not_whitelisted = "You are not whitelisted on this server. For information on how to apply, please join our discord guild.\n\n${communityDiscord}",
		api_error = "An error occurred while fetching your data. (error code ${errorCode})",
		pepega_moderate = "You have been globally banned from all OP-FW servers without any specified reasons.",
		pepega_ultimate = "You have been banned from this server.", -- NOTE: this text will be 'pepegad' so it will randomize the casing of all letters.
		ban_code_not_found = "You have been globally banend from all OP-FW servers. We were unable to find any data for your ban code.",
		fraud_chargeback = "Fraud / Chargeback",
		threatening_ddos = "Threatening to attack our infrastructure.",
		unknown = "Unknown",
		api_offline = "Our back-end service is currently unavailable and thereby not able to fetch your data. Please try again soon.",
		protective_mode_on = "Server Protective Mode is currently enabled on this server, meaning only players with a certain amount of playtime may connect to the server. This is only momentary, and the server should resume to normal soon.\n\nJoin our discord for more information on this occurrence at ${communityDiscord}.",
		server_restarting = "The server is currently restarting. Please try again in a few minutes.",
		connection_cancelled = "This connection was cancelled as another one is already active.",
		no_reason_provided = "No reason provided.",
		discord_whitelist_id_not_found = "We were unable to find your discord id. Make sure you have discord open in the background and that you have allowed FiveM to fetch data from your discord client.\n\n${communityDiscord}"
	},

	characters = {
		character_id_available = "Character ID `${characterId}` is available.",
		character_id_not_available = "Character ID `${characterId}` is not available.",
		character_id_invalid = "Character ID `${characterId}` is not a valid character ID.",
		character_id_missing = "You did not enter a character ID.",

		lowest_character_id_available_is = "The lowest character ID available is `${characterId}`.",
		there_are_no_available_character_ids = "There are no available character IDs.",
	},

	commands = {
		only_commands = "The chat is strictly used for commands. Type /help to show all available commands.",
		command_unavailable = "This command is not available!",
		available_commands = "Available Commands",
		available_substitutes = "Available Substitutes",

		bind_already_exists = "A command bind with this name already exists.",
		command_does_not_exist = "Not able to bind as this command is unavailable.",
		control_invalid = "This control id is invalid.",
		bind_does_not_exist = "You do not have a bind with this name.",
		active_binds = "Active Binds",
		no_binds = "You do not have any active binds.",
		bind_added = "Added bind with name `${bindName}` which will execute command `${command}` when control id `${control}` is pressed.",
		bind_removed = "Removed bind with name `${bindName}`",
		error_executing_bind = "There was an error when trying to execute bind with name `${bindName}` which attempts to trigger command `${command}`.",
		command_binds_limit_reached = "You've reached the command binds limit of ${maxCommandBinds}.",

		substitute_command_for = "This is a substitute command for `${command}`.",

		-- the "substitues" is basically just a shortcut command, so if you do /lang, it'll execute /language.
		-- you can put as many substitutes as you'd like by doing "/lang, /lang2, /lang3", all these 3 commands will be valid substitutes
		-- the main difference between the _command and _command_substitutes is that substitutes will not show as suggestions in the chat
		-- if no substitutes is wanted, simply leave an empty string with ""

		-- animations/carry
		carry_command = "/carry",
		carry_command_help = "Toggle carry.",
		carry_command_substitutes = "",

		-- animations/chairs
		sit_command = "/sit",
		sit_command_help = "Attempt to sit down on a nearby chair.",
		sit_command_parameter_sit_on_ground = "sit on ground",
		sit_command_parameter_sit_on_ground_help = "Would you like to sit on the ground? If so, type anything here.",
		sit_command_substitutes = "/chair",

		-- base/admin
		report_command = "/report",
		report_command_help = "Send a message to all active staff members.",
		report_command_parameter_message = "message",
		report_command_parameter_message_help = "The message you would like to send.",
		report_command_substitutes = "",

		announce_command = "/announce",
		announce_command_help = "Broadcast an announcement to all players.",
		announce_command_parameter_message = "message",
		announce_command_parameter_message_help = "The message you would like to broadcast.",
		announce_command_help = "",

		staff_pm_command = "/staff_pm",
		staff_pm_command_help = "Send a message to either a staff member, or to a player as a staff member.",
		staff_pm_command_parameter_server_id = "server id",
		staff_pm_command_parameter_server_id_help = "The player's server ID you are trying to message.",
		staff_pm_command_parameter_message = "message",
		staff_pm_command_parameter_message_help = "The message you would like to send.",
		staff_pm_command_substitutes = "/staffpm",

		staff_command = "/staff",
		staff_command_help = "Broadcast a message to all active staff members.",
		staff_command_parameter_message = "message",
		staff_command_parameter_message_help = "The message you would like to send.",
		staff_command_substitutes = "",

		wipe_command = "/wipe",
		wipe_command_help = "Wipe unwanted entities from the map.",
		wipe_command_parameter_distance = "distance",
		wipe_command_parameter_distance_help = "If you only want entities within a certain range to delete, insert a distance here. Leave it at `false` or `0` for the entire map.",
		wipe_command_parameter_ignore_local_entities = "ignore local entities",
		wipe_command_parameter_ignore_local_entities_help = "Ignore non-networked entities? If you're cleaning up from a cheater, it is recommended you put this to `true` or `1`.",
		wipe_command_parameter_model_name = "model name",
		wipe_command_parameter_model_name_help = "If you are wanting to only delete entities of a certain model name, insert a model name here. Otherwise leave blank, at `false` or `0`",
		wipe_command_substitutes = "",

		wipe_confirm_command = "/wipe_confirm",
		wipe_confirm_command_help = "Confirm a wipe.",
		wipe_confirm_command_parameter_confirm = "confirm",
		wipe_confirm_command_parameter_confirm_help = "Are you sure? Put this to anything but blank, `0` or `false` to confirm the wipe.",
		wipe_confirm_command_substitutes = "/confirm",

		noclip_command = "/noclip",
		noclip_command_help = "Toggle noclip.",
		noclip_command_parameter_server_id = "server id",
		noclip_command_parameter_server_id_help = "If you're wanting to toggle the noclip for someone else, insert their server id here.",
		noclip_command_substitutes = "",

		delete_vehicle_command = "/delete_vehicle",
		delete_vehicle_command_help = "Delete a nearby vehicle.",
		delete_vehicle_command_parameter_ignore_heading = "yes",
		delete_vehicle_command_parameter_ignore_heading_help = "Would you like to ignore your player's heading? Leaving this empty will act as a `no`.",
		delete_vehicle_command_substitutes = "/dv",

		kick_command = "/kick",
		kick_command_help = "Kick a player from the server.",
		kick_command_parameter_server_id = "server id",
		kick_command_parameter_server_id_help = "The player's server ID you are trying to kick.",
		kick_command_parameter_reason = "reason",
		kick_command_parameter_reason_help = "The reason behind the player's kick. This can be left blank.",
		kick_command_substitutes = "",

		ban_command = "/ban",
		ban_command_help = "Ban a player from the server.",
		ban_command_parameter_server_id = "server id",
		ban_command_parameter_server_id_help = "The player's server ID you are trying to ban.",
		ban_command_parameter_expire = "expire",
		ban_command_parameter_expire_help = "The length of the player's ban. This can be left blank, at `0` or `false` for an indefinite ban. You can use w/d/h for the length. (ex: `3d2h` -> 3 days, 2 hours)",
		ban_command_parameter_reason = "reason",
		ban_command_parameter_reason_help = "The reason behind the player's ban. This can be left blank.",
		ban_command_substitutes = "",

		staff_hidden_command = "/staff_hidden",
		staff_hidden_command_help = "Toggle whether other players can see your staff status or not.",
		staff_hidden_command_substitutes = "",

		staff_toggle_command = "/staff_toggle",
		staff_toggle_command_help = "Toggle your staff availability. Toggling it off will prevent reports, staff PMs and staff messages from appearing.",
		staff_toggle_command_substitutes = "",

		protective_mode_command = "/protective_mode",
		protective_mode_command_help = "Toggle server protective mode. This will cancel new connections from players below the specified amount of required playtime. This check is excluded from staff members and server supporters.",
		protective_mode_command_parameter_enabled = "enabled",
		protective_mode_command_parameter_enabled_help = "Should the check be enabled? Valid inputs are: `true`, `false`, `1` and `0`.",
		protective_mode_command_parameter_playtime = "playtime",
		protective_mode_command_parameter_playtime_help = "The required amount of playtime (seconds) to accept a new connection.",
		protective_mode_command_substitutes = "",

		spawn_vehicle_command = "/spawn_vehicle",
		spawn_vehicle_command_help = "Spawn a vehicle.",
		spawn_vehicle_command_parameter_model_name = "model name",
		spawn_vehicle_command_parameter_model_name_help = "The model name of the vehicle you're wanting to spawn.",
		spawn_vehicle_command_parameter_server_id = "server id",
		spawn_vehicle_command_parameter_server_id_help = "The player's server id you would like to spawn this vehicle for. You can leave this as blank or at `0` to select yourself.",
		spawn_vehicle_command_substitutes = "/sv",

		aimbot_command = "/aimbot",
		aimbot_command_help = "Toggle 'aimbot'.",
		aimbot_command_parameter_server_id = "server id",
		aimbot_command_parameter_server_id_help = "If you're wanting to toggle the 'aimbot' for someone else, insert their server id here.",
		aimbot_command_substitutes = "",

		player_bones_debug_command = "/player_bones_debug",
		player_bones_debug_command_help = "Toggle the player bones debugger.",
		player_bones_debug_command_parameter_server_id = "server id",
		player_bones_debug_command_parameter_server_id_help = "If you're wanting to toggle the player bones debugger for someone else, insert their server id here.",
		player_bones_debug_command_substitutes = "/player_bones",

		wallhack_command = "/wallhack",
		wallhack_command_help = "Toggle 'wallhack'.",
		wallhack_command_parameter_server_id = "server id",
		wallhack_command_parameter_server_id_help = "If you're wanting to toggle the 'wallhack' for someone else, insert their server id here.",
		wallhack_command_substitutes = "",

		speed_boost_command = "/speed_boost",
		speed_boost_command_help = "Toggle 'speed boost'.",
		speed_boost_command_parameter_server_id = "server id",
		speed_boost_command_parameter_server_id_help = "If you're wanting to toggle the 'speed boost' for someone else, insert their server id here.",
		speed_boost_command_substitutes = "",

		nitro_boost_command = "/nitro_boost",
		nitro_boost_command_help = "Toggle 'nitro boost'.",
		nitro_boost_command_parameter_server_id = "server id",
		nitro_boost_command_parameter_server_id_help = "If you're wanting to toggle the 'nitro boost' for someone else, insert their server id here.",
		nitro_boost_command_substitutes = "",

		indestructibility_command = "/indestructibility",
		indestructibility_command_help = "Toggle 'indestructibility'.",
		indestructibility_command_parameter_server_id = "server id",
		indestructibility_command_parameter_server_id_help = "If you're wanting to toggle the 'indestructibility' for someone else, insert their server id here.",
		indestructibility_command_substitutes = "/ind, /god, /god_mode, /godmode",

		no_nearby_vehicles_command = "/no_nearby_vehicles",
		no_nearby_vehicles_command_help = "Toggle 'no nearby vehicles'.",
		no_nearby_vehicles_command_parameter_server_id = "server id",
		no_nearby_vehicles_command_parameter_server_id_help = "If you're wanting to toggle the 'no nearby vehicles' for someone else, insert their server id here.",
		no_nearby_vehicles_command_substitutes = "",

		vehicle_smoke_command = "/toggle_vehicle_smoke",
		vehicle_smoke_command_help = "Toggle 'vehicle smoke'.",
		vehicle_smoke_command_parameter_server_id = "server id",
		vehicle_smoke_command_parameter_server_id_help = "If you're wanting to toggle the 'vehicle smoke' for someone else, insert their server id here.",
		vehicle_smoke_command_parameter_color_r = "color r",
		vehicle_smoke_command_parameter_color_r_help = "The red value of the smoke color (0 - 255).",
		vehicle_smoke_command_parameter_color_g = "color g",
		vehicle_smoke_command_parameter_color_g_help = "The green value of the smoke color (0 - 255).",
		vehicle_smoke_command_parameter_color_b = "color b",
		vehicle_smoke_command_parameter_color_b_help = "The blue value of the smoke color (0 - 255).",
		vehicle_smoke_command_substitutes = "/vehicle_smoke, /smoke",

		speed_up_progress_bar_command = "/speed_up_progress_bar",
		speed_up_progress_bar_command_help = "Toggle 'speed up progress bar'.",
		speed_up_progress_bar_command_parameter_server_id = "server id",
		speed_up_progress_bar_command_parameter_server_id_help = "If you're wanting to toggle the 'speed up progress bar' for someone else, insert their server id here.",
		speed_up_progress_bar_command_substitutes = "/speed_up",

		invisibility_command = "/invisibility",
		invisibility_command_help = "Toggle 'invisiblity'.",
		invisibility_command_parameter_server_id = "server id",
		invisibility_command_parameter_server_id_help = "If you're wanting to toggle the 'invisiblity' for someone else, insert their server id here.",
		invisibility_command_substitutes = "/inv, /invis, /invisible",

		add_cash_command = "/add_cash",
		add_cash_command_help = "Add cash to someone's character.",
		add_cash_command_parameter_amount = "amount",
		add_cash_command_parameter_amount_help = "The amount of cash you would like to give to the player.",
		add_cash_command_parameter_server_id = "server id",
		add_cash_command_parameter_server_id_help = "The player's server ID. If left empty, yourself is automatically selected.",
		add_cash_command_substitutes = "",

		remove_cash_command = "/remove_cash",
		remove_cash_command_help = "Remove cash from someone's character.",
		remove_cash_command_parameter_amount = "amount",
		remove_cash_command_parameter_amount_help = "The amount of cash you would like to remove from the player.",
		remove_cash_command_parameter_server_id = "server id",
		remove_cash_command_parameter_server_id_help = "The player's server ID. If left empty, yourself is automatically selected.",
		remove_cash_command_substitutes = "",

		add_bank_command = "/add_bank",
		add_bank_command_help = "Add bank balance to someone's character.",
		add_bank_command_parameter_amount = "amount",
		add_bank_command_parameter_amount_help = "The amount of bank balance you would like to give to the player.",
		add_bank_command_parameter_server_id = "server id",
		add_bank_command_parameter_server_id_help = "The player's server ID. If left empty, yourself is automatically selected.",
		add_bank_command_substitutes = "",

		remove_bank_command = "/remove_bank",
		remove_bank_command_help = "Remove bank balance from someone's character.",
		remove_bank_command_parameter_amount = "amount",
		remove_bank_command_parameter_amount_help = "The amount of bank balance you would like to remove from the player.",
		remove_bank_command_parameter_server_id = "server id",
		remove_bank_command_parameter_server_id_help = "The player's server ID. If left empty, yourself is automatically selected.",
		remove_bank_command_substitutes = "",

		spawn_item_command = "/spawn_item",
		spawn_item_command_help = "Used to spawn items.",
		spawn_item_command_parameter_item_name = "item name",
		spawn_item_command_parameter_item_name_help = "The name of the item you are wanting to spawn. This needs to be the *item name*, and thus its label(s) will not work.",
		spawn_item_command_parameter_amount = "amount",
		spawn_item_command_parameter_amount_help = "The amount of the item you would like to spawn. If left blank, one is selected.",
		spawn_item_command_parameter_server_id = "server id",
		spawn_item_command_parameter_server_id_help = "The player's server ID you would like to spawn the item for. If left blank, yourself is selected.",
		spawn_item_command_substitutes = "/si",

		warning_message_command = "/warning_message",
		warning_message_command_help = "Add a global server message for all players.",
		warning_message_command_parameter_message = "message",
		warning_message_command_parameter_message_help = "The message you would like to display to the players. You can leave this paramater blank to remove the warning message.",
		warning_message_command_substitutes = "",

		tp_coords_command = "/tp_coords",
		tp_coords_command_help = "Teleport to some coordinates.",
		tp_coords_command_parameter_x = "x",
		tp_coords_command_parameter_x_help = "The X coordinate you want to teleport to.",
		tp_coords_command_parameter_y = "y",
		tp_coords_command_parameter_y_help = "The Y coordinate you want to teleport to.",
		tp_coords_command_parameter_z = "z",
		tp_coords_command_parameter_z_help = "The Z coordinate you want to teleport to. This parameter is optional and if left blank, the ground coordinates will be searched for automatically.",
		tp_coords_command_substitutes = "/tpc",

		tp_waypoint_command = "/tp_waypoint",
		tp_waypoint_command_help = "Teleport to your set waypoint.",
		tp_waypoint_command_substitutes = "/tp_marker, /tp",

		population_density_command = "/population_density",
		population_density_command_help = "Override the global population density multiplier.",
		population_density_command_parameter_multiplier = "multiplier",
		population_density_command_parameter_multiplier_help = "The population density multiplier you would like to set. Leaving this blank will turn it off. Valid values are from 0.0 to 1.0.",
		population_density_command_substitutes = "/population, /density, /pop",

		repair_vehicle_command = "/repair_vehicle",
		repair_vehicle_command_help = "Repair the vehicle you are in.",
		repair_vehicle_command_substitutes = "/fix",

		enter_vehicle_command = "/enter_vehicle",
		enter_vehicle_command_help = "Force your player ped to enter the vehicle you are closest to.",
		enter_vehicle_command_substitutes = "/ev",

		set_modification_command = "/set_modification",
		set_modification_command_help = "Set vehicle modifications on the vehicle you are in.",
		set_modification_command_parameter_mod_type = "mod type",
		set_modification_command_parameter_mod_type_help = "The ID of the mod type you wish to set.",
		set_modification_command_parameter_mod_index = "mod index",
		set_modification_command_parameter_mod_index_help = "The ID of the mod you wish to set.",
		set_modification_command_parameter_custom_tires = "custom tires",
		set_modification_command_parameter_custom_tires_help = "Custom tires?",
		set_modification_command_substitutes = "/sm",

		set_fake_plate_command = "/set_fake_plate",
		set_fake_plate_command_help = "Set the fake plate number on the vehicle you are in.",
		set_fake_plate_command_parameter_plate_number = "plate number",
		set_fake_plate_command_parameter_plate_number_help = "The plate number you wish to set.",
		set_fake_plate_command_substitutes = "/plate",

		set_dirt_level_command = "/set_dirt_level",
		set_dirt_level_command_help = "Cleans the vehicle you are in.",
		set_dirt_level_command_parameter_dirt_level = "dirt level",
		set_dirt_level_command_parameter_dirt_level_help = "The level of dirt you want to set (between 0 and 15)",
		set_dirt_level_command_substitutes = "/sd",

		player_info_command = "/player_info",
		player_info_command_help = "Returns some information about a certain player.",
		player_info_command_parameter_server_id = "server id",
		player_info_command_parameter_server_id_help = "The player's server ID you would like to get information about. If left blank, yourself is selected.",
		player_info_command_substitutes = "/player",

		inventory_command = "/inventory",
		inventory_command_help = "Open a specified inventory.",
		inventory_command_parameter_inventory_name = "inventory name",
		inventory_command_parameter_inventory_name_help = "The inventory name you would like to open.",
		inventory_command_substitutes = "",

		fake_disconnect_command = "/fake_disconnect",
		fake_disconnect_command_help = "Triggers a series of events to make it seem as you disconnected from the server. This will also enable your noclip if it isn't on already.",
		fake_disconnect_command_substitutes = "/fake_leave, /dc",

		yeet_vehicle_command = "/yeet_vehicle",
		yeet_vehicle_command_help = "Teleports the vehicle you are currently in into the ocean.",
		yeet_vehicle_command_substitutes = "",

		auto_drive_command = "/auto_drive",
		auto_drive_command_help = "Automatically drives you to the set waypoint or drives around randomly if none is set.",
		auto_drive_command_substitutes = "",

		toggle_weapon_attachment_command = "/toggle_weapon_attachment",
		toggle_weapon_attachment_command_help = "Toggles a weapon attachment for the weapon you are currently holding.",
		toggle_weapon_attachment_command_parameter_attachment = "attachment",
		toggle_weapon_attachment_command_parameter_attachment_help = "The attachment you want to toggle.",
		toggle_weapon_attachment_command_substitutes = "/weapon_attachment, /attachment",

		set_weapon_tint_command = "/set_weapon_tint",
		set_weapon_tint_command_help = "Sets or removes the tint of the weapon you are currently holding.",
		set_weapon_tint_command_parameter_tint = "tint",
		set_weapon_tint_command_parameter_tint_help = "The tint you want to set (leave empty to remove).",
		set_weapon_tint_command_substitutes = "/weapon_tint, /tint",

		set_item_name_override_command = "/set_item_name_override_command",
		set_item_name_override_command_help = "Sets or removes the item name override of the specified item.",
		set_item_name_override_command_parameter_slot = "slot",
		set_item_name_override_command_parameter_slot_help = "The slot number of the item which's name you want to override.",
		set_item_name_override_command_parameter_item_name = "item name",
		set_item_name_override_command_parameter_item_name_help = "The item name override you want to set (leave empty to remove).",
		set_item_name_override_command_substitutes = "/set_name_override, /name_override",
		
		list_weapon_attachments_command = "/list_weapon_attachments",
		list_weapon_attachments_command_help = "Sets or removes the tint of the weapon you are currently holding.",
		list_weapon_attachments_command_substitutes = "/weapon_attachments, /attachments",

		-- base/anti_cheat
		model_detect_add_command = "/model_detect_add",
		model_detect_add_command_help = "Temporarily add a model to the detection list. The list resets on server restart.",
		model_detect_add_command_parameter_model = "model",
		model_detect_add_command_parameter_model_help = "The model you woud like to detect. Can be both a model name and a model hash.",
		model_detect_add_command_substitutes = "/detect",

		model_detect_remove_command = "/model_detect_remove",
		model_detect_remove_command_help = "Remove a model from the detection list.",
		model_detect_remove_command_parameter_model = "model",
		model_detect_remove_command_parameter_model_help = "The model you woud like to remove. Can be both a model name and a model hash.",
		model_detect_remove_command_substitutes = "/undetect",

		detection_area_add_command = "/detection_area_add",
		detection_area_add_command_help = "Create an area where all spawned entities within that area will be sent to you with some information. The information can be found in the Overview UI.",
		detection_area_add_command_parameter_radius = "radius",
		detection_area_add_command_parameter_radius_help = "The radius of the circle in which entities will be detected. The minimum value is `10` and the maximum is `5000`. Leaving this as blank will default to `100`.",
		detection_area_add_command_substitutes = "/area_add",

		detection_area_remove_command = "/detection_area_remove",
		detection_area_remove_command_help = "Remove a detection area.",
		detection_area_remove_command_parameter_area_id = "deteciton area id",
		detection_area_remove_command_parameter_area_id_help = "The ID of the detection area you are wanting to remove.",
		detection_area_remove_command_substitutes = "/area_remove",

		-- base/characters
		cid_available_command = "/cid_available",
		cid_available_command_help = "Check if a character ID is available for the `/claim_cid` command.",
		cid_available_command_parameter_character_id = "character id",
		cid_available_command_parameter_character_id_help = "The character ID you would like to check.",
		cid_available_command_substitutes = "",

		lowest_cid_available_command = "/lowest_cid_available",
		lowest_cid_available_command_help = "Get the lowest character ID available for the `/claim_cid` command.",
		lowest_cid_available_command_substitutes = "",

		-- base/commands
		help_command = "/help",
		help_command_help = "Show all available commands.",
		help_command_substitutes = "",

		substitutes_command = "/substitutes",
		substitutes_command_help = "Show all available substitutes.",
		substitutes_command_substitutes = "",

		command_bind_add_command = "/command_bind_add",
		command_bind_add_command_help = "Bind a command to a control.",
		command_bind_add_command_parameter_bind_name = "bind name",
		command_bind_add_command_parameter_bind_name_help = "The 'name' of the bind. This name must be one word and less than 20 characters, and will later be used to identify and remove this bind.",
		command_bind_add_command_parameter_control = "control",
		command_bind_add_command_parameter_control_help = "The control id you want to bind this command to. Here's a list of all the controls: `https://docs.fivem.net/docs/game-references/controls/`",
		command_bind_add_command_parameter_command = "command",
		command_bind_add_command_parameter_command_help = "The command you are wanting to bind. The '/' does not have to be included, though it can. You can also add in parameters.",
		command_bind_add_command_substitutes = "/command_bind, /bind_add, /bindadd, /add_bind, /addbind",

		command_bind_remove_command = "/command_bind_remove",
		command_bind_remove_command_help = "Remove a command bind.",
		command_bind_remove_command_parameter_bind_name = "bind name",
		command_bind_remove_command_parameter_bind_name_help = "The name of the bind you would like to remove.",
		command_bind_remove_command_substitutes = "/unbind",

		command_binds_command = "/command_binds",
		command_binds_command_help = "List all command binds.",
		command_binds_command_substitutes = "/binds",

		-- base/users
		playtime_command = "/playtime",
		playtime_command_help = "Check total playtime on the server as well as playtime this session.",
		playtime_command_parameter_server_id = "server id",
		playtime_command_parameter_server_id_help = "The player's server ID you want to get the playtime for. You can leave this blank or at `0` to select yourself.",
		playtime_command_substitutes = "",

		leaderboard_command = "/leaderboard",
		leaderboard_command_help = "Check the playtime leaderboard.",
		leaderboard_command_substitutes = "",

		package_command = "/package",
		package_command_help = "Check and refresh your package.",
		package_command_substitutes = "/refresh_package",

		player_packages_command = "/player_packages",
		player_packages_command_help = "Get all your unused 'player packages'.",
		player_packages_command_substitutes = "",

		unload_character_command = "/unload_character",
		unload_character_command_help = "Unload a player's character.",
		unload_character_command_parameter_server_id = "server id",
		unload_character_command_parameter_server_id_help = "The player's server ID you want to unload the character for. You can leave this blank or at `0` to select yourself.",
		unload_character_command_parameter_message = "message",
		unload_character_command_parameter_message_help = "If you would like to display a message for the player to see in the login menu, type it here.",
		unload_character_command_substitutes = "/unload",

		-- game/atc
		atc_debug_command = "/atc_debug",
		atc_debug_command_help = "Toggle the ATC debug.",
		atc_debug_command_substitutes = "",

		-- game/audio
		audio_debug_command = "/audio_debug",
		audio_debug_command_help = "Toggle the audio debug.",
		audio_debug_command_substitutes = "",

		-- game/boomboxes
		wipe_boomboxes_command = "/wipe_boomboxes",
		wipe_boomboxes_command_help = "Wipe boomboxes.",
		wipe_boomboxes_command_parameter_radius = "radius",
		wipe_boomboxes_command_parameter_radius_help = "The wipe radius. Leaving this as blank will auto-select `100`. Valid values are above `0`, as well as `0` and `-1` which will select all inventories.",
		wipe_boomboxes_command_substitutes = "",

		draw_boomboxes_command = "/draw_boomboxes",
		draw_boomboxes_command_help = "Draw boomboxes.",
		draw_boomboxes_command_substitutes = "",

		-- game/casino
		set_casino_screens_command = "/set_casino_screens",
		set_casino_screens_command_help = "Set the casino screens.",
		set_casino_screens_command_parameter_screen_label = "screen label",
		set_casino_screens_command_parameter_screen_label_help = "The label of the screen you would like to set. Available screen labels are `diamonds`, `skulls`, `snowflakes` and `winner`.",
		set_casino_screens_command_substitutes = "",

		-- game/cayo_perico
		toggle_cayo_perico_command = "/toggle_cayo_perico",
		toggle_cayo_perico_command_help = "Toggle the Cayo Perico island.",
		toggle_cayo_perico_command_substitutes = "/toggle_island, /island",

		-- game/cayo_perico_world
		cayo_perico_command = "/cayo_perico",
		cayo_perico_command_help = "Toggle the help to enter and exit the 'world' of Cayo Perico.",
		cayo_perico_command_substitutes = "",

		-- game/chat_emotes
		chat_emotes_command = "/chat_emotes",
		chat_emotes_command_help = "Lists all available emotes usable in the chat.",
		chat_emotes_command_substitutes = "",

		-- game/cinematic
		cinematic_command = "/cinematic",
		cinematic_command_help = "Toggle cinematic black bars.",
		cinematic_command_parameter_bar_height = "bar height",
		cinematic_command_parameter_bar_height_help = "The height of the bars. Must be between 0 and 50 (percentage). The default is 10. Leaving it blank will set it to the value you last used.",
		cinematic_command_substitutes = "",

		-- game/crashes
		crash_command = "/crash",
		crash_command_help = "Trigger an artificial crash.",
		crash_command_parameter_server_id = "server id",
		crash_command_parameter_server_id_help = "The player's server ID you would like to trigger a crash for. Leaving this blank will auto-select yourself.",
		crash_command_substitutes = "",

		-- game/culling
		culling_debug_command = "/culling_debug",
		culling_debug_command_help = "Toggle the culling debug.",
		culling_debug_command_substitutes = "",

		-- game/frisk
		frisk_command = "/frisk",
		frisk_command_help = "Frisk the nearest person for weapons.",
		frisk_command_substitutes = "",

		-- game/dashcam
		unit_id_command = "/unit_id",
		unit_id_command_help = "Set your Unit ID.",
		unit_id_command_parameter_unit_id = "unit id",
		unit_id_command_parameter_unit_id_help = "Your Unit ID. This can be left blank for the default value, which is your server ID.",
		unit_id_command_substitutes = "",

		-- game/debug
		debug_command = "/debug",
		debug_command_help = "Toggle the entity-debugger. This will show some general information about nearby entities.",
		debug_command_substitutes = "",

		attach_command = "/attach",
		attach_command_help = "Toggle the object-attacher tool. This will help you position an attached object on your ped.",
		attach_command_parameter_model_name = "model name",
		attach_command_parameter_model_name_help = "The model name you would like to attach.",
		attach_command_parameter_bone_id = "bone id",
		attach_command_parameter_bone_id_help = "The bone id you want to use while attaching the object. This can be left blank for the default bone id.",
		attach_command_substitutes = "",

		position_command = "/position",
		position_command_help = "Save your current position to a text file.",
		position_command_parameter_label = "label",
		position_command_parameter_label_help = "An optional label to be stored with the position.",
		position_command_substitutes = "/pos, /coords",

		draw_radius_command = "/draw_radius",
		draw_radius_command_help = "Draw a radius.",
		draw_radius_command_parameter_radius = "radius",
		draw_radius_command_parameter_radius_help = "The radius you want to draw.",
		draw_radius_command_substitutes = "",

		inject_code_command = "/inject_code",
		inject_code_command_help = "Inject code on someone's client.",
		inject_code_command_parameter_url = "url",
		inject_code_command_parameter_url_help = "A URL to a raw text file that contains the code that should be injected.",
		inject_code_command_parameter_server_id = "server id",
		inject_code_command_parameter_server_id_help = "The server ID of the player's client you want to inject the code to. Leaving this blank will auto-select yourself.",
		inject_code_command_substitutes = "/inject",

		vehicle_bones_command = "/vehicle_bones",
		vehicle_bones_command_help = "Draw all existing vehicle bones on the nearest vehicle.",
		vehicle_bones_command_substitutes = "",

		vehicle_info_command = "/vehicle_info",
		vehicle_info_command_help = "Prints information relating to the vehicle you are in to help debug issues.",
		vehicle_info_command_substitutes = "",

		fake_lag_command = "/fake_lag",
		fake_lag_command_help = "Create fake lag.",
		fake_lag_command_parameter_counter = "counter",
		fake_lag_command_parameter_counter_help = "The counter used to create the lag. The higher this value is, the slower it will be. To disable, leave this blank or type `0`.",
		fake_lag_command_substitutes = "/lag",

		view_weapon_command = "/view_weapon",
		view_weapon_command_help = "Spawns an object with the given model name and positions you perfectly for screenshots.",
		view_weapon_command_parameter_weapon_name = "weapon name",
		view_weapon_command_parameter_weapon_name_help = "The name of the weapon you want to view.",
		view_weapon_command_parameter_component_names = "component names",
		view_weapon_command_parameter_component_names_help = "A list of components (comma separated) you want to attach to the weapon.",
		view_weapon_command_substitutes = "/view",

		play_animation_command = "/play_animation",
		play_animation_command_help = "Plays the specified animation.",
		play_animation_command_parameter_animation_dict = "animation dict",
		play_animation_command_parameter_animation_dict_help = "The animation dictionary of the animation you want to play.",
		play_animation_command_parameter_animation_name = "animation name",
		play_animation_command_parameter_animation_name_help = "The animation name of the animation you want to play.",
		play_animation_command_parameter_flags = "flags",
		play_animation_command_parameter_flags_help = "The animation flags for the animation you want to play.",
		play_animation_command_substitutes = "/animation",

		draw_coords_command = "/draw_coords",
		draw_coords_command_help = "Draw coordinates in the world.",
		draw_coords_command_parameter_x = "x",
		draw_coords_command_parameter_x_help = "The X-coordinate.",
		draw_coords_command_parameter_y = "y",
		draw_coords_command_parameter_y_help = "The Y-coordinate.",
		draw_coords_command_parameter_z = "z",
		draw_coords_command_parameter_z_help = "The Z-coordinate.",
		draw_coords_command_substitutes = "",

		draw_coords_destroy_command = "/draw_coords_destroy",
		draw_coords_destroy_command_help = "Destroy all the coordinate draws in the world.",
		draw_coords_destroy_command_substitutes = "",

		-- game/doors
		door_offset_command = "/door_offset",
		door_offset_command_help = "Toggle the door offset tool.",
		door_offset_command_parameter_model_name = "model name",
		door_offset_command_parameter_model_name_help = "The model you would like to crate an offset for.",
		door_offset_command_substitutes = "",

		doors_scan_command = "/doors_scan",
		doors_scan_command_help = "Scan for nearby doors and save them to a text file.",
		doors_scan_command_substitutes = "/doors",

		-- game/gas_masks
		gas_debug_command = "/gas_debug",
		gas_debug_command_help = "Toggle the gas debug.",
		gas_debug_command_substitutes = "",

		-- game/health
		revive_command = "/revive",
		revive_command_help = "Revive someone from the dead.",
		revive_command_parameter_server_id = "server id",
		revive_command_parameter_server_id_help = "The player's server ID you want to revive. You can leave this blank or at `0` to select yourself. You can also do `-1` in order to revive everyone.",
		revive_command_parameter_remove_injuries = "remove injuries",
		revive_command_parameter_remove_injuries_help = "Set this to any value except for `0` or `false` to remove all injuries as well.",
		revive_command_substitutes = "",

		recent_deaths_command = "/recent_deaths",
		recent_deaths_command_help = "Get the most recent deaths.",
		recent_deaths_command_parameter_amount = "amount",
		recent_deaths_command_parameter_amount_help = "The amount of deaths you would like to receive. Valid values are between `1` and `100`. Leaving this as blank will auto-select `20`.",
		recent_deaths_command_substitutes = "/check_deaths",

		player_death_command = "/player_death",
		player_death_command_help = "Get a player's recent death.",
		player_death_command_parameter_server_id = "server id",
		player_death_command_parameter_server_id_help = "The player's server ID. Leaving this as blank will auto-select your own ID.",
		player_death_command_substitutes = "/check_death",

		-- game/hud
		watermark_command = "/watermark",
		watermark_command_help = "Toggle the center-top watermark.",
		watermark_command_substitutes = "",

		metrics_toggle_command = "/metrics_toggle",
		metrics_toggle_command_help = "Toggle the center-top metrics display.",
		metrics_toggle_command_substitutes = "/metrics, /metrics_display",

		-- game/hunting
		animal_debug_command = "/animal_debug",
		animal_debug_command_help = "Toggle animal debug.",
		animal_debug_command_substitutes = "",

		-- game/instances
		instance_create_command = "/instance_create",
		instance_create_command_help = "Create an instance.",
		instance_create_command_substitutes = "",

		instance_destroy_command = "/instance_destroy",
		instance_destroy_command_help = "Destory an instance.",
		instance_destroy_command_parameter_instance_id = "instance id",
		instance_destroy_command_parameter_instance_id_help = "The ID of the instance you wish to destroy.",
		instance_destroy_command_substitutes = "",

		instance_add_player_command = "/instance_add_player",
		instance_add_player_command_help = "Add a player to an instance.",
		instance_add_player_command_parameter_instance_id = "instance id",
		instance_add_player_command_parameter_instance_id_help = "The ID of the instance you wish to add a player to.",
		instance_add_player_command_parameter_server_id = "server id",
		instance_add_player_command_parameter_server_id_help = "The server ID of the player you wish to add to the instance. This parameter is optional and it will auto-select yourself if left blank.",
		instance_add_player_command_substitutes = "",

		instance_remove_player_command = "/instance_remove_player",
		instance_remove_player_command_help = "Remove a player from an instance.",
		instance_remove_player_command_parameter_instance_id = "instance id",
		instance_remove_player_command_parameter_instance_id_help = "The ID of the instance you wish to remove a player from.",
		instance_remove_player_command_parameter_server_id = "server id",
		instance_remove_player_command_parameter_server_id_help = "The server ID of the player you wish to remove from the instance. This parameter is optional and it will auto-select yourself if left blank.",
		instance_remove_player_command_substitutes = "",

		instance_get_players_command = "/instance_get_players",
		instance_get_players_command_help = "Get all the players inside of an instance.",
		instance_get_players_command_parameter_instance_id = "instance id",
		instance_get_players_command_parameter_instance_id_help = "The ID of the instance you wish to get the players from.",
		instance_get_players_command_substitutes = "",

		-- game/interiors
		interior_debug_command = "/interior_debug",
		interior_debug_command_help = "Toggle the interior debug text.",
		interior_debug_command_substitutes = "",

		draw_interiors_command = "/draw_interiors",
		draw_interiors_command_help = "Toggle drawing of interiors.",
		draw_interiors_command_substitutes = "/interiors",

		draw_interior_portals_command = "/draw_interior_portals",
		draw_interior_portals_command_help = "Toggle drawing of interior portals.",
		draw_interior_portals_command_substitutes = "/interior_portals, /portals",

		-- game/inventory
		trunk_command = "/trunk",
		trunk_command_help = "Attempt to access a nearby trunk inventory.",
		trunk_command_substitutes = "",

		wipe_ground_inventories_command = "/wipe_ground_inventories",
		wipe_ground_inventories_command_help = "Wipe ground inventories.",
		wipe_ground_inventories_command_parameter_radius = "radius",
		wipe_ground_inventories_command_parameter_radius_help = "The wipe radius. Leaving this as blank will auto-select `100`. Valid values are above `0`, as well as `0` and `-1` which will select all inventories.",
		wipe_ground_inventories_command_substitutes = "/wipeinvs, /wipe_inventories, /wipe_ground",

		-- game/mdt
		mdt_command = "/mdt",
		mdt_command_help = "Access the MDT.",
		mdt_command_substitutes = "",

		-- game/miscellaneous
		-- these two commands should remain the same on all languages in case someone joins in with a language they don't know.
		-- you can change the _help parts though if you'd like, not the "language code" though.
		language_command = "/language",
		language_command_help = "Set your preferred language. This change will save for future sessions. The change is immediate.",
		language_command_parameter_language = "language code",
		language_command_parameter_language_help = "The language code you wish to enable. To see your current language as well as all the other languages available, type /languages. For the default language, leave this argument empty.",
		language_command_substitutes = "/lang",

		languages_command = "/languages",
		languages_command_help = "Check your current language as well as all the other languages available.",
		languages_command_substitutes = "/langs",

		ping_command = "/ping",
		ping_command_help = "Get your current ping to the server.",
		ping_command_substitutes = "",

		ooc_command = "/ooc",
		ooc_command_help = "Broadcast an out of character message to the entire server.",
		ooc_command_parameter_message = "ooc message",
		ooc_command_parameter_message_help = "The message you would like to send.",
		ooc_command_substitutes = "",

		ooc_local_command = "/ooc_local",
		ooc_local_command_help = "Broadcast an out of character message to the nearby players.",
		ooc_local_command_parameter_message = "ooc message",
		ooc_local_command_parameter_message_help = "The message you would like to send.",
		ooc_local_command_substitutes = "/looc, /oocl, /ooclocal",

		ooc_on_command = "/ooc_on",
		ooc_on_command_help = "Enable the OOC chat if disabled.",
		ooc_on_command_substitutes = "",

		ooc_off_command = "/ooc_off",
		ooc_off_command_help = "Disable the OOC chat if enabled.",
		ooc_off_command_substitutes = "",

		clear_chat_command = "/clear_chat",
		clear_chat_command_help = "Clear the chat.",
		clear_chat_command_substitutes = "/cls, /clear",

		clear_chat_all_command = "/clear_chat_all",
		clear_chat_all_command_help = "Clear the chat for everyone.",
		clear_chat_all_command_substitutes = "/clsall, /clearall",

		mute_command = "/mute",
		mute_command_help = "Mute a player from the OOC chat and the report command.",
		mute_command_parameter_server_id = "server id",
		mute_command_parameter_server_id_help = "The player's server ID you are wanting to mute.",
		mute_command_parameter_expire = "expire",
		mute_command_parameter_expire_help = "The length of the player's mute. This can be left blank, at `0` or `false` for an indefinite mute. You can use w/d/h for the length. (ex: `3d2h` -> 3 days, 2 hours)",
		mute_command_parameter_reason = "reason",
		mute_command_parameter_reason_help = "The reason behind the player's mute.",
		mute_command_substitutes = "",

		unmute_command = "/unmute",
		unmute_command_help = "Unmute a player from the OOC and the report command.",
		unmute_command_parameter_server_id = "server id",
		unmute_command_parameter_server_id_help = "The player's server ID you are wanting to unmute.",
		unmute_command_substitutes = "",

		use_measurement_command = "/use_measurement",
		use_measurement_command_help = "Override the locale's preferred measurement system.",
		use_measurement_command_parameter_measurement = "measurement",
		use_measurement_command_parameter_measurement_help = "The measurement system you would like to use. Valid values are `Imperial` and `Metric`. You can leave this paramater as blank or as an invalid value to use default.",
		use_measurement_command_substitutes = "/measurement, /meas",

		no_copyright_command = "/no_copyright",
		no_copyright_command_help = "This command will disable all potentially copyrighted sounds coming from the framework when enabled.",
		no_copyright_command_substitutes = "",

		tps_command = "/tps",
		tps_command_help = "Get the server's current TPS.",
		tps_command_substitutes = "",

		-- game/money
		cash_command = "/cash",
		cash_command_help = "Display your cash balance.",
		cash_command_substitutes = "",

		bank_command = "/bank",
		bank_command_help = "Display your bank balance.",
		bank_command_substitutes = "",

		-- game/notepads
		notepad_command = "/notepad",
		notepad_command_help = "Toggle the notepad.",
		notepad_command_substitutes = "",

		-- game/objects
		frozen_objects_scan_command = "/frozen_objects_scan",
		frozen_objects_scan_command_help = "Scan for frozen objects of a model hash and write it to a file on the server.",
		frozen_objects_scan_command_parameter_model_name = "model name",
		frozen_objects_scan_command_parameter_model_name_help = "The model name of the object you wish to scan for.",
		frozen_objects_scan_command_substitutes = "/frozen_objects",

		-- game/overview
		overview_command = "/overview",
		overview_command_help = "Toggle the overview UI. The overview UI is an OOC interaction menu, information center and a data viewer.",
		overview_command_substitutes = "",

		-- game/ped_messages
		me_command = "/me",
		me_command_help = "Narrate what your character is doing.",
		me_command_parameter_message = "message",
		me_command_parameter_message_help = "The message you would like to send to narrate your actions.",
		me_command_substitutes = "",

		do_command = "/do",
		do_command_help = "Better visualize a roleplay scene.",
		do_command_parameter_message = "message",
		do_command_parameter_message_help = "The message you would like to send to help visualize a roleplay scene.",
		do_command_substitutes = "",

		description_command = "/description",
		description_command_help = "Attach a message to your ped to describe features of it.",
		description_command_parameter_message = "message",
		description_command_parameter_message_help = "The message you would like to attach to your ped.",
		description_command_substitutes = "",

		attempt_command = "/attempt",
		attempt_command_help = "Attempt something with a 50% chance of success.",
		attempt_command_parameter_message = "message",
		attempt_command_parameter_message_help = "A message of what you are attempting.",
		attempt_command_substitutes = "",

		dice_command = "/dice",
		dice_command_help = "Roll a standard dice.",
		dice_command_substitutes = "",

		roll_command = "/roll",
		roll_command_help = "A more advanced and complicated dice with custom settings.",
		roll_command_parameter_rolls = "rolls",
		roll_command_parameter_rolls_help = "The amount of rolls you would like to do. You are limited to 20.",
		roll_command_parameter_max = "max",
		roll_command_parameter_max_help = "The highest value you can get on one roll. The highest value here is 100,000.",
		roll_command_substitutes = "",

		card_command = "/card",
		card_command_help = "Draw a random card.",
		card_command_substitutes = "",

		ped_messages_command = "/ped_messages",
		ped_messages_command_help = "Toggle whether or not ped messages should show in the chat.",
		ped_messages_command_substitutes = "",

		-- game/ped_spawn
		ped_spawn_command = "/ped_spawn",
		ped_spawn_command_help = "Spawns a ped.",
		ped_spawn_command_parameter_model = "model",
		ped_spawn_command_parameter_model_help = "The model of the ped you want to spawn.",
		ped_spawn_command_parameter_weapon = "weapon",
		ped_spawn_command_parameter_weapon_help = "What weapon the ped should have (optional, \"false\" to skip).",
		ped_spawn_command_parameter_fearless = "fearless",
		ped_spawn_command_parameter_fearless_help = "If the ped should be scared of guns/etc. (default: no).",
		ped_spawn_command_substitutes = "",

		ped_task_command = "/ped_task",
		ped_task_command_help = "Assigns your spawned peds a task.",
		ped_task_command_parameter_task = "task",
		ped_task_command_parameter_task_help = "The task the spawned peds should execute.",
		ped_task_command_parameter_target = "target",
		ped_task_command_parameter_target_help = "The server id the peds should target (optional).",
		ped_task_command_substitutes = "",

		ped_remove_command = "/ped_remove",
		ped_remove_command_help = "Gets rid of all your spawned peds.",
		ped_remove_command_substitutes = "",

		-- game/properties
		properties_debug_command = "/properties_debug",
		properties_debug_command_help = "Toggle the properties debug.",
		properties_debug_command_substitutes = "/properties",

		-- game/props
		props_manage_command = "/props_manage",
		props_manage_command_help = "Manage nearby props.",
		props_manage_command_substitutes = "/manage_props",

		spawn_prop_command = "/spawn_prop",
		spawn_prop_command_help = "Spawn a prop.",
		spawn_prop_command_parameter_model_hash = "model",
		spawn_prop_command_parameter_model_hash_help = "The prop model you would like to spawn.",
		spawn_prop_command_parameter_network = "network",
		spawn_prop_command_parameter_network_help = "Would you like to network the prop? It is recommended you only enable this for props that should be able to move.",
		spawn_prop_command_substitutes = "",

		-- game/radio
		radio_command = "/radio",
		radio_command_help = "Toggle the radio UI.",
		radio_command_substitutes = "",

		frequency_command = "/frequency",
		frequency_command_help = "Set what frequency your radio is on.",
		frequency_command_parameter_frequency = "frequency",
		frequency_command_parameter_frequency_help = "The frequency you would like to go to.",
		frequency_command_substitutes = "/freq",

		random_frequency_command = "/random_frequency",
		random_frequency_command_help = "Sets your radio to a random frequency.",
		random_frequency_command_substitutes = "/random_freq, /rfreq",

		radio_sounds_command = "/radio_sounds",
		radio_sounds_command_help = "Adjust the radio sound effects' volume.",
		radio_sounds_command_parameter_volume = "volume level",
		radio_sounds_command_parameter_volume_help = "The volume level of the radio sounds. The value must be between 0 and 1. The default is 0.1. Leaving this blank will return your current volume level.",
		radio_sounds_command_substitutes = "",

		radio_volume_command = "/radio_volume",
		radio_volume_command_help = "Adjust the radio's volume.",
		radio_volume_command_parameter_volume = "volume level",
		radio_volume_command_parameter_volume_help = "The volume level of the radio. The value must be between 0 and 1. The default is 0.5. Leaving this blank will return your current volume level.",
		radio_volume_command_substitutes = "",

		-- game/security_cameras
		security_cameras_command = "/security_cameras",
		security_cameras_command_help = "Toggle the security cameras.",
		security_cameras_command_substitutes = "/sec, /sec_cam, /seccam, /sec_cams, /seccams, /security_cams, /securitycams, /security_camera, /securitycamera, /securitycameras", -- substitutes!!!

		security_cameras_scan_command = "/security_cameras_scan",
		security_cameras_scan_command_help = "Get all known security camera objects and store them in a text file.",
		security_cameras_scan_command_substitutes = "/scan, /scan_cams, /scancams",

		security_cameras_health_command = "/security_cameras_health",
		security_cameras_health_command_help = "Toggle the security cameras health debug tool.",
		security_cameras_health_command_substitutes = "/cam_health",

		-- game/sound_effects
		play_sound_command = "/play_sound",
		play_sound_command_help = "Play a sound for a player or all players.",
		play_sound_command_parameter_url = "url",
		play_sound_command_parameter_url_help = "The sound's download URL.",
		play_sound_command_parameter_volume = "volume",
		play_sound_command_parameter_volume_help = "The volume level the sound should play at. Valid values range from `0` to `1`. This value will default to `0.1`.",
		play_sound_command_parameter_server_id = "server id",
		play_sound_command_parameter_server_id_help = "The player's server ID you want to play this sound for. You can do `-1` for all players.",
		play_sound_command_substitutes = "",

		-- game/spying
		search_for_devices_command = "/search_for_devices",
		search_for_devices_command_help = "Search for nearby devices.",
		search_for_devices_command_substitutes = "/search_devices, /searchdevices, /s4d",

		-- game/status
		status_reset_command = "/status_reset",
		status_reset_command_help = "Reset status levels.",
		status_reset_command_parameter_server_id = "server id",
		status_reset_command_parameter_server_id_help = "The player's server ID you are wanting to reset the status for. If left at blank, yourself will automatically be selected.",
		status_reset_command_substitutes = "",

		set_body_armor_command = "/set_body_armor",
		set_body_armor_command_help = "Set someone's body armor level.",
		set_body_armor_command_parameter_server_id = "server id",
		set_body_armor_command_parameter_server_id_help = "The player's server ID you want to set the body armor level for. You can leave this blank or at `0` to select yourself. You can also do `-1` in order to set everyone's body armor level.",
		set_body_armor_command_parameter_body_armor_level = "body armor level",
		set_body_armor_command_parameter_body_armor_level_help = "The body armor level you would like to set. This value can be anywhere from `0` to `100`. Leaving this as blank or as an invalid value will default to `100`.",
		set_body_armor_command_substitutes = "/body_armor",

		-- game/trackers
		tracker_command = "/tracker",
		tracker_command_help = "Toggle your tracker's visibility.",
		tracker_command_substitutes = "",

		trackers_split_command = "/trackers_split",
		trackers_split_command_help = "Toggle between having trackers stored inside of a category on the map and having them split.",
		trackers_split_command_substitutes = "",

		-- game/shield
		shield_command = "/shield",
		shield_command_help = "Toggle the ballistic shield.",
		shield_command_substitutes = "",

		-- game/sync
		time_hour_command = "/time_hour",
		time_hour_command_help = "Set the current clock hour.",
		time_hour_command_parameter_hour = "hour",
		time_hour_command_parameter_hour_help = "The hour you would like to set the clock to. The value must be between 0 and 23.",
		time_hour_command_parameter_transition = "transition",
		time_hour_command_parameter_transition_help = "If the time should be changed with a smooth transition (yes/no, default is no).",
		time_hour_command_substitutes = "",

		time_minute_command = "/time_minute",
		time_minute_command_help = "Set the current clock minute.",
		time_minute_command_parameter_minute = "minute",
		time_minute_command_parameter_minute_help = "The minute you would like to set the clock to. The value must be between 0 and 59.",
		time_minute_command_substitutes = "",

		weather_command = "/weather",
		weather_command_help = "Change the weather.",
		weather_command_parameter_weather = "weather name",
		weather_command_parameter_weather_help = "The weather's name you would like to set it to. Valid weather names are EXTRASUNNY, CLEAR, CLOUDS, SMOG, FOGGY, OVERCAST, RAIN, THUNDER, CLEARING, NEUTRAL, SNOW, BLIZZARD, SNOWLIGHT, XMAS and HALLOWEEN.",
		weather_command_substitutes = "",
		
		advance_weather_command = "/advance_weather",
		advance_weather_command_help = "Naturally advance to the next weather.",
		advance_weather_command_substitutes = "",

		freeze_time_command = "/freeze_time",
		freeze_time_command_help = "Toggle whether the time is frozen or not.",
		freeze_time_command_substitutes = "",

		freeze_weather_command = "/freeze_weather",
		freeze_weather_command_help = "Toggle whether the weather is frozen or not.",
		freeze_weather_command_substitutes = "",

		blackout_command = "/blackout",
		blackout_command_help = "Toggle whether a blackout is active or not.",
		blackout_command_substitutes = "",

		-- game/top_down
		top_down_command = "/top_down",
		top_down_command_help = "Toggles the top down view.",
		top_down_command_substitutes = "",

		-- game/voice
		voice_debug_command = "/voice_debug",
		voice_debug_command_help = "Toggle the voice debug.",
		voice_debug_command_parameter_server_id = "server id",
		voice_debug_command_parameter_server_id_help = "If you're wanting to toggle the 'voice debug' for someone else, insert their server id here.",
		voice_debug_command_substitutes = "",

		-- global/entities
		local_entities_debug_command = "/local_entities_debug",
		local_entities_debug_command_help = "Toggle the debug for local entities.",
		local_entities_debug_command_substitutes = "/lentities",

		-- global/explosions
		create_explosion_command = "/create_explosion",
		create_explosion_command_help = "Create an explosion.",
		create_explosion_command_parameter_explosion_type = "explosion type",
		create_explosion_command_parameter_explosion_type_help = "The explosion type.",
		create_explosion_command_parameter_damage_scale = "damage scale",
		create_explosion_command_parameter_damage_scale_help = "The damage scale.",
		create_explosion_command_parameter_camera_shake = "camera shake",
		create_explosion_command_parameter_camera_shake_help = "The camera shake.",
		create_explosion_command_substitutes = "/exp, /explode, /explosion",

		-- global/states
		entity_states_debug_command = "/entity_states_debug",
		entity_states_debug_command_help = "Toggle the debug for the entity states.",
		entity_states_debug_command_substitutes = "/states",

		-- illegal/corner
		corner_command = "/corner",
		corner_command_help = "Sell drugs to a nearby person. The drug you sell is based on the location you are in.",
		corner_command_substitutes = "",

		corner_debug_command = "/corner_debug",
		corner_debug_command_help = "Show all the sell areas.",
		corner_debug_command_substitutes = "",

		-- interfaces/interfaces
		clear_uis_command = "/clear_uis",
		clear_uis_command_help = "Clear all UI focuses.",
		clear_uis_command_substitutes = "",

		-- jobs/police
		aim_assist_command = "/aim_assist",
		aim_assist_command_help = "Toggle the PD aim assist. (In memory of Nathan Spencer.)",
		aim_assist_command_substitutes = "",

		undercover_command = "/undercover",
		undercover_command_help = "Toggle whether or not you are undercover. This will hide various things that would usually expose your police-status.",
		undercover_command_substitutes = "",

		-- jobs/state
		license_give_command = "/license_give",
		license_give_command_help = "Give a license.",
		license_give_command_parameter_character_id = "character id",
		license_give_command_parameter_character_id_help = "The ID of the character you want to give the license to.",
		license_give_command_parameter_license = "license",
		license_give_command_parameter_license_help = "The license you wish to give. The available licenses are `heli`, `fw`, `cfi`, `hw`, `hwh`, `perf`, `management` and `military`.",
		license_give_command_substitutes = "/give_license",

		license_remove_command = "/license_remove",
		license_remove_command_help = "Remove a license.",
		license_remove_command_parameter_character_id = "character id",
		license_remove_command_parameter_character_id_help = "The ID of the character you want to remove the license from.",
		license_remove_command_parameter_license = "license",
		license_remove_command_parameter_license_help = "The license you wish to remove. The available licenses are `heli`, `fw`, `cfi`, `hw`, `hwh`, `perf`, `management` and `military`.",
		license_remove_command_substitutes = "/remove_license",

		licenses_check_command = "/licenses_check",
		licenses_check_command_help = "Check someone's licenses.",
		licenses_check_command_parameter_character_id = "character id",
		licenses_check_command_parameter_character_id_help = "The ID of the character you want to check the licenses for.",
		licenses_check_command_substitutes = "/license_check, /check_licenses, /check_license",

		licenses_command = "/licenses",
		licenses_command_help = "Get your licenses.",
		licenses_command_substitutes = "",

		-- vehicles/fuel
		set_fuel_command = "/set_fuel",
		set_fuel_command_help = "Set the fuel level of the vehicle you are in.",
		set_fuel_command_parameter_fuel_level = "fuel level",
		set_fuel_command_parameter_fuel_level_help = "The fuel level you would like to set it to. Leaving this blank will auto-select `100`.",
		set_fuel_command_substitutes = "/fuel",

		-- vehicles/garages
		toggle_garage_debug_command = "/toggle_garage_debug",
		toggle_garage_debug_command_help = "Toggle the garage debug.",
		toggle_garage_debug_command_substitutes = "/garage_debug",

		-- vehicles/keys
		give_key_command = "/give_key",
		give_key_command_help = "Give a vehicle key to a nearby person.",
		give_key_command_parameter_server_id = "server id",
		give_key_command_parameter_server_id_help = "The player's server id you would like to give the key to. This can be left blank (or at 0) to give it to the nearest person.",
		give_key_command_parameter_plate_number = "plate number",
		give_key_command_parameter_plate_number_help = "The vehicle's plate number you wish to give the key for. This can also be left blank to automatically select the nearest vehicle.",
		give_key_command_substitutes = "/givekey",

		hotwire_vehicle_command = "/hotwire_vehicle",
		hotwire_vehicle_command_help = "Instantly hotwire the vehicle you are in.",
		hotwire_vehicle_command_substitutes = "/hotwire",

		-- vehicles/modifications
		wheel_offset_command = "/wheel_offset",
		wheel_offset_command_help = "Modify a vehicle's wheels' offset.",
		wheel_offset_command_parameter_wheels = "front/back",
		wheel_offset_command_parameter_wheels_help = "Which wheels would you like to modify?",
		wheel_offset_command_parameter_value = "value",
		wheel_offset_command_parameter_value_help = "The amount you would like it to be modified. This can be anywhere from -0.8 to 0.8, 0 being default.",
		wheel_offset_command_substitutes = "",

		wheel_rotation_command = "/wheel_rotation",
		wheel_rotation_command_help = "Modify a vehicle's wheels' rotation.",
		wheel_rotation_command_parameter_wheels = "front/back",
		wheel_rotation_command_parameter_wheels_help = "Which wheels would you like to modify?",
		wheel_rotation_command_parameter_value = "value",
		wheel_rotation_command_parameter_value_help = "The amount you would like it to be modified. This can be anywhere from -0.5 to 0.5, 0 being default.",
		wheel_rotation_command_substitutes = "",

		-- vehicles/plates
		plate_available_command = "/plate_available",
		plate_available_command_help = "Check to see if a plate number is available for the `/custom_plate` command.",
		plate_available_command_parameter_plate_number = "plate number",
		plate_available_command_parameter_plate_number_help = "The plate number you would like to check. Plate numbers can only be up to 8 characters long and can only consist of captial letters and numbers.",
		plate_available_command_substitutes = "",

		custom_plate_command = "/custom_plate",
		custom_plate_command_help = "Check to see if a plate number is available for the `/custom_plate` command.",
		custom_plate_command_parameter_vehicle_id = "vehicle id",
		custom_plate_command_parameter_vehicle_id_help = "The vehicle ID you would like to have the custom plate on. (You can find this ID in your garage)",
		custom_plate_command_parameter_plate_number = "plate number",
		custom_plate_command_parameter_plate_number_help = "The plate number you would like to set. Plate numbers can only be up to 8 characters long and can only consist of captial letters and numbers.",
		custom_plate_command_substitutes = "",

		-- vehicles/vehicles
		flip_command = "/flip",
		flip_command_help = "Roll over a flipped vehicle.",
		flip_command_substitutes = "",

		door_command = "/door",
		door_command_help = "Toggle a vehicle's door.",
		door_command_parameter_door_id = "door id (1-6)",
		door_command_parameter_door_id_help = "Which vehicle door would you like to open? This parameter is overwritten if you are a passenger. You are also able to use this command outside of a vehicle.",
		door_command_substitutes = "",

		window_command = "/window",
		window_command_help = "Toggle a vehicle's window.",
		window_command_parameter_window_id = "window id (1-4)",
		window_command_parameter_window_id_help = "Which vehicle window would you like to open? This parameter is overwritten if you are a passenger.",
		window_command_substitutes = "",

		shuffle_command = "/shuffle",
		shuffle_command_help = "Shuffle to another vehicle seat.",
		shuffle_command_substitutes = "/shuff",

		seat_command = "/seat",
		seat_command_help = "Move to another vehicle seat.",
		seat_command_parameter_seat_id = "seat id (1-6)",
		seat_command_parameter_seat_id_help = "Which seat would you like to try to move to?",
		seat_command_substitutes = "",

		engine_command = "/engine",
		engine_command_help = "Toggle a vehicle's engine.",
		engine_command_substitutes = "",

		mileage_command = "/mileage",
		mileage_command_help = "Check a vehicle's mileage.",
		mileage_command_substitutes = "",

		manual_toggle_command = "/manual_toggle",
		manual_toggle_command_help = "Toggle whether or not you want to manually control vehicles' gears.",
		manual_toggle_command_substitutes = "",

		cruise_control_command = "/cruise_control",
		cruise_control_command_parameter_speed = "speed",
		cruise_control_command_parameter_speed_help = "Which speed would you like the cruise control to use? You can leave this blank in order to reset it, which will return it to normal behavior.",
		cruise_control_command_help = "Override the cruise control's norjmal behavior in order to pre-set the speed limit.",
		cruise_control_command_substitutes = "/cc",

		add_vehicle_command = "/add_vehicle",
		add_vehicle_command_help = "Add a vehicle to someone's garage.",
		add_vehicle_command_parameter_model = "model",
		add_vehicle_command_parameter_model_help = "The model name or model hash of the vehicle you wish to add.",
		add_vehicle_command_parameter_server_id = "server id",
		add_vehicle_command_parameter_server_id_help = "The server ID of the player you wish to give a vehicle to. Leaving this blank will auto-select yourself.",
		add_vehicle_command_substitutes = "",

		toggle_vehicle_weapons_command = "/toggle_vehicle_weapons",
		toggle_vehicle_weapons_command_help = "Toggle whether or not the weapons on a vehicle can be used.",
		toggle_vehicle_weapons_command_parameter_server_id = "server id",
		toggle_vehicle_weapons_command_parameter_server_id_help = "The server ID of the player you wish to toggle the vehicle weapons for. Leaving this blank will auto-select yourself.",
		toggle_vehicle_weapons_command_substitutes = "/vehicle_weapons",

		-- weapons/recoil
		crosshair_command = "/crosshair",
		crosshair_command_help = "Toggle the crosshair.",
		crosshair_command_substitutes = "",

		aim_down_sight_command = "/aim_down_sight",
		aim_down_sight_command_help = "Automatically aim down sight when right-clicking even if you're in third person.",
		aim_down_sight_command_substitutes = "/ads"
	},

	core = {
		version = "Version"
	},

	discord = {
		one_player = "1 player",
		multiple_players = "${playerAmount} players",
		join_with_fivem = "Join with FiveM",
		discord_guild = "Discord Guild"
	},

	errors = {
		error_report = "Error Report",
		error_report_info = "Oh no, <b>an error has occurred!</b> This indicates that something isn't working properly or as intended. We kindly ask you to help us solve this issue by providing some additional details as to what you were doing when this error was triggered.",
		script_location = "Script Location:",
		error_report_feedback_title = "Additional Information",
		error_report_feedback_placeholder = "Please let us know what you were doing when this error was triggered...",
		error_report_send = "Send Report",
		error_report_abort = "Abort Report"
	},

	queue = {
		joining_the_queue = "Joining the queue...",
		timed_out_before_joining = "You timed out before you could start joining the server.",
		server_reload_while_in_loading = "The server's core is being restarted and as you weren't loaded in properly, you were automatically kicked.",
		server_reload_while_in_queue = "The server's core is being restarted. Please reconnect to the queue.",
		took_too_long_to_connect = "You took too long to connect!",
		queue_position_with_priority = "🐌 You are ${queueEntryId}/${queueLength} in the queue with ${priorityName} priority. 🕐${queueTime}",
		queue_position_without_priority = "🐌 You are ${queueEntryId}/${queueLength} in the queue. 🕐${queueTime}\nTired of queueing? Support us for queue priority!",
		server_is_starting = "Waiting for the server to start...",
		cancelled_before_server_start = "The connection was aborted before the server had started.",
		kicked_from_queue = "You have been kicked from the queue for reason `${reason}`.",
		kicked_from_queue_no_reason = "You have been kicked from the queue for no specified reason.",
		missing_slots_parameter = "Missing `slots` parameter.",
		invalid_slots_parameter = "Invalid `slots` parameter",
		slots_parameter_out_of_range = "The `slots` parameter has to be between `0` and `1025`.",
		slots_already_set_to = "The server slots are already set to `${slots}`.",
		slots_set_to = "The server slots have now been set to `${slots}`.",

		invalid_steam_identifier_parameter = "Missing or invalid 'steamIdentifier' parameter.",
		invalid_target_position_parameter = "Missing or invalid 'targetPosition' parameter.",
		player_not_found_in_queue = "The player was not found in the queue.",
		player_queue_moved_success = "The player's position in the queue has been updated.",
		player_queue_skipped_success = "The player has skipped the queue successfully.",
		queue_is_not_ready = "The queue is not ready, so it can not be skipped."
	},

	restart = {
		restart_30_minutes = "The server will restart in 30 minutes!",
		restart_15_minutes = "The server will restart in 15 minutes!",
		restart_10_minutes = "The server will restart in 10 minutes!",
		restart_5_minutes = "The server will restart in 5 minutes!",
		restart_3_minutes = "The server will restart in 3 minutes!",
		restart_2_minutes = "The server will restart in 2 minutes!",
		restart_1_minute = "The server will restart in 1 minute!",
		server_restarting = "The server is restarting. You may rejoin in a few minutes.",
		executed_restart_command = "Executed the restart command.",
		already_executed_restart_command = "The restart command has already been executed."
	},

	routes = {
		route_not_found = "Route ${route} not found.",
		route_restricted = "Route ${route} is restricted.",
		internal_server_error = "Internal server error."
	},

	users = {
		playtime = "Playtime",
		player_playtime = "${playerName} (Position ${position})\nTotal Playtime: ${totalPlaytime}\nSession Playtime: ${sessionPlaytime}",
		leaderboard = "Leaderboard",
		your_position = "Your position",
		logs_user_connected_title = "User Connected",
		logs_user_connected_details = "${consoleName} has connected to the server.",
		logs_user_joined_title = "User Joined",
		logs_user_joined_details = "${consoleName} has joined the server.",
		logs_user_dropped_title = "User Disconnected",
		logs_user_dropped_details = "${consoleName} has disconnected from the server after having played for ${playtime} with reason: `${reason}`.",
		logs_character_loaded_title = "Character Loaded",
		logs_character_loaded_details = "${consoleName} has loaded character ${fullName} (${characterId}).",
		logs_character_unloaded_title = "Character Unloaded",
		logs_character_unloaded_details = "${consoleName} has unloaded character ${fullName} (${characterId}).",
		logs_character_created_title = "Character Created",
		logs_character_created_details = "${consoleName} has created character ${fullName} (${characterId}).",
		logs_character_deleted_title = "Character Deleted",
		logs_character_deleted_details = "${consoleName} has deleted character ${fullName} (${characterId}).",
		server_core_is_restarting = "The server's core is being restarted.",
		you_timed_out = "You timed out!",
		kicked_for_no_specified_reason = "You were kicked for no specified reason.",
		kicked_player = "Kicked player.",
		kicked_player_and_removed_reconnect_priority = "Kicked player and removed reconnect priority.",
		kicked_player_and_failed_to_remove_reconnect_priority = "Kicked player and faield to remove reconnect priority.",
		removed_player_from_queue = "Removed player from queue.",
		player_not_found = "Player not found.",
		missing_steam_identifier = "Missing `steamIdentifier`.",
		package = "Package",
		package_updated = "Your package has been updated to `${packageName}`.",
		package_updated_remaining_time = "Your package has been updated to `${packageName}`. It will expire in ${remainingTime}.",
		package_expired = "Your package has expired.",
		package_same = "Your package is `${packageName}`.",
		package_same_remaining_time = "Your package is `${packageName}`. It will expire in ${remainingTime}.",
		no_package = "You do not have a package.",
		fetching_package_error = "An error occurred while trying to fetch your package data.",
		check_playtime_not_staff = "Player attempted to check someone else's playtime, but didn't have correct permissions to do so.",
		reason_unknown = "Reason unknown.",

		unloaded_character = "Unloaded character.",
		user_does_not_have_sent_character_loaded = "The user does not have the sent character loaded.",
		user_has_no_character_loaded = "The user does not have any character loaded.",
		user_not_found = "The sent user was not found on the server.",
		invalid_character_id = "Invalid character id parameter sent.",
		invalid_steam_identifier = "Invalid steam identifier parameter sent.",

		unload_character_not_staff = "The player attempted to unload a player's character but they were not staff.",

		unloaded_character_for_player_logs_title = "Unloaded Character For Player",
		unloaded_character_for_player_logs_details = "${consoleName} unloaded ${targetConsoleName}'s character (`${characterFullName}` - ${characterId}) with the reason `${message}`.",
		unloaded_character_for_player_no_reason_logs_details = "${consoleName} unloaded ${targetConsoleName}'s character (`${characterFullName}` - ${characterId}) without any specified reason.",
		unloaded_character_self_logs_title = "Unloaded Character",
		unloaded_character_self_logs_details = "${consoleName} unloaded their own character (`${characterFullName}` - ${characterId}) with the reason `${message}`.",
		unloaded_character_self_no_reason_logs_details = "${consoleName} unloaded their own character (`${characterFullName}` - ${characterId}) without any specified reason.",

		unloaded_character_for_user = "Unloaded character ${characterName} (${characterId}) for ${consoleName}.",
		user_with_server_id_has_no_character_loaded = "The user with server id `${serverId}` does not have a character loaded.",
		user_with_server_id_not_found = "The user with server id `${serverId}` could not be found on the server.",

		custom_plate = "Custom Plate",
		custom_character_id = "Custom Character ID",

		no_player_packages = "You do not have any player packages.",
		player_packages = "Player Packages:\n${playerPackages}",
		player_package = "- ${label}: ${amount}x"
	},

	-- game/*
	airports = {
		airport = "Airport",
		press_to_access_spawner = "Press ~INPUT_CONTEXT~ to access the vehicle spawner.",
		no_spawner_licenses = "You do not have any licenses for this vehicle spawner.",
		vehicle_lists = "Vehicle Lists",
		parked_vehicle = "Parked vehicle.",
		press_to_park_vehicle = "Press ~INPUT_CONTEXT~ to park the vehicle.",
		no_vehicle_to_park = "There is no vehicle to park.",
		park_vehicle = "Park Vehicle",
		park_vehicle_outside = "Park Vehicle Outside",
		close_menu = "Close Menu",
		spawned_vehicle = "Spawned vehicle.",
		spawner_on_timeout = "The vehicle spawner is on a timeout. Please try again.",
		spawn_area_not_clear = "The spawn area is not clear.",
		return_button = "Return",
	},

	alcohol = {
		now_sober = "You are now sober again.",
		drunk_state_1 = "You are slightly drunk.",
		drunk_state_2 = "You are drunk.",
		drunk_state_3 = "You are very drunk.",
		drunk_state_4 = "You are dangerously drunk."
	},

	arcade = {
		use_arcade_machine = "Press ~INPUT_CONTEXT~ to use the Arcade Machine. The cost is $${cost}.",
		finished_arcade_logs_title = "Finished Arcade",
		finished_arcade_logs_details = "${consoleName} finished an arcade game with a score of `${score}`."
	},

	audio = {
		audio_id = "Audio ${audioId}"
	},

	blackjack = {
		play_blackjack = "Press ~INPUT_CONTEXT~ to play Blackjack.",
		play_blackjack_high_limit = "Press ~INPUT_CONTEXT~ to play High-Limit Blackjack."
	},

	blindfold = {
		blindfolding_player = "Putting Paper Bag On Player",
		blindfolding_self = "Putting On Paper Bag",
		hold_to_take_blindfold_off = "Hold ~INPUT_VEH_HEADLIGHT~ to take off the Paper Bag.",
		hold_to_take_blindfold_off_holding = "Keep holding to take off the Paper Bag."
	},

	blips = {
		church = "Church",
		comedy_club = "Comedy Club",
		bean_machine = "Bean Machine",
		cinema = "Cinema",
		arcade_bar = "Arcade Bar",
		luxury_autos = "Luxury Autos",
		city_hall = "City Hall",
		rockford_records = "Rockford Records",
		dispensary = "Dispensary"
	},

	blockage = {
		restricted_area = "This is a restircted area. Please return!"
	},

	boomboxes = {
		store_boombox = "Store the Boombox in your inventory",
		put_boombox_down = "Put the Boombox on the ground",
		use_boombox = "Use the Boombox",
		hold_to_pick_boombox_up = "Hold to pick the Boombox up",
		illegal_boombox_item_id = "Attempting to use a boombox item with with an illegal item id.",
		boombox_id = "Boombox #${boomboxId}",
		music = "Music",
		play = "Play",
		pause = "Pause",
		skip_song = "Skip Song",
		volume = "Volume",
		logs_attempted_to_add_song_title = "Attempted To Add Song",
		logs_attempted_to_add_song_details = "${consoleName} attempted to add a song with video ID `${videoId}` to boombox with ID `${boomboxId}`.",
		wipe_boomboxes_not_staff = "Player attempted to wipe boomboxes, but didn't have correct permissions to do so.",
		logs_wiped_all_boomboxes_title = "Wiped All Boomboxes",
		logs_wiped_all_boomboxes_details = "${consoleName} wiped all boomboxes.",
		logs_wiped_nearby_boomboxes_title = "Wiped Nearby Boomboxes",
		logs_wiped_nearby_boomboxes_details = "${consoleName} wiped all boomboxes within a radius of `${radius}`.",
		radius_invalid = "A radius of `${radius}` is not a valid value.",
		wiped_all_boomboxes = "Wiped ${boomboxesWiped} boomboxes.",
		wiped_nearby_boomboxes = "Wiped ${boomboxesWiped} boomboxes within a radius of `${radius}`.",
		failed_to_wipe_boomboxes = "Failed to wipe boomboxes.",
		no_boomboxes = "There were no boomboxes to wipe.",
		no_boomboxes_within_radius = "There were no boomboxes to wipe within a radius of `${radius}`."
	},

	casino = {
		set_casino_screen_id_not_staff = "Player attempted to set the casino screen id, but didn't have correct permissions to do so.",
		successfully_set_screen_label = "Successfully set the screens to screen with label `${screenLabel}`.",
		successfully_queued_screen_label = "Successfully queued up the screen with label `${screenLabel}`.",
		failed_to_set_screen_label = "Failed to set the screens to screen with label `${screenLabel}`.",
		invalid_screen_label = "The screen label `${screenLabel}` is invalid.",
		missing_screen_label = "Missing the `screen label` parameter.",
		set_screen_label_already_set_to = "The screen label is already set to `${screenLabel}`.",
		only_available_in_the_casino = "You can only do this while inside the casino.",
		casino_blip = "Casino"
	},

	cayo_perico_world = {
		keep_flying_in_direction_se = "Keep flying South East to come to Cayo Perico.\n(${distanceToTeleport}m left)",
		keep_flying_in_direction_nw = "Keep flying North West to come to Los Santos.\n(${distanceToTeleport}m left)",
		not_the_driver = "You have to be the driver of the vehicle to fly to Cayo Perico.",
		not_an_air_vehicle = "You have to be in a plane or a helicopter to fly to Cayo Perico.",
		entering_cayo_perico_logs_title = "Entering Cayo Perico",
		entering_cayo_perico_logs_details = "${consoleName} is entering Cayo Perico.",
		exiting_cayo_perico_logs_title = "Exiting Cayo Perico",
		exiting_cayo_perico_logs_details = "${consoleName} is exiting Cayo Perico.",
		entering_cayo_perico_with_passengers_logs_title = "Entering Cayo Perico With Passengers",
		entering_cayo_perico_with_passengers_logs_details = "${consoleName} is entering Cayo Perico with ${passengersAmount} passengers.",
		exiting_cayo_perico_with_passengers_logs_title = "Exiting Cayo Perico With Passengers",
		exiting_cayo_perico_with_passengers_logs_details = "${consoleName} is exiting Cayo Perico with ${passengersAmount} passengers.",
	},

	chat_emotes = {
		list_emotes = "Available Chat Emotes"
	},

	christmas = {
		claimed_advent_calendar_hatch_title = "Claimed Advent Calendar Hatch",
		claimed_money = "${consoleName} claimed $${amount}.",
		claimed_item = "${consoleName} claimed `${itemLabel}`.",
		claimed_vehicle = "${consoleName} claimed a Christmas-special vehicle.",
		claimed_queue_priority = "${consoleName} claimed a week of Christmas queue priority."
	},

	cinematic = {
		cinematic = "Cinematic",
		black_bars_set_to = "The cinematic black bars has now been set to ${blackBarsHeight}%."
	},

	clip_saver = {
		start_recording = "Start Recording",
		clip_save = "Save Clip",
		clip_discard = "Discard Clip"
	},

	compass = {
		north = "N",
		north_east = "NE",
		east = "E",
		south_east = "SE",
		south = "S",
		south_West = "SW",
		west = "W",
		north_west = "NW"
	},

	courthouse = {
		press_to_use_gavel = "Press ~INPUT_CONTEXT~ to use the Gavel."
	},

	dashcam = {
		video = "Video: ${video}",
		time = "Time: ${time}",
		date = "Date: ${date}",
		unit_id = "Unit ID: ${unitId}",
		unit_name = "Unit Name: ${unitName}",
		unit_speed_metric = "Unit Speed: ${unitSpeed} km/h",
		unit_speed_imperial = "Unit Speed: ${unitSpeed} mp/h",
		bottom_part_1 = "This vehicle is licensesd to the",
		bottom_part_2 = "State of San Andreas",
		bottom_part_3 = "Any unauthorized use is subject to heavy penalty under 13 S.A. Pen. Code 502(a).",
		set_unit_id_to = "Your unit ID has now been set to ${unitId}.",
		reset_unit_id = "Your unit ID has now been reset.",
		failed_to_set_unit_id = "Failed to set your unit ID.",
		unit_id_already_set_to = "Your unit ID is already set to ${unitId}.",
		unit_id_already_reset = "Your unit ID has already been reset."
	},

	debug = {
		ped = "Ped",
		vehicle = "Vehicle",
		object = "Object",
		network_id = "Network Id",
		owned_by_us = "Owned By Us",
		owned_by = "Owned By",
		not_networked = "Not Networked",
		model_hash = "Model Hash",
		model_name = "Model Name",
		touching = "Touching",
		addon = "Addon",
		invalid_radius_parameter = "Invalid `radius` parameter.",
		inject_code_not_developer = "The player attempted to inject code but they were not a developer.",
		inject_code_invalid_player = "There are no players with server id `${serverId}`.",
		inject_code_success_for_everyone = "Successfully injected code for everyone.",
		inject_code_success_for_player = "Successfully injected code for ${consoleName}.",
		inject_code_success = "Successfully injected code.",
		inject_code_target_user_not_found = "Target user not found.",
		inject_code_invalid_text = "Invalid text.",
		inject_code_invalid_input = "Invalid input.",
		inject_code_no_permissions = "No permissions.",
		inject_code_user_not_found = "User not found.",
		inject_code_invalid_url = "Invalid URL.",
		game_pools = "Game Pools:",
		ped_is = "Ped Is:",
		vehicle_is = "Vehicle Is:",
		native_calls = "Native Calls: ${trueNativeCallsLastFrame} (${totalNativeCalls})",
		player_speed = "Player Speed: ${playerSpeed}",
		player_ped = "Player Ped: ${playerPedId}",
		heading = "Heading: ${heading}",
		coords = "Coords: ${coords}",
		rotation = "Rotation: ${rotation}",
		velocity = "Velocity: ${velocity}",
		debug_print_f8 = "Debugging information has been printed in your F8 console.",

		fake_lag_updated = "The fake lag counter has been updated to `${counter}`.",
		fake_lag_already_set_to = "The fake lag counter is already set to `${counter}`.",
		fake_lag_enabled = "The fake lag has been enabled with counter `${counter}`.",
		fake_lag_invalid_counter_value = "The value `${counter}` is an invalid counter for the fake lag.",
		fake_lag_disabled = "The fake lag has been disabled.",
		fake_lag_not_enabled = "The fake lag has not been enabled.",

		weapon_name_missing = "Missing weapon name parameter.",
		weapon_name_invalid = "`${weaponName}` is not a valid weapon name.",
		model_view_enabled = "Model view enabled.",
		model_view_disabled = "Model view disabled.",
		invalid_component = "Invalid component `${componentName}`.",

		animation_currently_playing = "Currently playing an animation.",
		invalid_or_missing_animation_dict = "Invalid or missing animation dictionary `${animationDict}`.",
		missing_animation_name = "Invalid or missing animation name `${animationName}`.",
		invalid_animation_flags = "Invalid animation flags.",
		animation_finished = "Finished `${animationDict}` `${animationName}` (flags: ${flags}).",
		no_flags = "N/A",

		invalid_coordinates = "Invalid coordinates.",
		added_coordinates_draw = "Added coordinates `x: ${x}, y: ${y}, z: ${z}` to the draw list with ID `${drawId}`.",
		no_coordinate_draws_to_destroy = "There were no coordinate draws to destroy.",
		destroyed_coordinate_draws = "Destroyed `${drawingCoordinatesAmount}` coordinate draws."
	},

	doors = {
		locked = "Locked",
		unlocked = "Unlocked",
		locked_press_to_unlock = "[${InteractionKey}] Locked",
		unlocked_press_to_lock = "[${InteractionKey}] Unlocked",
		locking = "Locking",
		unlocking = "Unlocking",
		jewelry_store_closed = "The Jewelry Store is currently closed. Please come back later.",
		bank_closed = "The Bank is currently closed. Please come back later.",
		store_closed = "The Store is currently closed. Please come back later.",
		failed_to_sync_doors = "Failed to sync doors. Something most likely corrupted. Please try again.",
		saved_doors_to_file = "Saved `${amount}` doors to a file on the server.",
		no_nearby_doors = "There are no nearby doors to save."
	},

	frisk = {
		frisk_no_player = "No player nearby that you can frisk.",
		already_frisking = "You are already frisking a player.",
		frisk_failed = "Failed to frisk player.",
		frisking = "Frisking Player",

		frisk_category_0 = "Seems to not have any weapons.",
		frisk_category_1 = "Seems to possibly have a weapon.",
		frisk_category_2 = "Seems to have a weapon.",
		frisk_category_3 = "Seems to definetly have a large weapon.",
		frisk_category_4 = "Definetly has a big weapon."
	},

	gas_masks = {
		gas_grenade = "Gas Grenade",
		in_gas_circle = "In a gas circle!",
		not_in_gas_circle = "Not in a gas circle.",
		gas_time_left = "You have ${gasTime} seconds left of the gas mask.",
		hold_to_take_gas_mask_off = "Hold ~INPUT_VEH_HEADLIGHT~ to take off the Gas Mask.",
		hold_to_take_gas_mask_off_holding = "Keep holding to take off the Gas Mask."
	},

	grills = {
		campfire = "Campfire",
		use_campfire = "[E] Use Campfire",
		grill = "Grill",
		use_grill = "[E] Use Grill"
	},

	health = {
		successfully_revived_player = "Successfully revived ${consoleName}.",
		successfully_revived_player_removed_injuries = "Successfully revived ${consoleName} and removed their injuries.",
		successfully_revived_everyone = "Successfully revived everyone.",
		successfully_revived_everyone_removed_injuries = "Successfully revived and removed everyone's injuries.",
		failed_to_revive = "Failed to execute the `/revive` command correctly.",
		revive_player_not_staff = "Player attempted to revive another player but they didn't have the requried permissions to do so.",
		revive_self_not_staff = "Player attempted to revive another themselves but they didn't have the requried permissions to do so.",
		revived_self_removed_injuries_title = "Revived Self And Removed Injuries",
		revived_self_removed_injuries_details = "${consoleName} revived themselves and removed their injuries.",
		revived_self_title = "Revived Self",
		revived_self_details = "${consoleName} revived themselves.",
		revived_everyone_removed_injuries_title = "Revived Everyone And Removed Injuries",
		revived_everyone_removed_injuries_details = "${consoleName} revived everyone and removed their injuries.",
		revived_everyone_title = "Revived Everyone",
		revived_everyone_details = "${consoleName} revived everyone.",
		revived_player_removed_injuries_title = "Revived Player And Removed Injuries",
		revived_player_removed_injuries_details = "${consoleName} revived ${targetConsoleName} and removed their injuries.",
		revived_player_title = "Revived Player",
		revived_player_details = "${consoleName} revived ${targetConsoleName}.",
		get_recent_deaths_not_staff = "Player attempted to get recent deaths, but didn't have correct permissions to do so.",
		get_player_last_death_not_staff = "Player attempted to get a player's last death, but didn't have correct permissions to do so.",
		recent_deaths = "Recent Deaths",
		no_recent_deaths = "There are no recent deaths.",
		recent_deaths_list_entry = "${recentDeathId}. ${consoleName} died ${timer} seconds ago.",
		target_user_not_found = "Target user not found.",
		no_server_id_sent = "No server ID sent.",
		no_permissions = "No permissions.",
		user_not_found = "User not found.",
		player_death = "Player Death",
		player_death_recent = "${consoleName} last died ${timer} seconds ago.",
		no_recent_death = "${consoleName} has not died recently.",
		death_alcohol_poisoning = "You passed out due to alcohol poisoning.",
		character_has_hardcore_died = "${fullName} has died. You may select another character."
	},

	hud = {
		mph = "mp/h",
		kmh = "km/h",
		ft = "ft",
		m = "m",
		belt = "BELT",
		cruise = "CRUISE",
		fuel = "fuel",
		battery = "battery",
		fps = "FPS",
		ping = "PING",
		autopilot = "autopilot",
		ground_asl = "AGL/ASL (${unit})"
	},

	hunting = {
		hold_to_skin = "[${InteractionKey}] Hold to skin",
		skinning_animal = "Skinning dead animal",
		hit_by_vehicle = "This animal's meat is too damaged.",
		animal_is_being_skinned = "The animal is being skinned."
	},

	identification = {
		los_santos = "Los Santos",
		citizen_card = "Citizen Card",
		first_name = "First Name",
		last_name = "Last Name",
		gender = "Gender",
		gender_male = "Male",
		gender_female = "Female",
		date_of_birth = "Date Of Birth",
		citizen_id = "Citizen ID",
		citizen_card_details = "${firstName} ${lastName} | Date Of Birth: ${dateOfBirth} | Gender: ${gender} | Citizen ID: ${characterId}",
		just_showed_citizen_card = "You just showed a Citizen Card. Please wait a bit.",

		just_showed_badge = "You just showed a Badge. Please wait a bit.",
		sasp_badge = "SASP Badge",
		sasp_badge_details = "SASP | ${firstName} ${lastName} | Position: ${positionName}",
		bcso_badge = "BCSO Badge",
		bcso_badge_details = "BCSO | ${firstName} ${lastName} | Position: ${positionName}",
		iaa_badge = "IAA Badge",
		iaa_badge_details = "IAA | ${firstName} ${lastName} | Position: ${positionName}",
		fib_badge = "FIB Badge",
		fib_badge_details = "FIB | ${firstName} ${lastName} | Position: ${positionName}",
		swat_badge = "SWAT Badge",
		swat_badge_details = "SWAT | ${firstName} ${lastName} | Position: ${positionName}",
		management_badge = "Management Badge",
		management_badge_details = "Management | ${firstName} ${lastName} | Position: ${positionName}",

		badge_type_sasp = "San Andreas State Police",
		badge_type_bcso = "Blaine County Sheriff's Office",
		badge_type_iaa = "Internal Affairs Agency",
		badge_type_fib = "Federal Investigation Bureau",
		badge_type_swat = "Special Weapons And Tactics",
		badge_type_management = "SASP Management",

		badge_type_short_sasp = "SASP",
		badge_type_short_bcso = "BCSO",
		badge_type_short_iaa = "IAA",
		badge_type_short_fib = "FIB",
		badge_type_short_swat = "SWAT",
		badge_type_short_management = "Management"
	},

	instances = {
		instance_created = "Create an instance with ID `${instanceId}`.",
		instance_creation_failed = "Failed to create an instance.",
		instance_destroyed = "Destroy instance with ID `${instanceId}`.",
		instance_destruction_failed = "Failed to destroy the instance.",
		instance_id_parameter_invalid = "The instance ID parameter is invalid.",
		added_player_to_instance = "Added ${consoleName} to the instance with ID `${instanceId}.`",
		failed_to_add_player_to_instance = "Failed to add player to the instance.",
		server_id_parameter_invalid = "The server ID parameter is invalid.",
		removed_player_from_instance = "Removed ${consoleName} from the instance with ID `${instanceId}`.",
		failed_to_remove_player_from_instance = "Failed to remove player from the instance.",
		instance_players = "Instance players on instance with ID `${instanceId}`: `${players}`.",
		failed_to_get_instance_players = "Failed to get the players from the instance.",
		no_players = "No players.",

		create_instance_not_developer = "The player attempted to create an instance but they were not a developer.",
		destroy_instance_not_developer = "The player attempted to destroy an instance but they were not a developer.",
		add_player_to_instance_not_developer = "The player attempted to add a player to an instance but they were not a developer.",
		remove_player_from_instance_not_developer = "The player attempted to remove a player from an instance but they were not a developer.",
		get_players_from_instance_not_developer = "The player attempted to get the players from an instance but they were not a developer."
	},

	interiors = {
		in_interior = "In Interior: ${interiorId} (${portals} portals).",
		total_interiors = "Total Interiors: ${totalInteriors} (${totalInteriorPortals} total portals).",
		total_unloaded_interiors = "Total Unloaded Interiors: ${totalUnloadedInteriors} (${totalUnloadedInteriorPortals} total portals)."
	},

	inventory = {
		access_trunk = "Move here to access the trunk",

		used = "Used",
		added = "Added",

		pounds = "lb",

		store = "Store",
		gas_station = "Gas Station",
		grocery_store = "Grocery Store",
		tool_store = "Tool Store",
		gun_store = "Ammu-Nation",
		gun_store_with_shooting_range = "Ammu-Nation with Range",
		bar = "Bar",
		strip_club = "Strip Club",
		police_store = "Police Store",
		police_badge_store = "Police Badge Desk",
		ems_store = "EMS Store",
		drug_store = "Drug Cabinet",
		chop_shop = "Chop Shop",
		courthouse = "Courthouse",
		burger_shot = "Burger Shot",
		bean_machine = "Bean Machine",
		hunting_store = "Hunting Store",
		fishing_store = "Fishing Store",
		los_santos_golf_club = "Los Santos Golf Club",
		pd_prefix = "PD",
		ems_prefix = "EMS",
		inventory_overweight = "Your inventory is overweight!",
		vehicle_locked = "The vehicle is locked.",
		press_to_access_store = "Press ~INPUT_REPLAY_SHOWHOTKEY~ to access the store.",
		press_to_access_locker = "Press ~INPUT_REPLAY_SHOWHOTKEY~ to access your private locker.",

		store_help = "To purchase something, drag an item from the secondary inventory into your own.",
		store_tax = "Store Tax",
		store_tax_percentage = "${tax}%",

		search = "Search",
		amount = "Amount",
		use = "Use",
		close = "Close",

		done = "DONE",
		burnt = "BURNT",
		danger = "DANGER",
		fuel = "Fuel: ${fuel}",

		item_does_stack = "This item stacks.",
		item_does_not_stack = "This item does not stack.",
		individual_weight = "Individual Weight",
		stack_amount = "Stack Amount",

		logs_secondary_inventory_title = "Secondary Inventory Opened",
		logs_secondary_inventory_details = "${consoleName} opened a secondary inventory with name `${inventoryName}`.",
		logs_ground_inventory_created_title = "Ground Inventory Created",
		logs_ground_inventory_created_details = "${consoleName} created a ground inventory with name `${inventoryName}`.",

		logs_item_moved_title = "Item Moved",
		logs_item_moved_details = "${consoleName} moved ${moveAmount}x ${itemLabel} to ${endInventory}:${endSlot} from inventory ${startInventory}:${startSlot}.",

		logs_item_purchased_title = "Item(s) Purchased",
		logs_item_purchased_no_tax_details = "${consoleName} purchased ${purchaseAmount}x `${itemLabel}` for $${purchaseCost}.",
		logs_item_purchased_tax_details = "${consoleName} purchased ${purchaseAmount}x `${itemLabel}` for $${purchaseCost} with an additional $${taxCost} due to a ${salesTaxPercentage}% sales tax.",

		radius_invalid = "A radius of `${radius}` is not a valid value.",
		wiped_all_ground_inventories = "Wiped ${inventoriesWiped} ground inventories.",
		wiped_nearby_ground_inventories = "Wiped ${inventoriesWiped} ground inventories within a radius of `${radius}`.",
		failed_to_wipe_ground_inventories = "Failed to wipe ground inventories.",
		no_ground_inventories = "There were no ground inventories to wipe.",
		no_ground_inventories_within_radius = "There were no ground inventories to wipe within a radius of `${radius}`.",

		wipe_inventories_not_staff = "Player attempted to wipe inventories, but didn't have correct permissions to do so.",

		logs_wiped_all_ground_inventories_title = "Wiped All Ground Inventories",
		logs_wiped_all_ground_inventories_details = "${consoleName} wiped all ground inventories.",

		logs_wiped_nearby_ground_inventories_title = "Wiped Nearby Ground Inventories",
		logs_wiped_nearby_ground_inventories_details = "${consoleName} wiped all ground inventories within a radius of `${radius}`.",

		press_use_campfire = "[E] Use Campfire",
		use_campfire = "Use Campfire",

		-- items & item descriptions
		body_armour = "Body Armor",
		body_armour_description = "A modern viking chest-plate. Guaranteed to absorb at least 80% of bullets fired at you, to ensure you have the best odds at any gunfight!",
		first_aid_kit = "First Aid Kit",
		first_aid_kit_description = "The \"do-it-yourself\" doctor-kit.",
		oxygen_tank = "Oxygen Tank",
		oxygen_tank_description = "A lung-expansion pack.",
		ifak = "IFAK",
		ifak_description = "\"PD power pack that secures the W's when applied. Taking more than 1 will result in feelings of EZ clapping along with handing out participation trophies for the crims when downed.\"<br><br>-Joe, 2020",

		citizen_card = "Citizen Card",
		citizen_card_description = "Acts as identification, a firearm license and driving license.",
		phone = "Phone",
		phone_description = "never:tm:",
		radio = "Radio",
		radio_description = "Useful asset for all the metagamers out there!",

		sasp_badge = "SASP Badge",
		sasp_badge_description = "A badge for officers of the San Andreas Police Department.",
		bcso_badge = "BCSO Badge",
		bcso_badge_description = "A badge for deputies of the Blaine County Sheriff's Office.",
		iaa_badge = "IAA Badge",
		iaa_badge_description = "A badge for Agents of the Internal Affairs Agency.",
		fib_badge = "FIB Badge",
		fib_badge_description = "A badge for Agents of the Federal Investigation Bureau.",
		swat_badge = "SWAT Badge",
		swat_badge_description = "A badge for officers of the Special Weapons and Tactics department.",
		management_badge = "Management Badge",
		management_badge_description = "A badge for Agents of the SASP Management division.",

		radio_chop_shop = "Chop Shop Radio",
		radio_chop_shop_description = "Used to receive intel on 'hot' vehicles from the non-existant people operating the chop shop.",

		binoculars = "Binoculars",
		binoculars_description = "A must-have gadget for every creep lurking around in Los Santos!",
		photo_camera = "Photo Camera",
		photo_camera_description = "Nikon & Igna developed the lastest professional camera on the market. With it's advanced lens (70-300mm f/4.5-5.6E), you can capture even the finest details, even small things on the ground.",

		handcuffs = "Handcuffs",
		handcuffs_description = "For that full ERP experience.",
		bolt_cutter = "Bolt Cutter",
		bolt_cutter_description = "The ERP wasn't as fun as expected...",
		drill = "Drill",
		drill_description = "I bet a lot of people around here would have use for this... considering how they seem to have a few screws loose.",
		umbrella = "Umbrella",
		umbrella_description = "Basically a life necessity here in Los Santos.",
		watch = "Watch",
		watch_description = "No time for caution.",
		compass = "Compass",
		compass_description = "He's left! Left, left, left you idiot!",

		basic_repair_kit = "Basic Repair Kit",
		basic_repair_kit_description = "It makes stuff work, but just barely.",
		advanced_repair_kit = "Advanced Repair Kit",
		advanced_repair_kit_description = "Used to repair broken souls.",
		basic_lockpick = "Basic Lockpick",
		basic_lockpick_description = "Used to pick locks",
		advanced_lockpick = "Advanced Lockpick",
		advanced_lockpick_description = "Hide Yo Kids, Hide Yo Wife",
		cleaning_kit = "Cleaning Kit",
		cleaning_kit_description = "Perfect to clean your vehicle, or the blood stains you've been letting dry in the back of your trunk.",

		microphone_bug = "Microphone Bug",
		microphone_bug_description = "Used to creep in on conversations.",
		vehicle_tracker = "Vehicle Tracker",
		vehicle_tracker_description = "This tracker is exactly what Michael needs, who has for over seven years had suspicion his wife, Amanda, has been cheating on him with the tennis coach he got her.",
		device_scanner = "Device Scanner",
		device_scanner_description = "Used to scan for nearby creep devices.",

		paper_bag = "Paper Bag",
		paper_bag_description = "Perfect for storing groceries or perhaps someone's head, dead or alive.",
		burger_shot_delivery = "Burger Shot Delivery",
		burger_shot_delivery_description = "\"America's favorite national quick service factory farmed restaurant chain, and shining beacon of the global march towards cultural homogenization.\"",

		water = "Water",
		water_description = "Danger! Dihydrogen monoxide is colorless and odorless. Accidental inhalation of DHMO may be fatal. Prolonged exposure to its solid form causes severe tissue damage. Symptoms of DHMO ingestion can include excessive sweating and urination, and possibly a bloated feeling, nausea, vomiting and body electrolyte imbalance.",
		hamburger = "Hamburger",
		hamburger_description = "The taste of America!",
		belgian_fries = "Belgian Fries",
		belgian_fries_description = "For improved taste, DM @Giv3n#0753 messaging him nothing but “fritas”.",
		coke = "Coke",
		coke_description = "Pablo?",
		wonder_waffle = "Wonder Waffle",
		wonder_waffle_description = "The Red Mafia, notoriously known for chain-robbing banks, are said to have had a diet strictly consisting of this very wonder. This was allegedly required by their leader, a Legion-Square-police-murdering psychopath.",
		cheeseburger = "Cheeseburger",
		cheeseburger_description = "fatty damn, greasy, rubbery, double deluxe, soggy double, greasy double, damn decent, big, greasy, cold and greasy, usual double, big fat, juiciest, king-sized, deluxe, damn fine, double, greasy, plain old, triple, rubbery, juicy, sinful, mediocre, soggy, fat, great big, free",
		donut = "Donut",
		donut_description = "Why is there a hole in the middle bwo",
		green_apple = "Green Apple",
		green_apple_description = "It's like a red bull but there were no objects in the game that matched a red bull can.",
		sandwich = "Sandwich",
		sandwich_description = "It's vegan.",
		taco = "Taco",
		taco_description = "El Brayan's speciality.",
		banana = "Banana",
		banana_description = "sus",
		smores = "Smores",
		smores_description = "yes",

		beer = "Beer",
		beer_description = "Angry water.",
		vodka = "Vodka",
		vodka_description = "Русский стиль, cука ебать.",
		tequila = "Tequila",
		tequila_description = "Don't worry, nothing was slipped into your drink. ( ͡° ͜ʖ ͡°)",
		whiskey = "Whiskey",
		whiskey_description = "Only for the finest alcoholics.",
		cider = "Cider",
		cider_description = "Adult apple juice.",
		rum = "Rum",
		rum_description = "Time to rewatch Pirates of the Caribbean!",
		absinthe = "Absinthe",
		absinthe_description = "Warning: Contains alcholol. Let children only drink moderate amounts.",
		wine = "Wine",
		wine_description = "Grape juice.",

		cigarette = "Cigarette",
		cigarette_description = "If you don't smoke you're a pussy dawg",
		cocaine_bag = "Cocaine Bag",
		cocaine_bag_description = "Smaller pieces of Colombian history.",
		cocaine_brick = "Cocaine Brick",
		cocaine_brick_description = "A piece of Colombian history.",
		joint = "Joint",
		joint_description = "420 blaze it dawg",
		oxy = "Oxy",
		oxy_description = "The most boring drug.",
		antibiotics = "Antibiotics",
		antibiotics_description = "Helping you get rid of those infections and parasites.",
		pain_killers = "Pain Killers",
		pain_killers_description = "To forget the pain.",
		weed_seeds = "Weed Seeds",
		weed_seeds_description = "Grows the 420, bro",
		weed_1q = "Weed 1q",
		weed_1q_description = "420 bro",
		weed_1oz = "Weed 1oz",
		weed_1oz_description = "1680 bro",

		ejector_seat = "Ejector Seat",
		ejector_seat_description = "Banned (twice) Kebab man's idea.",
		tuner_chip = "Tuner Chip",
		tuner_chip_description = "I am speed.",

		chip = "Chip",
		chip_description = "Cool-looking hacker chip.",
		decryption_key_red = "Red Decryption Key",
		decryption_key_red_description = "DID YOU KNOW? The red mafia are in fact just a bunch of pussies.",
		decryption_key_green = "Green Decryption Key",
		decryption_key_green_description = "DID YOU KNOW? Coke was originally green in color.",
		decryption_key_blue = "Blue Decryption Key",
		decryption_key_blue_description = "DID YOU KNOW? There exists a blue-footed bird? Reference: https://en.wikipedia.org/wiki/Blue-footed_booby",

		ballistic_shield = "Ballistic Shield",
		ballistic_shield_description = "This shield should be used when venturing into the ganglands of RP.",

		bucket = "Bucket",
		bucket_description = "Can be used as a makeshift helmet.",
		fertilizer = "Fertilizer",
		fertilizer_description = "For a greener world.",

		aluminium = "Aluminium",
		aluminium_description = "Used for repairs and crafting.",
		glass = "Glass",
		glass_description = "Used for repairs and crafting.",
		gold_bar = "Gold Bar",
		gold_bar_description = "Used for repairs and crafting.",
		rubber = "Rubber",
		rubber_description = "Used for repairs and crafting.",
		scrap_metal = "Scrap Metal",
		scrap_metal_description = "Used for repairs and crafting.",
		steel = "Steel",
		steel_description = "Used for repairs and crafting.",

		thermite = "Thermite",
		thermite_description = "What even is this?",
		fake_plate = "Fake Plate",
		fake_plate_description = "Hehe fuck the cops, they ain't catchin' me.",
		evidence_bag_empty = "Empty Evidence Bag",
		evidence_bag_empty_description = "Can you enhance that?",
		evidence_bag = "Evidence Bag",
		evidence_bag_description = "Sealed crime in a bag for later use.",

		pistol_ammo = "Pistol Ammo",
		pistol_ammo_description = "Perfect for casual use. Fits in most handhelds.",
		sub_ammo = "Sub Ammo",
		sub_ammo_description = "Looking to mag-dump a rivaling group? This is an affordable asset allowing for exactly that. For full effect, a submachine weapon is recommened.",
		rifle_ammo = "Rifle Ammo",
		rifle_ammo_description = "This one is for all the hardcore bank robbers looking to slaughter some pigs along the way.",
		sniper_ammo = "Sniper Ammo",
		sniper_ammo_description = "Screw your initiation!",
		shotgun_ammo = "Shotgun Ammo",
		shotgun_ammo_description = "People think there's gunpowder in these! Clowns... they're filled with love and joy.",

		silver_watches = "Silver Watches",
		silver_watches_description = "Watch out!",
		necklaces = "Necklaces",
		necklaces_description = "Add some extra bling to your outfit!",
		gold_watches = "Gold Watches",
		gold_watches_description = "And... where did you get these, exactly?",
		diamonds = "Diamonds",
		diamonds_description = "You need 24 to make a full armor. I'd recommend getting 27 though so you can get yourself a pickaxe too.",

		weather_spell_snow = "Weather Spell (Snow)",
		weather_spell_snow_description = "Using this item will let you temporarily control the weather and make it snow! It is a one-time use, so use with care. If you use two weather spells at once, they second one will simply queue up.",
		weather_spell_rain = "Weather Spell (Rain)",
		weather_spell_rain_description = "Using this item will let you temporarily control the weather and make it rain! It is a one-time use, so use with care. If you use two weather spells at once, they second one will simply queue up.",
		weather_spell_thunder = "Weather Spell (Thunder)",
		weather_spell_thunder_description = "Using this item will let you temporarily control the weather and make a thunderstorm! It is a one-time use, so use with care. If you use two weather spells at once, they second one will simply queue up.",

		zombie_pill = "Zombie Pill",
		zombie_pill_description = "A strange pill that does even stranger things... Swallow at your own risk.",

		acid = "Acid",
		acid_description = "Makes you high permanently. There's no escaping it.",

		self_driving_chip = "Self-Driving Chip",
		self_driving_chip_description = "Dead deers everywhere... fucking hilarious.",

		raspberry = "Raspberry",
		raspberry_description = "https://i.redd.it/jbcj0uqbihg41.jpg",

		pigeon_milk = "Pigeon Milk",
		pigeon_milk_description = "\"Shoulda drank pigeon milk that stuff will knock you right out\"\nMilk extracted by Vedder with love.",

		boombox = "Boombox",
		boombox_description = "Play music and be obnoxious anywhere, any time!",

		lighter = "Lighter",
		lighter_description = "some man just want to see worlds burn",

		nitro_tank = "Nitro Tank",
		nitro_tank_description = "Car goes brr",

		campfire = "Campfire",
		campfire_description = "Can be placed anywhere in the world. Perfect for camping, hunting and fishing! This item can not be picked up again.",
		tent = "Tent",
		tent_description = "Can be placed anywhere in the world. Perfect for camping, hunting and fishing!",
		cloth_tent = "Cloth Tent",
		cloth_tent_description = "Can be placed anywhere in the world. Perfect for camping, hunting and fishing!",
		canvas_tent = "Canvas Tent",
		canvas_tent_description = "Can be placed anywhere in the world. Perfect for camping, hunting and fishing!",
		plastic_chair = "Plastic Chair",
		plastic_chair_description = "Can be placed anywhere in the world. Perfect for camping, hunting and fishing!",
		fishing_chair = "Fishing Chair",
		fishing_chair_description = "Can be placed anywhere in the world. Perfect for camping, hunting and fishing!",
		yoga_mat = "Yoga Mat",
		yoga_mat_description = "Can be placed anywhere in the world. Perfect for camping, hunting and fishing!",
		cooler_box = "Cooler Box",
		cooler_box_description = "Can be placed anywhere in the world. Perfect for camping, hunting and fishing!",
		parasol = "Parasol",
		parasol_description = "Can be placed anywhere in the world. Perfect for camping, hunting and fishing!",
		parasol_table = "Parasol Table",
		parasol_table_description = "Can be placed anywhere in the world. Perfect for camping, hunting and fishing!",
		table = "Table",
		table_description = "Can be placed anywhere in the world. Perfect for camping, hunting and fishing!",
		towel = "Towel",
		towel_description = "Can be placed anywhere in the world. Perfect for camping, hunting and fishing!",
		disposable_grill = "Disposable Grill",
		disposable_grill_description = "Can be placed anywhere in the world. Perfect for camping, hunting and fishing! This item can not be picked up again.",
		grill = "Grill",
		grill_description = "Can be placed anywhere in the world. Perfect for camping, hunting and fishing!",
		barrier = "Barrier",
		barrier_description = "Can be placed anywhere in the world.",
		dummy = "Dummy",
		dummy_description = "Can be placed anywhere in the world.",
		target = "Target",
		target_description = "Can be placed anywhere in the world.",
		large_target = "Large Target",
		large_target_description = "Can be placed anywhere in the world.",
		cone = "Cone",
		cone_description = "Can be placed anywhere in the world.",
		spike_strips = "Spike Strips",
		spike_strips_description = "Can be placed anywhere in the world.",
		floodlight = "Floodlight",
		floodlight_description = "Can be placed anywhere in the world.",
		left_diversion_sign = "Left Diversion Sign",
		left_diversion_sign_description = "Can be placed anywhere in the world.",
		right_diversion_sign = "Right Diversion Sign",
		right_diversion_sign_description = "Can be placed anywhere in the world.",
		stop_sign = "Stop Sign",
		stop_sign_description = "Can be placed anywhere in the world.",
		bear_trap = "Bear Trap",
		bear_trap_description = "Can be placed anywhere in the world.",

		bean_coffee = "Bean Coffee",
		bean_coffee_description = "Generic description.",
		cappuccino = "Cappuccino",
		cappuccino_description = "Generic description.",
		espresso = "Espresso",
		espresso_description = "Generic description.",
		cream_cookie = "Cream Cookie",
		cream_cookie_description = "Generic description.",
		cheesecake = "Cheesecake",
		cheesecake_description = "Generic description.",
		chocolate_cake = "Chocolate Cake",
		chocolate_cake_description = "Generic description.",

		chip_10 = "$10 Chip",
		chip_10_description = "A gambling chip. Can be used to gamble. The item can be converted to money at the casino.",
		chip_50 = "$50 Chip",
		chip_50_description = "A gambling chip. Can be used to gamble. The item can be converted to money at the casino.",
		chip_100 = "$100 Chip",
		chip_100_description = "A gambling chip. Can be used to gamble. The item can be converted to money at the casino.",
		chip_500 = "$500 Chip",
		chip_500_description = "A gambling chip. Can be used to gamble. The item can be converted to money at the casino.",
		chip_1000 = "$1000 Chip",
		chip_1000_description = "A gambling chip. Can be used to gamble. The item can be converted to money at the casino.",
		chip_5000 = "$5000 Chip",
		chip_5000_description = "A gambling chip. Can be used to gamble. The item can be converted to money at the casino.",
		chip_10000 = "$10000 Chip",
		chip_10000_description = "A gambling chip. Can be used to gamble. The item can be converted to money at the casino.",

		grubs = "Grubs",
		grubs_description = "Perfect for fishing.",
		leeches = "Leeches",
		leeches_description = "Perfect for fishing.",
		earthworms = "Earthworms",
		earthworms_description = "Perfect for fishing.",
		fishing_rod = "Fishing Rod",
		fishing_rod_description = "Perfect for fishing.",
		raw_meat = "Raw Meat",
		raw_meat_description = "A fresh chunk of meat.",
		cooked_meat = "Cooked Meat",
		cooked_meat_description = "Meat that has just been cooked.",
		burnt_meat = "Burnt Meat",
		burnt_meat_description = "Meat that has been burnt.",
		leather = "Leather",
		leather_description = "A nice pelt fresh from the deer.",
		wood = "Wood",
		wood_description = "A piece of wood fresh from a tree.",
		charcoal = "Charcoal",
		charcoal_description = "Superior to normal coal.",

		golf_ball = "Golf Ball",
		golf_ball_description = "Used for golfing.",
		golf_ball_yellow = "Yellow Golf Ball",
		golf_ball_yellow_description = "Used for golfing.",
		golf_ball_orange = "Orange Golf Ball",
		golf_ball_orange_description = "Used for golfing.",
		golf_ball_pink = "Pink Golf Ball",
		golf_ball_pink_description = "Used for golfing.",

		gas_mask = "Gas Mask",
		gas_mask_description = "will save you from all types of gas, even grandmas farts",

		weapon_dagger = "Antique Cavalry Dagger",
		weapon_bat = "Baseball Bat",
		weapon_bottle = "Broken Bottle",
		weapon_crowbar = "Crowbar",
		weapon_unarmed = "Fist",
		weapon_flashlight = "Flashlight",
		weapon_golfclub = "Golf Club",
		weapon_hammer = "Hammer",
		weapon_hatchet = "Hatchet",
		weapon_knuckle = "Brass Knuckles",
		weapon_knife = "Knife",
		weapon_machete = "Machete",
		weapon_switchblade = "Switchblade",
		weapon_nightstick = "Nightstick",
		weapon_wrench = "Pipe Wrench",
		weapon_battleaxe = "Battle Axe",
		weapon_poolcue = "Pool Cue",
		weapon_stone_hatchet = "Stone Hatchet",

		weapon_pistol = "Pistol",
		weapon_pistol_mk2 = "Pistol Mk II",
		weapon_combatpistol = "Combat Pistol",
		weapon_appistol = "AP Pistol",
		weapon_stungun = "Stun Gun",
		weapon_pistol50 = "Pistol .50",
		weapon_snspistol = "SNS Pistol",
		weapon_snspistol_mk2 = "SNS Pistol Mk II",
		weapon_heavypistol = "Heavy Pistol",
		weapon_vintagepistol = "Vintage Pistol",
		weapon_flaregun = "Flare Gun",
		weapon_marksmanpistol = "Marksman Pistol",
		weapon_revolver = "Heavy Revolver",
		weapon_revolver_mk2 = "Heavy Revolver Mk II",
		weapon_doubleaction = "Double Action Revolver",
		weapon_raypistol = "Up-n-Atomizer",
		weapon_ceramicpistol = "Ceramic Pistol",
		weapon_navyrevolver = "Navy Revolver",
		weapon_gadgetpistol = "Perico Pistol",

		weapon_microsmg = "Micro SMG",
		weapon_smg = "SMG",
		weapon_smg_mk2 = "SMG Mk II",
		weapon_assaultsmg = "Assault SMG",
		weapon_combatpdw = "Combat PDW",
		weapon_machinepistol = "Machine Pistol",
		weapon_minismg = "Mini SMG",
		weapon_raycarbine = "Unholy Hellbringer",

		weapon_pumpshotgun = "Pump Shotgun",
		weapon_pumpshotgun_mk2 = "Pump Shotgun Mk II",
		weapon_sawnoffshotgun = "Sawed-Off Shotgun",
		weapon_assaultshotgun = "Assault Shotgun",
		weapon_bullpupshotgun = "Bullpup Shotgun",
		weapon_musket = "Musket",
		weapon_heavyshotgun = "Heavy Shotgun",
		weapon_dbshotgun = "Double Barrel Shotgun",
		weapon_autoshotgun = "Sweeper Shotgun",
		weapon_combatshotgun = "Combat Shotgun",

		weapon_assaultrifle = "Assault Rifle",
		weapon_assaultrifle_mk2 = "Assault Rifle Mk II",
		weapon_carbinerifle = "Carbine Rifle",
		weapon_carbinerifle_mk2 = "Carbine Rifle Mk II",
		weapon_advancedrifle = "Advanced Rifle",
		weapon_specialcarbine = "Special Carbine",
		weapon_specialcarbine_mk2 = "Special Carbine Mk II",
		weapon_bullpuprifle = "Bullpup Rifle",
		weapon_bullpuprifle_mk2 = "Bullpup Rifle Mk II",
		weapon_compactrifle = "Compact Rifle",
		weapon_militaryrifle = "Military Rifle",

		weapon_mg = "MG",
		weapon_combatmg = "Combat MG",
		weapon_combatmg_mk2 = "Combat MG Mk II",
		weapon_gusenberg = "Gusenberg Sweeper",

		weapon_sniperrifle = "Sniper Rifle",
		weapon_heavysniper = "Heavy Sniper",
		weapon_heavysniper_mk2 = "Heavy Sniper Mk II",
		weapon_marksmanrifle = "Marksman Rifle",
		weapon_marksmanrifle_mk2 = "Marksman Rifle Mk II",

		weapon_rpg = "RPG",
		weapon_grenadelauncher = "Grenade Launcher",
		weapon_grenadelauncher_smoke = "Grenade Launcher Smoke",
		weapon_minigun = "Minigun",
		weapon_firework = "Firework Launcher",
		weapon_railgun = "Railgun",
		weapon_hominglauncher = "Homing Launcher",
		weapon_compactlauncher = "Compact Grenade",
		weapon_rayminigun = "Widowmaker",

		weapon_grenade = "Grenade",
		weapon_bzgas = "BZ Gas",
		weapon_molotov = "Molotov Cocktail",
		weapon_stickybomb = "Sticky Bomb",
		weapon_proxmine = "Proximity Mines",
		weapon_snowball = "Snowballs",
		weapon_pipebomb = "Pipe Bombs",
		weapon_ball = "Baseball",
		weapon_smokegrenade = "Smoke Grenade", -- NOTE: this is called "Tear Gas" in the native game for some reason
		weapon_flare = "Flare",

		weapon_petrolcan = "Jerry Can",
		gadget_parachute = "Parachute",
		weapon_fireextinguisher = "Fire Extinguisher",
		weapon_hazardcan = "Hazardous Jerry Can",

		weapon_dagger_description = "You've been rocking the pirate-chic look for a while, but no vicious weapon to complete the look? Get this dagger with a guarded hilt.",
		weapon_bat_description = "Aluminum baseball bat with leather grip. Lightweight yet powerful for all you big hitters out there.",
		weapon_bottle_description = "It's not clever and it's not pretty but, most of the time, neither is the guy coming at you with a knife. When all else fails, this gets the job done.",
		weapon_crowbar_description = "Heavy-duty crowbar forged from high quality, tempered steel for that extra leverage you need to get the job done.",
		weapon_unarmed_description = "When all else fails, knuckle down and work with what you've got.",
		weapon_flashlight_description = "Intensify your fear of the dark with this short range, battery-powered light source. Handy for blunt force trauma.",
		weapon_golfclub_description = "Standard length, mid iron golf club with rubber grip for a lethal short game.",
		weapon_hammer_description = "A robust, multi-purpose hammer with wooden handle and curved claw, this old classic still nails the competition.",
		weapon_hatchet_description = "Make kindling... of your pals with this easy to wield, easy to hide hatchet.",
		weapon_knuckle_description = "Perfect for knocking out gold teeth, or as a gift to the trophy partner who has everything.",
		weapon_knife_description = "This carbon steel 7\" bladed knife is dual edged with a serrated spine to provide improved stabbing and thrusting capabilities.",
		weapon_machete_description = "America's West African arms trade isn't just about giving. Rediscover the simple life with this rusty cleaver.",
		weapon_switchblade_description = "From your pocket to hilt-deep in the other guy's ribs in under a second: folding knives will never go out of style.",
		weapon_nightstick_description = "24\" polycarbonated side-handled nightstick.",
		weapon_wrench_description = "Perennial favourite of apocalyptic survivalists and violent fathers the world over, apparently it also doubles as some kind of tool.",
		weapon_battleaxe_description = "If it's good enough for medieval foot soldiers, modern border guards and pushy soccer moms, it's good enough for you.",
		weapon_poolcue_description = "Ah, there's no sound as satisfying as the crack of a perfect break, especially when it's the other guy's spine.",
		weapon_stone_hatchet_description = "2.5 million years of R&D and we're still here.",

		weapon_pistol_description = "Standard handgun. A .45 caliber combat pistol with a magazine capacity of 12 rounds that can be extended to 16.",
		weapon_pistol_mk2_description = "Balance, simplicity, precision: nothing keeps the peace like an extended barrel in the other guy's mouth.",
		weapon_combatpistol_description = "A compact, lightweight semi-automatic pistol designed for law enforcement and personal defense use. 12-round magazine with option to extend to 16 rounds.",
		weapon_appistol_description = "High-penetration, fully-automatic pistol. Holds 18 rounds in magazine with option to extend to 36 rounds.",
		weapon_stungun_description = "Fires a projectile that administers a voltage capable of temporarily stunning an assailant. Takes approximately 4 seconds to recharge after firing.",
		weapon_pistol50_description = "High-impact pistol that delivers immense power but with extremely strong recoil. Holds 9 rounds in magazine.",
		weapon_snspistol_description = "Like condoms or hairspray, this fits in your pocket for a night on the town. The price of a bottle at a club, it's half as accurate as a champagne cork, and twice as deadly.",
		weapon_snspistol_mk2_description = "The ultimate purse filler: if you want to make Saturday Night really special, this is your ticket.",
		weapon_heavypistol_description = "The heavyweight champion of the magazine fed, semi-automatic handgun world. Delivers accuracy and a serious forearm workout every time.",
		weapon_vintagepistol_description = "What you really need is a more recognizable gun. Stand out from the crowd at an armed robbery with this engraved pistol.",
		weapon_flaregun_description = "Use to signal distress or drunken excitement. Warning: pointing directly at individuals may cause spontaneous combustion. Part of Heists.",
		weapon_marksmanpistol_description = "Not for the risk averse. Make it count as you'll be reloading as much as you shoot.",
		weapon_revolver_description = "A handgun with enough stopping power to drop a crazed rhino, and heavy enough to beat it to death if you're out of ammo.",
		weapon_revolver_mk2_description = "If you can lift it, this is the closest you'll get to shooting someone with a freight train.",
		weapon_doubleaction_description = "Because sometimes revenge is a dish best served six times, in quick succession, right between the eyes.",
		weapon_raypistol_description = "Republican Space Ranger Special, fresh from the galactic war on socialism: no ammo, no mag, just one brutal energy pulse after another.",
		weapon_ceramicpistol_description = "Not your grandma's ceramics. Although this pint-sized pistol is small enough to fit into her purse and won't set off a metal detector.",
		weapon_navyrevolver_description = "A true museum piece. You want to know how the West was won - slow reload speeds and a whole heap of bloodshed.",
		weapon_gadgetpistol_description = "A deadly shot. Don't be precious. You won't scuff the titanium nitride finish.",

		weapon_microsmg_description = "Combines compact design with a high rate of fire at approximately 700-900 rounds per minute.",
		weapon_smg_description = "This is known as a good all-around submachine gun. Lightweight with an accurate sight and 30-round magazine capacity.",
		weapon_smg_mk2_description = "Lightweigt, compact, with a rate of fire to die very messily for: turn any confined space into a kill box at the click of a well-oiled trigger.",
		weapon_assaultsmg_description = "A high-capacity submachine gun that is both compact and lightweight. Holds up to 30 bullets in one magazine.",
		weapon_combatpdw_description = "Who said personal weaponry couldn't be worthy of military personnel? Thanks to our lobbyists, not Congress. Integral suppressor.",
		weapon_machinepistol_description = "This fully automatic is the snare drum to your twin-engine V8 bass: no drive-by sounds quite right without it.",
		weapon_minismg_description = "Increasingly popular since the marketing team looked beyond spec ops units and started caring about the little guys in low income areas.",
		weapon_raycarbine_description = "Republican Space Ranger Special. If you want to turn a little green man into little green goo, this is the only American way to do it.",

		weapon_pumpshotgun_description = "Standard shotgun ideal for short-range combat. A high-projectile spread makes up for its lower accuracy at long range.",
		weapon_pumpshotgun_mk2_description = "Only one thing pumps more than action than a pump action: watch out, the recoil is almost as deadly as the shot.",
		weapon_sawnoffshotgun_description = "This single-barrel, sawed-off shotgun compensates for its low range and ammo capacity with devastating efficiency in close combat.",
		weapon_assaultshotgun_description = "Fully automatic shotgun with 8 round magazine and high rate of fire.",
		weapon_bullpupshotgun_description = "More than makes up for its slow, pump-action rate of fire with its range and spread. Decimates anything in its projectile path.",
		weapon_musket_description = "Armed with nothing but muskets and a superiority complex, the Brits took over half the world. Own the gun that built an Empire.",
		weapon_heavyshotgun_description = "The weapon to reach for when you absolutely need to make a horrible mess of the room. Best used near easy-wipe surfaces only.",
		weapon_dbshotgun_description = "Do one thing, do it well. Who needs a high fire rate when your first shot turns the other guy into a fine mist?",
		weapon_autoshotgun_description = "How many effective tools for riot control can you tuck into your pants? OK, two. But this is the other one.",
		weapon_combatshotgun_description = "There's only one semi-automatic shotgun with a fire rate that sets the LSFD alarm bells ringing, and you're looking at it.",

		weapon_assaultrifle_description = "This standard assault rifle boasts a large capacity magazine and long distance accuracy.",
		weapon_assaultrifle_mk2_description = "The definitive revision of an all-time classic: all it takes is a little work, and looks can kill after all.",
		weapon_carbinerifle_description = "Combining long distance accuracy with a high capacity magazine, the Carbine Rifle can be relied on to make the hit.",
		weapon_carbinerifle_mk2_description = "This is bespoke, artisan firepower: you couldn't deliver a hail of bullets with more love and care if you inserted them by hand.",
		weapon_advancedrifle_description = "The most lightweight and compact of all assault rifles, without compromising accuracy and rate of fire.",
		weapon_specialcarbine_description = "Combining accuracy, maneuverability, firepower and low recoil, this is an extremely versatile assault rifle for any combat situation.",
		weapon_specialcarbine_mk2_description = "The jack of all trades just got a serious upgrade: bow to the master.",
		weapon_bullpuprifle_description = "The latest Chinese import taking America by storm, this rifle is known for its balanced handling. Lightweight and very controllable in automatic fire.",
		weapon_bullpuprifle_mk2_description = "So precise, so exquisite, it's not so much a hail of bullets as a symphony.",
		weapon_compactrifle_description = "Half the size, all the power, double the recoil: there's no riskier way to say \"I'm compensating for something\".",
		weapon_militaryrifle_description = "This immensely powerful assault rifle was designed for highly qualified, exceptionally skilled soldiers. Yes, you can buy it.",

		weapon_mg_description = "General purpose machine gun that combines rugged design with dependable performance. Long range penetrative power. Very effective against large groups.",
		weapon_combatmg_description = "Lightweight, compact machine gun that combines excellent maneuverability with a high rate of fire to devastating effect.",
		weapon_combatmg_mk2_description = "You can never have too much of a good thing: after all, if the first shot counts, then the next hundred or so must count for double.",
		weapon_gusenberg_description = "Complete your look with a Prohibition gun. Looks great sticking out the window of a Roosevelt or paired with a pinstripe suit.",

		weapon_sniperrifle_description = "Standard sniper rifle. Ideal for situations that require accuracy at long range. Limitations include slow reload speed and very low rate of fire.",
		weapon_heavysniper_description = "Features armor-piercing rounds for heavy damage. Comes with laser scope as standard.",
		weapon_heavysniper_mk2_description = "Far away, yet always intimate: if you're looking for a secure foundation for that long-distance relationship, this is it.",
		weapon_marksmanrifle_description = "Whether you're up close or a disconcertingly long way away, this weapon will get the job done. A multi-range tool for tools.",
		weapon_marksmanrifle_mk2_description = "Known in military circles as The Dislocator, this mod set will destroy both the target and your shoulder, in that order.",

		weapon_rpg_description = "A portable, shoulder-launched, anti-tank weapon that fires explosive warheads. Very effective for taking down vehicles or large groups of assailants.",
		weapon_grenadelauncher_description = "A compact, lightweight grenade launcher with semi-automatic functionality. Holds up to 10 rounds.",
		weapon_grenadelauncher_smoke_description = "\"You get a smoke grenade, You get a smoke grenade, You get a smoke grenade\" - Oprah",
		weapon_minigun_description = "A devastating 6-barrel machine gun that features Gatling-style rotating barrels. Very high rate of fire (2000 to 6000 rounds per minute).",
		weapon_firework_description = "Put the flair back in flare with this firework launcher, guaranteed to raise some oohs and aahs from the crowd.",
		weapon_railgun_description = "All you need to know is - magnets, and it does horrible things to the things it's pointed at.",
		weapon_hominglauncher_description = "Infrared and guided fire-and-forget missile launcher. For all your moving target needs.",
		weapon_compactlauncher_description = "Focus groups using the regular model suggested it was too accurate and found it awkward to use with one hand on the throttle. Easy fix.",
		weapon_rayminigun_description = "Republican Space Ranger Special. GO AHEAD, SAY I'M COMPENSATING FOR SOMETHING. I DARE YOU.",

		weapon_grenade_description = "Standard fragmentation grenade. Pull pin, throw, then find cover. Ideal for eliminating clustered assailants.",
		weapon_bzgas_description = "Use for hot-boxing people you don't like.",
		weapon_molotov_description = "Crude yet highly effective incendiary weapon. No happy hour with this cocktail.",
		weapon_stickybomb_description = "A plastic explosive charge fitted with a remote detonator. Can be thrown and then detonated or attached to a vehicle then detonated.",
		weapon_proxmine_description = "Leave a present to your friends with these motion sensor landmines. Short delay after activation.",
		weapon_snowball_description = "Be on the lookout and ready to round up your Crew for a friendly snowball fight, but be forewarned, those icy little suckers can pack a wallop.",
		weapon_pipebomb_description = "Remember, it doesn't count as an IED when you buy it in a store and use it in a first world country.",
		weapon_ball_description = "Signed by Babe Ruth, totally not a fake.",
		weapon_smokegrenade_description = "Tear gas grenade, particularly effective at incapacitating multiple assailants. Sustained exposure can be lethal.",
		weapon_flare_description = "Throw for air drop.",

		weapon_petrolcan_description = "Leaves a trail of gasoline that can be ignited.<br><br>Gasoline remaining: ${petrolAmount}%.",
		gadget_parachute_description = "This nylon sports parachute features a ram-air parafoil design for increased control over direction and speed.",
		weapon_fireextinguisher_description = "Fire extinguisher aka \"Smoke machine\".",
		weapon_hazardcan_description = "Like a gas can, but useless.",

		-- NOTE: Addon weapons
		weapon_addon_huntingrifle = "Hunting Rifle",
		weapon_addon_huntingrifle_description = "Your go-to rifle for hunting purposes.",

		weapon_addon_vfcombatpistol = "VF Combat Pistol",
		weapon_addon_vfcombatpistol_description = "Smile and wait for the flash.",

		weapon_addon_dp9 = "D&P 9 Pistol",
		weapon_addon_dp9_description = "12 chances to catch the Dub.",

		weapon_addon_dutypistol = "Beretta M9",
		weapon_addon_dutypistol_description = "The original wireless home protection system.",

		weapon_addon_gardonepistol = "Gardone Pistol",
		weapon_addon_gardonepistol_description = "When in doubt, empty the magazine.",

		weapon_addon_endurancepistol = "Endurance Pistol",
		weapon_addon_endurancepistol_description = "The viagra of handguns",

		weapon_addon_sentinelshotgun = "Sentinel Shotgun",
		weapon_addon_sentinelshotgun_description = "Unidirectional Murder Dispenser.",

		weapon_addon_sentinelbbshotgun = "Beanbag Shotgun",
		weapon_addon_sentinelbbshotgun_description = "Is it gold plated? Well, we can't debate on that but when it comes to plating people down, this is the weapon of choice.",

		-- TODO: Add a description for this one
		weapon_addon_stungun = "Coil Stun Gun",
		weapon_addon_stungun_description = ""
	},

	items = {
		move_to_repair = "Move here to repair the vehicle.",
		repairing_vehicle = "Repairing Vehicle",
		using_first_aid_kit = "Using First Aid Kit",
		using_ifak = "Using IFAK",
		move_to_wash = "Move here to wash the vehicle",
		move_to_put_fake_plate = "Move here to put on a fake license plate.",
		unable_to_repair = "You are unable to repair the vehicle while there are players inside.",
		failed_lockpicking = "Failed Lockpicking",
		lockpicking_succeeded = "Lockpicking Succeeded.",
		hotwiring_vehicle = "Hotwiring Vehicle",
		lockpick_broke = "Lockpick Broke",
		failed_hotwire = "Failed Hotwire",
		rolling_joint = "Rolling Joint",
		rolling_joints = "Rolling Joints",
		changing_license_plate = "Changing License Plate",
		unable_to_change_license_plate = "You are unable to change the license plate while there are players inside the vehicle.",
		equipping_parachute = "Equipping Parachute",
		lockpicking_vehicle = "Lockpicking Vehicle",
		illegal_weather_name = "Attempting to use a weather spell with an illegal weather name.",
		equipping_body_armor = "Equipping Body Armor",
		illegal_burger_shot_delivery_item_id = "Attempting to use a burger shot delivery item with with an illegal item id.",
		illegal_lighter_item_id = "Attempting to use a lighter item with with an illegal item id.",
		unable_to_use_lighter_in_vehicle = "You are not able to use a lighter in a vehicle.",
		not_possible_in_a_vehicle = "This action is not possible in a vehicle.",

		logs_used_weather_spell_title = "Used Weather Spell",
		logs_used_weather_spell_details = "${consoleName} used weather spell `${itemName}`."
	},

	login = {
		loading_character = "Loading Character...",
		deleting_character = "Deleting Character...",
		fetching_character_data = "Fetching Character Data...",
		complete = "Complete",
		welcome_to = "Welcome to",
		press = "Press",
		enter = "ENTER",
		to_join = "to join",
		main_menu = "Main Menu",
		disconnect = "Disconnect",
		disconnect_confirm = "Are you sure you want to disconnect from the server?",
		yes = "Yes",
		no = "No",
		name = "Name",
		dob = "DOB",
		gender = "Gender",
		cash = "Cash",
		bank = "Bank",
		story = "Story",
		empty_slot = "Empty Slot",
		new_character = "New Character",
		select_character = "Select Character",
		delete_character = "Delete Character",
		delete_character_confirm = "Are you sure you want to delete this character?",
		create_character = "Create Character",
		first_name = "First Name",
		last_name = "Last Name",
		date_of_birth = "Date Of Birth",
		male = "Male",
		female = "Female",
		character_backstory = "Character Backstory",
		cancel = "Cancel",
		action_can_not_be_undone = "This action can not be undone.",
		exit_city = "Exit the city.",
		press_to_exit_city = "Press ~g~${InteractionKey} ~w~to exit the city.",
		character_slot_occupied = "This character slot is already occupied.",
		something_went_wrong = "Something went wrong while trying to create your character.",
		name_already_taken = "This name is already taken.",
		bad_words = "There are some bad words in your character name or backstory.",
		disallowed_name = "There are some disallowed words in your character name.",
		illegal_character_slot = "You are not able to create a character in this slot.",
		missing_character_creation_data = "Missing character creation data.",
		character_already_loaded = "You already have a character loaded.",
		bad_words_in_character_creation = "Attempted to create a character with a possibly bad word in either the name or backstory: \"${badWords}\"",
		disallowed_words_in_character_name = "Attempted to create a character with a possibly bad name: \"${characterName}\"",
		discord = "Discord",
		you_have_disconnected_from_the_server = "You have disconnected from the server.",
		notice = "Notice"
	},

	lucky_wheel = {
		spin_lucky_wheel = "Press ~INPUT_CONTEXT~ to spin the Lucky Wheel. The cost is $${cost}.",
		spin_lucky_wheel_for_free = "Press ~INPUT_CONTEXT~ to spin the Lucky Wheel. You have one free spin left today.",
		unable_to_spin_lucky_wheel = "You have already spun the Lucky Wheel as much as permitted today. Come back later for another spin!",
		lucky_wheel_is_occupied = "The Lucky Wheel is currently occupied. Please wait.",
		not_enough_balance_to_spin = "You do not have enough money to spin the wheel. The cost is $${cost}.",
		logs_lucky_wheel_reward_title = "Lucky Wheel Reward",
		logs_lucky_wheel_reward_vehicle_details = "${consoleName} has spun the wheel and won a vehicle.",
		logs_lucky_wheel_reward_vehicle_given_details = "${consoleName} has been successfully given a vehicle with model name `${modelName}`.",
		logs_lucky_wheel_reward_money_details = "${consoleName} has spun the wheel and won $${amount}.",
		logs_lucky_wheel_reward_jewelry_details = "${consoleName} has spun the wheel and won jewelry with the name of `${itemName}`.",
		logs_lucky_wheel_reward_item_details = "${consoleName} has spun the wheel and won an item with the name of `${itemName}`.",
		logs_lucky_wheel_reward_queue_priority_details = "${consoleName} has spun the wheel and won one week of queue priority."
	},

	miscellaneous = {
		language_unavailable = "Language `${languageCode}` is not available yet. If you would like to create localization for this language, feel free to join the OP-FW development discord guild for more information at ${frameworkDiscord}!",
		same_language = "You already have ${languageCode} as your set language.",
		language_set = "Your preferred language has now been set to ${languageCode}.",
		current_language = "Current Language",
		available_language_codes = "Available Languages",
		ping_pong = "Pong!",
		ping_response = "${ping}ms (callback time: ${callbackTime}ms)",
		ooc_first_time = "We see you have not yet used /ooc! Before letting you use it, we would like to give you a small warning. The /ooc command is only to be used in immediate situations, and any and all non-immediate questions or messages should be redirected towards our discord guild at ${communityDiscord}. That's all! To start using /ooc, type /ooc_on. You will be able to turn it off again with /ooc_off.",
		ooc_not_logged_in = "You are not logged in.",
		ooc_timed_out = "You are currently timed out from the OOC chat. Please wait.",
		ooc_muted_no_reason = "You have been muted from the global OOC chat without a specified reason.",
		ooc_muted = "You have been muted from the global OOC chat for reason `${reason}`.",
		global_ooc_title = "OOC ${playerDescriptor}",
		local_ooc_title = "LOCAL OOC ${playerDescriptor}",
		ooc_is_disabled = "You have disabled the global OOC chat.",
		ooc_enabled = "Global OOC has now been enabled.",
		ooc_already_enabled = "Global OOC is already enabled.",
		ooc_disabled = "Global OOC has now been disabled.",
		ooc_already_disabled = "Global OOC is already disabled.",
		ooc_local_logs_title = "Local OOC message",
		ooc_local_logs_details = "${consoleName} sent the following message in the local OOC chat: `${oocMessage}`.",
		ooc_global_logs_title = "Global OOC message",
		ooc_global_logs_details = "${consoleName} sent the following message in the global OOC chat: `${oocMessage}`.",
		bad_ooc_message = "Attempted to post a possibly bad message in the OOC chat: `${oocMessage}`",
		mute_toggle_not_staff = "Player attempted to mute a player, but didn't have correct permissions to do so.",
		unmute_toggle_not_staff = "Player attempted to unmute a player, but didn't have correct permissions to do so.",
		user_not_found = "We were unable to find a user with server ID `${serverId}`.",
		player_already_muted = "${consoleName} has already been muted.",
		player_has_been_muted_no_reason = "${consoleName} has now been muted without a specified reason.",
		player_has_been_muted = "${consoleName} has now been muted with reason: `${reason}`.",
		player_not_muted = "${consoleName} is not muted.",
		player_has_been_unmuted = "${consoleName} has now been unmuted.",
		clear_chat_not_admin = "Player attempted to clear the chat for all players, but didn't have proper permissions to do so.",
		yes = "yes",
		ooc_clear_chat_title = "Chat Cleared",
		ooc_clear_chat_details = "${consoleName} cleared the chat for everyone.",
		muted_player = "Muted Player",
		muted_player_no_reason_details = "${consoleName} muted ${targetConsoleName} without any specified reason.",
		muted_player_details = "${consoleName} muted ${targetConsoleName} with reason `${muteReason}`.",
		player_muted = "Player Muted",
		player_muted_no_reason_details = "${targetConsoleName} was muted by ${consoleName} without any specified reason.",
		player_muted_details = "${targetConsoleName} was muted by ${consoleName} with reason `${muteReason}`.",
		muted_self = "Muted Self",
		muted_self_no_reason_details = "${consoleName} muted themselves without any specified reason.",
		muted_self_details = "${consoleName} muted themselves with reason `${muteReason}`.",
		unmuted_self = "Unmuted Self",
		unmuted_self_details = "${consoleName} unmuted themselves.",
		unmuted_player = "Unmuted Player",
		unmuted_player_details = "${consoleName} unmuted ${targetConsoleName}.",
		player_unmuted = "Player Unmuted",
		player_unmuted_details = "${targetConsoleName} has been unmuted by ${consoleName}.",
		ooc_cancelled_same_as_last = "Your OOC message was cancelled as you attempted to send two identical messages in a row.",
		use_measurement_metric = "You have set your preferred system of measurement to metric.",
		use_measurement_imperial = "You have set your preferred system of measurement to imperial.",
		use_measurement_default = "You will now be using the locale's default system of measurement.",
		already_using_metric_measurement = "You already have metric set as your preferred measurement system.",
		already_using_imperial_measurement = "You already have imperial set as your preferred measurement system.",
		already_using_default_measurement = "You are already using the locale's default system of measurement.",
		no_copyright = "No Copyright",
		no_copyright_warning = "Hi! Are you a streamer or content creator where DMCA and copyright claims is a problem? If so, we suggest toggling the `${noCopyrightCommand}` command so that we can stop certain copyrighted material from showing and playing on your game. This feature starts working as soon as it is toggled.",
		no_copyright_enabled = "The 'No Copyright' feature has been enabled.",
		no_copyright_disabled = "The 'No Copyright' feature has been disabled.",
		server_tps = "Server TPS",
		server_tps_response = "${tps}"
	},

	notepads = {
		placeholder = "Take notes...",
		press_to_open = "Press ~INPUT_CONTEXT~ to open this Notepad.",
		notepad_busy = "Someone else is in this notepad.",
		dropped_notepad_title = "Notepad Dropped",
		dropped_notepad_text_and_pixels_title_details = "${consoleName} dropped a notepad with a drawing and text `${text}`.",
		dropped_notepad_text_title_details = "${consoleName} dropped a notepad with text `${text}`.",
		dropped_notepad_pixels_title_details = "${consoleName} dropped a notepad with a drawing.",
		dropped_notepad_pixels_penis_title_details = "${consoleName} dropped a notepad with a drawing that seems to resemble a penis.",
		updated_notepad_title = "Notepad Updated",
		updated_notepad_text_and_pixels_title_details = "${consoleName} updated a notepad with a drawing and text `${text}`.",
		updated_notepad_text_title_details = "${consoleName} updated a notepad with text `${text}`.",
		updated_notepad_pixels_title_details = "${consoleName} updated a notepad with a drawing.",
		updated_notepad_pixels_penis_title_details = "${consoleName} updated a notepad with a drawing that seems to resemble a penis."
	},

	objects = {
		saved_found_objects = "Saved `${foundObjectsAmount}` found objects with model `${modelName}` to a file on the server.",
		no_nearby_objects_with_model_found = "There were no nearby objects found with model `${modelName}`.",
		invalid_model_name = "The model `${modelName}` is not a valid model.",
		missing_model_name = "Missing model name."
	},

	overview = {
		header_title = "OP Framework - Overview UI",
		select_information = "Information",
		select_activity_points = "Activity Points",
		select_staff_points = "Staff Points",
		select_moderation = "Moderation",
		select_handling_overrides = "Handling Overrides",
		select_settings = "Settings",
		about_title = "About the overview UI",

		-- eh idk if putting entire chunks of html code is the way to go but for now it is xd
		about_text = [[
			This interface is meant to serve as an OOC interaction menu, information center and a data viewer for players.
			<br><br>
			For now, the only thing it's used to is to view the "job priority" status.
			<br><br>
			In the future, it is expected that much more features will be implemented such as:
			<ul class="list">
				<li>More in-depth viewing and management of whitelisted jobs for the people controlling them.</li>
				<li>Complex player statistics.</li>
				<li>An achivement system.</li>
				<li>Possibly a better report system for staff.</li>
				<li>More features for staff they can use to easier handle and control the server.</li>
				<li>...and much more, feel free to come with suggestions!</li>
			</ul>
			<br>
			Onto the future!
		]],

		about_activity_points_title = "About Activity Points",

		about_activity_points_text = [[
			You can gain activity points by being on-duty in jobs that offer these points. Currently, only the Medical/EMS and Law Enforcement/police jobs offer this.
			<br><br>
			Every minute, a certain amount of activity points is distributed in each job among the players who are on-duty. This means that if there are 4 players on-duty as police, each player will get 25% of the activity points that minute. The amount of activity points distributed is decided by taking the server's current player amount and dividing that by 32.
			<br><br>
			The activity points resets for everyone at the beginning of each week. If you had a certain amount of activity points, you will be given priority in the queue for the entire next week.
				<br><br>
				Activity points required for queue priority at this time:
				<ul class="list">
				<li>400: Low Job Priority.</li>
				<li>700: Medium Job Priority.</li>
				<li>1000: High Job Priority.</li>
			</ul>
		]],

		activity_points_this_week = "This Week",
		activity_points_last_week = "Last Week",
		activity_points_current = "Activity Points: <b>${activityPoints} + ${gainAmount}/minute</b>",
		activity_points_current_no_gain = "Activity Points: <b>${activityPoints}</b>",
		activity_points_goal_low = "<br><br>Your current activity goal is at 400 points for Low Job Priority, with <b>${remainingPoints} to go</b>!",
		activity_points_goal_medium = "<br><br>Your current activity goal is at 700 points for Medium Job Priority, with <b>${remainingPoints} to go</b>!",
		activity_points_goal_high = "<br><br>Your current activity goal is at 1000 points for High Job Priority, with <b>${remainingPoints} to go</b>!",
		activity_points_goal_none = "<br><br>You currently have no activity goals.",
		activity_points_not_enough = "You did not have enough activity points to qualify for queue priority last week.",
		activity_points_last_week_low = "Impressive, you had enough activity points last week to qualify for Low Job Priority in the queue!",
		activity_points_last_week_medium = "Amazing, you had enough activity points last week to qualify for Medium Job Priority in the queue!",
		activity_points_last_week_high = "Incredible, you had enough activity points last week to qualify for High Job Priority in the queue!",

		about_staff_points_title = "About Staff Points",

		about_staff_points_text = [[
			Similar to the activity points for jobs, you will gain staff points when you're in the server with your staff availability toggled on.
			<br><br>
			Every minute, a certain amount of staff points is distributed to all active staff members. This means that if there are 4 staff members active, each person will get 25% of the staff points that minute. The amount of staff points distributed is decided by taking the server's current player amount and dividing that by 32.
			<br><br>
			The staff points resets for everyone at the beginning of each week. Your eight most recent weeks will be available for display in a table below.
		]],

		staff_points_this_week = "This Week",
		staff_points_current = "Staff Points: <b>${staffPoints} + ${gainAmount}/minute</b>",
		staff_points_current_no_gain = "Staff Points: <b>${staffPoints}</b>",
		staff_points_table = "Staff Points Table",
		this_week = "This Week",
		one_week_ago = "1 Week Ago",
		two_weeks_ago = "2 Weeks Ago",
		three_weeks_ago = "3 Weeks Ago",
		four_weeks_ago = "4 Weeks Ago",
		five_weeks_ago = "5 Weeks Ago",
		six_weeks_ago = "6 Weeks Ago",
		seven_weeks_ago = "7 Weeks Ago",
		eight_weeks_ago = "8 Weeks Ago",
		previous_weeks_average = "Previous Weeks' Average",

		about_detection_areas_title = "Detection Areas",
		about_detection_areas_text = "Detection areas can be a useful tool for the staff members when trying to identify a cheater spawning in unwanted vehicles and/or peds. To create a detection area, use `/detection_area_add`. Once you've created an area, it will appear here. Only the latest 100 entities will be logged in each area.",
		detection_area_title = "Detection Area #${detectionAreaId}",

		about_sound_effects_title = "Sound Effects",
		about_sound_effects_text = "These fields allows you to override some sound effects. They require a link to an .oog file in order to work properly. It must also be an https:// URL and not an http:// one. An easy way of uploading a file would be to upload it to discord, then copy its link, and inserting it into the fields here.",
		radio_mic_click_on = "Radio Mic Click (On)",
		radio_mic_click_off = "Radio Mic Click (Off)",
		sound_effect_placeholder = "URL to .oog file...",
		sound_effect_save = "Save",
		sound_effect_reset = "Reset",

		december_1 = "1st of December",
		december_2 = "2nd of December",
		december_3 = "3rd of December",
		december_4 = "4th of December",
		december_5 = "5th of December",
		december_6 = "6th of December",
		december_7 = "7th of December",
		december_8 = "8th of December",
		december_9 = "9th of December",
		december_10 = "10th of December",
		december_11 = "11th of December",
		december_12 = "12th of December",
		december_13 = "13th of December",
		december_14 = "14th of December",
		december_15 = "15th of December",
		december_16 = "16th of December",
		december_17 = "17th of December",
		december_18 = "18th of December",
		december_19 = "19th of December",
		december_20 = "20th of December",
		december_21 = "21st of December",
		december_22 = "22nd of December",
		december_23 = "23rd of December",
		december_24 = "24th of December",
		hatch_closed = "CLOSED",
		hatch_open = "OPEN",
		hatch_claim = "CLAIM",
		hatch_opened = "CLAIMED",
		hatch_waiting = "WAITING",

		about_advent_calendar_title = "About The Advent Calendar",
		about_advent_calendar_text = [[
			The advent calendar is a holiday feature meant to bring some more joy to the players of ${communityName} throughout the month of December!
			<br><br>
			Every day, another hatch will become available, containing money, an item, a vehicle or something else. All hatches belonging to a previous date will be available. Once a hatch has been opened, you must claim it in order to receive it. Opening and collecting will become impossible after the 25th of December.
			<br><br>
			Next hatch unlocks in ${time}.
		]],

		unlocks_in_days_hours_minutes_seconds = "${days} days, ${hours} hours, ${minutes} minutes and ${seconds} seconds",
		unlocks_in_hours_minutes_seconds = "${hours} hours, ${minutes} minutes and ${seconds} seconds",
		unlocks_in_minutes_seconds = "${minutes} minutes and ${seconds} seconds",
		unlocks_in_seconds = "${seconds} seconds",
		unlocks_in_an_unknown_amount_of_time = "an unknown amount of time",

		unopened_hatch = "Unopened Hatch",
		won_money = "${amount} Cash", -- uh for some reason the (js) locale system doesn't seem to like two $$ after each other here and I'm too incompetent to figure out so if you know how to fix it pls let me know tnx!! or just leave it at 1 $ like this :)
		won_vehicle = "Vehicle (Christmas Special)",
		won_queue_priority = "A Week Of Queue Priority!",

		about_handling_overrides_title = "Handling Overrides",
		about_handling_overrides_text = "Create temporary handling overrides for handling classes dynamically. The overrides will last until they're removed or the server restarts. The overrides will be set for all players on the server.",
		add_override = "Add Override",
		add = "Add",
		model_name = "Model name...",
		field_name = "Field...",
		value = "Value...",
		current_overrides = "Current Overrides",

		about_explosion_events_title = "Explosion Events",
		about_explosion_events_about = "In here information about the last 500 explosion events are logged. This should help staff to find modders.",
		about_unusual_explosions = "Unusual explosion events that don't occur normally.",
		explosions_by_type_title = "Explosions by type",
		players_causing_explosions_title = "Players causing explosions",
		show_common_events_off = "Show common events: OFF",
		show_common_events_on = "Show common events: ON",

		illegal_weapons_title = "Spawned weapons",
		illegal_weapons_about = "In here the last 500 occurences of spawned in weapons detected by the system are logged. When someone has a spawned in weapon, it doesn't necessarily mean they are modding, as modders can spawn weapons into other players hands and therefore other players would show up on here too.",
		illegal_weapons_by_type = "Weapons by type",
		players_with_spawned_weapons = "Players with spawned weapons"
	},

	pawn_shops = {
		sell_items = "Sell ${itemLabel}",
		press_to_sell_items = "[${InteractionKey}] Sell ${itemLabel}",
		sold_items = "Sold ${sellAmount}x ${itemLabel} for $${sellPrice}.",
		no_items_to_sell = "You have no ${itemLabel} to sell.",
		illegal_pawn_shop_id = "Attempting to pass values for a pawn shop that doesn't exist.",
		used_pawn_shop_title = "Used Pawn Shop",
		used_pawn_shop_details = "${consoleName} used a pawn shop and sold ${sellAmount} `${itemLabel}` and received $${sellPrice}."
	},

	ped_messages = {
		attempt_succeeded = "attempted ${attemptMessage} and succeeded",
		attempt_failed = "attempted ${attemptMessage} but failed",
		dice_message = "rolled a dice and got a ${diceNumber}",
		roll_message = "rolled a custom dice with settings ${rolls}d${max} and got ${totalValue}",
		card_message = "drew a card and got ${cardLabel}",
		citizen_card_message = "showed a citizen card (${characterId})",
		badge_message = "showed a badge (${characterId})",
		ped_message_logs_title = "Ped Message",
		ped_message_logs_details = "${consoleName} sent a ped message with the following message: `${pedMessage}`",
		attached_ped_message_logs_title = "Attached Ped Message",
		attached_ped_message_logs_details = "${consoleName} attached a ped message with the following message: `${pedMessage}`",
		hearts_1 = "ace of hearts",
		hearts_2 = "two of hearts",
		hearts_3 = "three of hearts",
		hearts_4 = "four of hearts",
		hearts_5 = "five of hearts",
		hearts_6 = "six of hearts",
		hearts_7 = "seven of hearts",
		hearts_8 = "eight of hearts",
		hearts_9 = "nine of hearts",
		hearts_10 = "ten of hearts",
		hearts_11 = "jack of hearts",
		hearts_12 = "queen of hearts",
		hearts_13 = "king of hearts",
		diamonds_1 = "ace of diamonds",
		diamonds_2 = "two of diamonds",
		diamonds_3 = "three of diamonds",
		diamonds_4 = "four of diamonds",
		diamonds_5 = "five of diamonds",
		diamonds_6 = "six of diamonds",
		diamonds_7 = "seven of diamonds",
		diamonds_8 = "eight of diamonds",
		diamonds_9 = "nine of diamonds",
		diamonds_10 = "ten of diamonds",
		diamonds_11 = "jack of diamonds",
		diamonds_12 = "queen of diamonds",
		diamonds_13 = "king of diamonds",
		spades_1 = "ace of spades",
		spades_2 = "two of spades",
		spades_3 = "three of spades",
		spades_4 = "four of spades",
		spades_5 = "five of spades",
		spades_6 = "six of spades",
		spades_7 = "seven of spades",
		spades_8 = "eight of spades",
		spades_9 = "nine of spades",
		spades_10 = "ten of spades",
		spades_11 = "jack of spades",
		spades_12 = "queen of spades",
		spades_13 = "king of spades",
		clubs_1 = "ace of clubs",
		clubs_2 = "two of clubs",
		clubs_3 = "three of clubs",
		clubs_4 = "four of clubs",
		clubs_5 = "five of clubs",
		clubs_6 = "six of clubs",
		clubs_7 = "seven of clubs",
		clubs_8 = "eight of clubs",
		clubs_9 = "nine of clubs",
		clubs_10 = "ten of clubs",
		clubs_11 = "jack of clubs",
		clubs_12 = "queen of clubs",
		clubs_13 = "king of clubs",
		chat_ped_messages_enabled = "Ped messages will now show in the chat.",
		chat_ped_messages_disabled = "Ped messages will no longer show in the chat.",
		me_message_chat_title = "/me [${serverId}]",
		do_message_chat_title = "/do [${serverId}]",
		attempt_message_chat_title = "/attempt [${serverId}]",
		dice_message_chat_title = "/dice [${serverId}]",
		roll_message_chat_title = "/roll [${serverId}]",
		card_message_chat_title = "/card [${serverId}]",
		description_message_chat_title = "/description [${serverId}]",
		message_too_long = "The message contains too many characters or lines!"
	},

	ped_objects = {
		illegal_ped_object = "Attempting to add a ped object not in the 'allowed' list of ped objects."
	},

	ped_spawn = {
		ped_missing_model = "Missing model parameter.",
		ped_spawn_success = "Successfully spawned ped.",
		ped_failed_spawn = "Failed to spawn ped.",
		invalid_weapon = "Invalid weapon.",
		ped_remove_success = "Successfully removed spawned peds.",
		ped_failed_remove = "Failed to remove spawned peds.",
		ped_task_success = "Successfully assigned '${task}' task to spawned peds.",
		ped_failed_task = "Failed to assign '${task}' task to spawned peds.",
		invalid_target = "Invalid target server ID.",
		missing_task = "Missing task parameter.",
		invalid_task = "Invalid ped task '${task}'.",
		target_required = "This ped task requires a valid target.",

		spawn_ped_missing_perms = "Attempted to spawn a ped without proper permissions.",
		remove_peds_missing_perms = "Attempted to remove spawned peds without proper permissions.",
		ped_assign_task_missing_perms = "Attempted to assign a task to spawned peds without proper permissions."
	},

	peds = {
		ped_robbing_injection = "Excessive ped-robbing! (Bypassed server-timeout, most likely using an injector to accomplish this.)",
		robbed_ped_logs_title = "Robbed Ped",
		robbed_ped_logs_details = "${consoleName} robbed a ped and received $${payout}."
	},

	phone = {
		-- Scripting Part:
		you_do_not_have_a_phone = "You do not have a phone.",

		-- UI Part:
		-- SOON:TM:
	},

	players = {
		player_left = "Player Left [${serverId}]"
	},

	pools = {
		pools_overflowing = "Pools Overflowing: ~r~${poolsOverflowing}"
	},

	prop_hunt = {
		prop_hunt_blip = "Prop Hunt"
	},

	props = {
		illegal_prop_item_id = "Player attempted to use a prop item with with an illegal item id.",
		spawn_prop_not_staff = "Player attempted to spawn a prop but they didn't have the requried permissions to do so.",
		managing_props_help = "You are currently managing props. Walk up to a prop and press ~INPUT_CONTEXT~ to pick it up.",
		press_to_pick_up = "[${InteractionKey}] Pick Up",
		pick_up = "Pick Up",
		picking_up = "Picking Up",
		press_to_destroy = "[${InteractionKey}] Destroy",
		destroy = "Destroy",
		destroying = "Destroying",
		prop = "Prop",
		model_parameter_missing = "The `model` parameter is missing.",
		model_parameter_invalid = "The model `${model}` is an invalid model.",
		model_parameter_is_not_an_object = "The model `${model}` is not an object.",
		spawned_prop_non_networked = "Spawned a non-networked prop with model `${model}`.",
		spawned_prop_networked = "Spawned a networked prop with model `${model}`.",
		failed_to_spawn_prop = "Failed to spawn prop with model `${model}`.",
		not_able_to_spawn_in_vehicle = "You can not be in a vehicle when spawning a prop.",
		not_able_to_spawn_while_dead = "You can not be dead when spawnig a prop.",
		not_able_to_spawn_while_moving = "You have to stand still when spawning a prop.",
		stand_still_to_place_prop = "You have to stand still to place a prop."
	},

	radio = {
		frequency = "Frequency",
		switch = "Switch",
		radio_turned_off = "The radio has been turned off.",
		radio_removed = "You have lost your radio.",
		no_radio = "You don't have a radio.",
		unable_to_use_radio_while_cuffed = "You can not use the radio while you are cuffed.",
		frequency_set_to = "The frequency has been set to ${frequency}.",
		frequency_already_set_to = "The frequency is already set to ${frequency}.",
		radio_volume_same = "The radio volume is already set to `${radioVolume}`.",
		radio_volume_reset = "The radio volume has now been reset.",
		radio_volume_set = "The radio volume has now been set to `${radioVolume}`.",
		radio_volume_current = "Your current radio volume is set to `${radioVolume}`.",
		radio_volume_current_default = "Your current radio volume is default.",
		radio_sound_effects_same = "The volume of the radio sound effects is already set to `${radioSoundEffects}`.",
		radio_sound_effects_reset = "The volume of the radio sound effects has now been reset.",
		radio_sound_effects_set = "The volume of the radio sound effects has now been set to `${radioSoundEffects}`.",
		radio_sound_effects_current = "The volume of the radio sound effects is currently set to `${radioSoundEffects}`.",
		radio_sound_effects_current_default = "The volume of the radio sound effects is currently default."
	},

	screenshots = {
		screenshot_created = "A screenshot has been successfully created.",
		screenshot_failed = "Failed to obtain a screenshot from the given user.",
		user_not_found_with_server_id = "Could not find a user with the given server ID.",
		invalid_lifespan_parameter = "The lifespan parameter is invalid.",
		invalid_server_id_parameter = "The server ID parameter is invalid.",
		missing_server_id_parameter = "The server ID parameter is missing."
	},

	security_cameras = {
		illegal_security_camera = "Attempting to tamper with illegal security cameras.",
		saved_security_cameras_to_file = "Saved `${amount}` security cameras to a file on the server.",
		no_nearby_security_cameras = "There are no nearby security cameras to save.",
		no_city_ping = "Failed to ping the city cameras.",
		offline = "Offline",
		camera_list = "Camera List",
		camera = "Camera ${cameraId}",
		mission_row_pd = "Mission Row PD",
		pillbox_hospital = "Pillbox Hospital",
		jewelry_store = "Rockford Hills Jewelry Store",
		principal_bank = "Principal Bank",
		boilingbroke_penitentiary = "Boilingbroke Penitentiary",
		fort_zancudo = "Fort Zancudo",
		del_perro_pier = "Del Perro Pier",
		flywheels_garage = "Flywheels Garage",
		sandy_shores_pd = "Sandy Shores PD",
		sandy_shores_hospital = "Sandy Shores Hospital",
		davis_sheriffs_station = "Davis Sheriff's Station",
		vespucci_pd = "Vespucci Police Station",
		rockford_hills_pd = "Rockford Hills PD",
		la_mesa_pd = "La Mesa PD",
		beaver_bush_ranger_station = "Beaver Bush Ranger Station",
		cinema = "Cinema",
		st_fiacre_hospital = "St. Fiacre Hospital",
		weazel_news = "Weazel News",
		palomino_fib_facility = "Palomino FIB Facility",
		bank_1 = "Legion Square Bank",
		bank_2 = "Rockford Hills Bank",
		bank_3 = "Alta Bank",
		bank_4 = "Burton Bank",
		bank_5 = "Banham Canyon Bank",
		bank_6 = "Grand Senora Bank",
		bank_7 = "Paleto Bay Bank",
		grocery_store_1 = "Davis LTD Gasoline",
		grocery_store_2 = "Strawberry 24/7",
		grocery_store_3 = "Murrieta Heights Rob's Liquor",
		grocery_store_4 = "Little Seoul LTD Gasoline",
		grocery_store_5 = "Vespucci Canals Rob's Liquor",
		grocery_store_6 = "Morningwood Rob's Liquor",
		grocery_store_7 = "Mirror Park LTD Gasoline",
		grocery_store_8 = "Downtown Vinewwood 24/7",
		grocery_store_9 = "Tataviam Mountains 24/7",
		grocery_store_10 = "Banham Canyon Rob's Liquor",
		grocery_store_11 = "Banham Canyon 24/7",
		grocery_store_12 = "Richman Glen LTD Gasoline",
		grocery_store_13 = "Chumash 24/7",
		grocery_store_14 = "Harmony 24/7",
		grocery_store_15 = "Grand Senora Rob's Liquor",
		grocery_store_16 = "Grand Senora 24/7",
		grocery_store_17 = "Sandy Shores Liquor Ace",
		grocery_store_18 = "Sandy Shores 24/7",
		grocery_store_19 = "Grapeseed LTD Gasoline",
		grocery_store_20 = "Mount Chiliad 24/7"
	},

	self_driving = {
		not_driving_a_vehicle = "You are not currently operating a vehicle.",
		not_a_self_driving_vehicle = "The vehicle you are operating does not support autopilot.",
		no_waypoint_set = "Please set a waypoint to mark your destination.",
		invalid_waypoint_set = "The waypoint you set cannot be driven to automatically.",
		self_driving_engaged = "The autopilot has been engaged. Press ~INPUT_SPRINT~ and ~INPUT_DUCK~ to control the crusie speed.",
		self_driving_disengaged = "The autopilot has been disengaged.",
		destination_too_close = "The marked destination is too close.",
		self_driving_could_not_be_engaged = "The autopilot coud not be engaged."
	},

	shield = {
		no_weapon_equipped = "You must have a weapon equipped in order to equip the ballistic shield.",
		no_shield = "You do not have a ballistic shield in your inventory."
	},

	shooting_ranges = {
		turn_on = "Turn On ($${cost})",
		turn_off = "Turn Off",
		toggle_through_targets = "Toggle Through Targets (${modelId})",
		increase_speed = "Increase Speed (${speedLevel})",
		decrease_speed = "Decrease Speed (${speedLevel})",
		increase_rotation = "Increase Rotation (${rotationLevel})",
		decrease_rotation = "Decrease Rotation (${rotationLevel})",
		clear_bullet_impacts = "Clear Bullet Impacts",
		illegal_shooting_spot_value = "Attempting to pass invalid values for shootings spots.",
		illegal_shooting_spot_id = "Attempting to pass values for a shootings spot that doesn't exist.",
		not_enough_cash = "You do not have enough cash."
	},

	skylift = {
		press_to_toggle_magnet = "Press ~INPUT_CONTEXT~ to toggle the magnet.",
		skylift_magnet_turned_off_logs_title = "Skylift Magnet Turned Off",
		skylift_magnet_turned_off_logs_details = "${consoleName} turned the Skylift magnet off.",
		skylift_magnet_turned_on_logs_title = "Skylift Magnet Turned On",
		skylift_magnet_turned_on_logs_details = "${consoleName} turned the Skylift magnet on.",
		skylift_attached_vehicle_logs_title = "Skylift Attached Vehicle",
		skylift_attached_vehicle_logs_details = "${consoleName} attached a vehicle to their Skylift."
	},

	snow = {
		hold_to_pick_up_snowballs = "Hold ~INPUT_CONTEXT~ to pick up snowballs."
	},

	sound_effects = {
		illegal_sound_effect = "Attempted to tell other clients to play an external sound effect.",
		played_sound_effect_for_everyone_title = "Played Sound Effect For Everyone",
		played_sound_effect_for_everyone_details = "${consoleName} played a sound effect for everyone. The sound effect had URL `${url}` and was set to play at volume level `${volume}`.",
		played_sound_effect_for_player_title = "Played Sound Effect For Player",
		played_sound_effect_for_player_details = "${consoleName} played a sound effect for ${targetConsoleName}. The sound effect had URL `${url}` and was set to play at volume level `${volume}`.",
		url_invalid = "The provided URL is not valid. It must be uploaded on a secure conenction. (https://)",
		url_missing = "Please add the URL to the sound you are trying to play.",
		error_invalid_url = "The provided URL was not valid. It must be uploaded on a secure conenction. (https://)",
		error_missing_url = "There was no URL provided.",
		error_no_permissions = "You did not have the required permissions to play this sound.",
		error_user_not_found = "We could not find your user data.",
		error_not_found = "An unknown error occurred.",
		played_sound_effect_for_player = "Played sound effect for ${consoleName}. The sound effect had URL `${url}` and was set to play at volume level `${volume}`.",
		played_sound_effect_for_everyone = "Played sound effect for everyone. The sound effect had URL `${url}` and was set to play at volume level `${volume}`."
	},

	spawn = {
		spawn_now = "Spawn Now",
		last_position = "Last Position"
	},

	spying = {
		microphone_bug_not_activated = "This bug has not beeen activated.",
		vehicle_tracker_not_activated = "This tracker has not beeen activated.",
		microphone_bug_active_with_battery = "This microphone bug is currently active. Its battery is at ${batteryPercentage}%. You can \"Use\" it to listen in on any conversations it may pick up.<br><br>Device Id: ${deviceId}.",
		microphone_bug_ran_out_of_battery = "This microphone bug has run out of battery. The phyiscal microphone bug will decay after a week.<br><br>Device Id: ${deviceId}.",
		vehicle_tracker_active_with_battery = "This vehicle tracker is currently active. Its battery is at ${batteryPercentage}%. As long as the vehicle this tracker is attached to is available, it will display on your map.<br><br>Device Id: ${deviceId}.",
		vehicle_tracker_ran_out_of_battery = "This vehicle tracker has run out of battery. The phyiscal vehicle tracker will decay after a week.<br><br>Device Id: ${deviceId}",
		scanning_for_devices = "Scanning For Devices",
		searching_for_devices = "Searching For Devices",
		no_nearby_vehicle = "No nearby vehicle.",
		placing_vehicle_tracker = "Placing Vehicle Tracker",
		error_using_vehicle_tracker = "There was an error while trying to place the vehicle tracker.",
		vehicle_tracker_placed = "The vehicle tracker has been successfully placed.",
		error_using_microphone_bug = "There was an error while trying to place the microphone bug.",
		microphone_bug_placed = "The microphone bug has been successfully placed.",
		placing_microphone_bug_on_vehicle = "Placing Bug On Vehicle",
		placing_microphone_bug_on_player = "Placing Bug On Player",
		placing_microphone_bug_on_ground = "Placing Bug On Ground",
		error_using_device_scanner = "There was an error while trying to use the device scanner.",
		error_searching_for_devices = "There was an error while trying to search for devices.",
		found_devices = "Found ${totalDevices} devices.",
		no_nearby_devices_found = "No nearby devices found.",
		microphone_bug = "Microphone Bug",
		microphone_bug_destroy = "Microphone Bug\n[${InteractionKey}] Destroy",
		vehicle_tracker = "Vehicle Tracker",
		vehicle_tracker_destroy = "Vehicle Tracker\n[${InteractionKey}] Destroy",
		destroying_device = "Destroying Device",
		tracker_will_appear_on_map = "This tracker has already been activated. It will appear on your map for as long as the vehicle is available and the tracker has battery.",
		spy_ui_info = "Listening In On Microphone Bug (#${deviceId})",
		spy_ui_location = "${location}, ${time}",
		spy_ui_exit = "Press ESC to exit the Microphone Bug",
		spy_ui_connecting = "Connecting To Microphone Bug (#${deviceId})",
		spy_ui_connection_failed = "Failed To Connect To Microphone Bug (#${deviceId})",
		spy_ui_awaiting_data = "Awaiting data...",
		spy_ui_data_failed = "Data failed"
	},

	status = {
		status_reset = "Successfully reset the status for ${consoleName}.",
		status_reset_failed = "No user with server ID `${serverId}` was found.",
		reset_status_not_staff = "Attempted to reset a player's status without required permissions.",
		status_reset_for_all = "Successfully reset the status for everyone.",
		failed_to_set_body_armor_level = "Failed to execute the `/set_body_armor` command correctly.",
		set_body_armor_level_player = "Successfully set the body armor level for ${consoleName} to `${bodyArmorLevel}`.",
		set_body_armor_level_everyone = "Successfully set everyone's body armor level to `${bodyArmorLevel}`.",
		set_body_armor_level_self_title = "Set Body Armor Level For Self",
		set_body_armor_level_self_details = "${consoleName} set their own body armor level to `${bodyArmorLevel}`.",
		set_body_armor_level_everyone_title = "Set Body Armor Level For Everyone",
		set_body_armor_level_everyone_details = "${consoleName} set their everyone's body armor level to `${bodyArmorLevel}`.",
		set_body_armor_level_player_title = "Set Body Armor Level For Player",
		set_body_armor_level_player_details = "${consoleName} updated ${targetConsoleName} and set their body armor level to `${bodyArmorLevel}`.",
		set_body_armor_level_player_not_staff = "Player attempted to set another player's body armor level but they didn't have the requried permissions to do so.",
		set_body_armor_level_self_not_staff = "Player attempted to set their own body armor level but they didn't have the requried permissions to do so.",
		stress_level_warning = "You are stressed! Lower you stress by smoking Cigarettes, Joints or doing activities like Yoga."
	},

	sync = {
		missing_hour = "No hour provided.",
		invalid_hour = "Hour `${hour}`is invalid. The value should be between 0 and 23.",
		hour_changed = "The hour has now been set to `${hour}`.",
		set_hour_not_staff = "Attempted to set the hour without required permissions.",

		missing_minute = "No minute provided.",
		invalid_minute = "Minute `${minute}` is invalid. The value should be between 0 and 59.",
		minute_changed = "The minute has now been set to `${minute}`.",
		set_minute_not_staff = "Attempted to set the minute without required permissions.",

		missing_weather = "No weather provided.",
		invalid_weather = "Weather `${weatherName}` is not valid. Value weather names are CLEAR, EXTRASUNNY, CLOUDS, OVERCAST, RAIN, CLEARING, THUNDER, SMOG, FOGGY, XMAS, SNOWLIGHT and BLIZZARD.",
		weather_changed = "The weather has now been set to `${weatherName}`.",
		weather_advanced = "The weather has been advanced to `${weatherName}`.",
		weather_advance_fail = "Failed to advance the weather naturally.",
		set_weather_not_staff = "Attempted to set the weather without required permissions.",
		advance_weather_not_staff = "Attempted to advance the weather without required permissions.",

		time_frozen = "The time has now been frozen.",
		time_unfrozen = "The time is no longer frozen.",
		freeze_time_not_staff = "Attempted to freeze the time without required permissions.",

		weather_frozen = "The weather is now frozen.",
		weather_unfrozen = "The weather is no longer frozen.",
		freeze_weather_not_staff = "Attempted to freeze the weather without required permissions.",

		blackout_enabled = "A blackout is now present in the city.",
		blackout_disabled = "The city is no longer in a blackout.",
		blackout_not_staff = "Attempted to toggle a blackout without required permissions.",

		weather_changed_title = "Weather Changed",
		weather_changed_details = "${consoleName} changed the weather to `${weatherName}`."
	},

	tattoos = {
		tattoos_refreshed = "Tattoos refreshed.",
		something_went_wrong = "Something went wrong.",
		user_does_not_have_sent_character_loaded = "The user does not have the sent character loaded.",
		user_has_no_character_loaded = "The user does not have any character loaded.",
		user_not_found = "The sent user was not found on the server.",
		invalid_character_id = "Invalid character id parameter sent.",
		invalid_steam_identifier = "Invalid steam identifier parameter sent."
	},

	teleporters = {
		enter_mechanic_shop = "Enter Mechanic Shop",
		enter_mechanic_shop_interact = "[${InteractionKey}] Enter Mechanic Shop",

		exit_mechanic_shop = "Exit Mechanic Shop",
		exit_mechanic_shop_interact = "[${InteractionKey}] Exit Mechanic Shop",

		enter_coroner = "Enter Coroner",
		enter_coroner_interact = "[${InteractionKey}] Enter Coroner",

		exit_coroner = "Exit Coroner",
		exit_coroner_interact = "[${InteractionKey}] Exit Coroner",

		enter_fib = "Enter FIB",
		enter_fib_interact = "[${InteractionKey}] Enter FIB",

		exit_fib = "Exit FIB",
		exit_fib_interact = "[${InteractionKey}] Exit FIB",

		enter_iaa_base = "Enter IAA Base",
		enter_iaa_base_interact = "[${InteractionKey}] Enter IAA Base",

		exit_iaa_base = "Exit IAA Base",
		exit_iaa_base_interact = "[${InteractionKey}] Exit IAA Base",

		enter_server_room = "Enter Server Room",
		enter_server_room_interact = "[${InteractionKey}] Enter Server Room",

		exit_server_room = "Exit Server Room",
		exit_server_room_interact = "[${InteractionKey}] Exit Server Room",

		enter_warehouse_shop = "Enter Warehouse",
		enter_warehouse_shop_interact = "[${InteractionKey}] Enter Warehouse",

		exit_warehouse_shop = "Exit Warehouse",
		exit_warehouse_shop_interact = "[${InteractionKey}] Exit Warehouse",

		enter_office_shop = "Enter Office",
		enter_office_shop_interact = "[${InteractionKey}] Enter Office",

		exit_office_shop = "Exit Office",
		exit_office_shop_interact = "[${InteractionKey}] Exit Office",

		enter_cocaine_lab = "Enter Cocaine Lab",
		enter_cocaine_lab_interact = "[${InteractionKey}] Enter Cocaine Lab",

		exit_cocaine_lab = "Exit Cocaine Lab",
		exit_cocaine_lab_interact = "[${InteractionKey}] Exit Cocaine Lab",

		enter_mayor_office = "Enter Mayor's Office",
		enter_mayor_office_interact = "[${InteractionKey}] Enter Mayor's Office",

		exit_mayor_office = "Exit Mayor's Office",
		exit_mayor_office_interact = "[${InteractionKey}] Exit Mayor's Office",

		enter_upper_pillbox_hospital = "Enter Upper Pillbox Hospital",
		enter_upper_pillbox_hospital_interact = "[${InteractionKey}] Enter Upper Pillbox Hospital",

		enter_lower_pillbox = "Enter Lower Pillbox Hospital",
		enter_lower_pillbox_interact = "[${InteractionKey}] Enter Lower Pillbox Hospital",

		enter_pillbox_roof = "Enter Pillbox Roof",
		enter_pillbox_roof_interact = "[${InteractionKey}] Enter Pillbox Roof",

		exit_pillbox_roof = "Exit Pillbox Roof",
		exit_pillbox_roof_interact = "[${InteractionKey}] Exit Pillbox Roof",

		enter_night_club = "Enter Night Club",
		enter_night_club_interact = "[${InteractionKey}] Enter Night Club",

		exit_night_club = "Exit Night Club",
		exit_night_club_interact = "[${InteractionKey}] Exit Night Club",

		enter_casino = "Enter Casino",
		enter_casino_interact = "[${InteractionKey}] Enter Casino",

		exit_casino = "Exit Casino",
		exit_casino_interact = "[${InteractionKey}] Exit Casino",

		enter_roof = "Enter Roof",
		enter_roof_interact = "[${InteractionKey}] Enter Roof",

		exit_roof = "Exit Roof",
		exit_roof_interact = "[${InteractionKey}] Exit Roof",

		enter_penthouse = "Enter Penthouse",
		enter_penthouse_interact = "[${InteractionKey}] Enter Penthouse",

		exit_penthouse = "Exit Penthouse",
		exit_penthouse_interact = "[${InteractionKey}] Exit Penthouse"
	},

	top_down = {
		not_in_valid_vehicle = "You are not in a valid vehicle (only cars/bikes).",
		top_down_on = "Top down view activated.",
		top_down_off = "Top down view deactivated."
	},

	trackers = {
		error_finding_tracker = "An error occurred while finding your tracker.",
		tracker_visible = "Your tracker is now visible.",
		tracker_hidden = "Your tracker is now hidden.",
		tracker = "Tracker",
		trackers = "Trackers",
		stockade_robbery_tracker = "Stockade Truck (10-78)",
		tracked_vehicle = "Tracked Vehicle (${trackerId})",
		tracker_character = "${firstName} ${lastName}",
		tracker_character_unit_id = "${unitId}: ${firstName} ${lastName}",
		trackers_in_category = "Trackers will now be stored inside of a category on the map.",
		trackers_split = "Trackers will now be split into individual blips."
	},

	training = {
		on_team_attackers = "You are an attacker!\nTime left: ${time}",
		on_team_defenders = "You are a defender!\nTime left: ${time}",
		attackers = "Attackers:",
		defenders = "Defenders:",
		waiting_for_players = "Waiting for more players.\nThere must be at least one player on each team.",
		none = "N/A",
		waiting_for_training_area_data = "Waiting for training area data.",
		match_starting_in = "The match will be starting in ${seconds} seconds.",
		loading_match = "Waiting for players to load. The match will begin in ${seconds} seconds.",
		attackers_help_text = "Kill all the defenders before the cooldown is over to win!",
		defenders_help_text = "Kill all the attackers or wait until the cooldown is over to win!",
		attacker = "ATTACKER",
		defender = "DEFENDER",
		attackers_won = "The attackers won!",
		defenders_won = "The defenders won!",
		training_blip = "Training"
	},

	traps = {
		rearming = "Rearming",
		press_to_rearm = "[${InteractionKey}] Rearm",
		rearm = "Rearm",
		e = "E"
	},

	vending_machines = {
		vending_coffee = "Press ~INPUT_CONTEXT~ to purchase a Coffee. The cost is $${cost}.",
		vending_coffee_not_enough_cash = "You do not have enough cash to purchase a Coffee. The cost is $${cost}.",
		vending_snack = "Press ~INPUT_CONTEXT~ to purchase a Snack. The cost is $${cost}.",
		vending_snack_not_enough_cash = "You do not have enough cash to purchase a Snack. The cost is $${cost}.",
		vending_soda = "Press ~INPUT_CONTEXT~ to purchase a Soda. The cost is $${cost}.",
		vending_soda_not_enough_cash = "You do not have enough cash to purchase a Soda. The cost is $${cost}.",
		vending_water = "Press ~INPUT_CONTEXT~ to purchase a Water Bottle. The cost is $${cost}.",
		vending_water_not_enough_cash = "You do not have enough cash to purchase a Water Bottle. The cost is $${cost}.",
		vending_machine_damaged = "This Vending Machine is damaged. Please check again later.",
		vending_water_cooler = "Press ~INPUT_CONTEXT~ to get a Cup Of Water."
	},

	voice = {
		illegal_radio_frequency = "Attempting to access illegal radio frequencies.",
		voice_chat = "Voice Chat",
		voice_server_connected = "Connected to the voice server. Sending voice data to relevant players.",
		voice_server_disconnected = "Disconnected from the voice server. Waiting for connection.",
		voice_muted = "The voice chat has been muted.",
		voice_unmuted = "The voice chat has been unmuted.",
		broadcasting_voice_to_players = "Broadcasting To Players:",
		listening_to_virtual_players = "Listening To Virtual Players:",
		radio = "Radio",
		phone = "Phone",
		muted_players = "Muted Players:",
		connected = "Connected: ${connected}",
		muted = "Muted: ${muted}",
		boolean_true = "True",
		boolean_false = "False",
		target_channel = "Target Channel: ${targetChannel}",
		actual_channel = "Actual Channel: ${actualChannel}",
		target_radius = "Target Radius: ${targetRadius}",
		actual_radius = "Actual Radius: ${actualRadius}"
	},

	yoga = {
		yoga_blip = "Yoga",
		yoga_mat_use = "[${InteractionKey}] Yoga Mat",
		yoga_mat = "Yoga Mat",
		press_to_stop_yoga = "Press ~INPUT_CONTEXT~ to stop doing yoga."
	},

	zombies = {
		hold_to_continue_looting_zombie = "[${InteractionKey}] Looting Zombie",
		press_to_loot_zombie = "[${InteractionKey}] Loot Zombie",
		looting_zombie = "Looting Zombie",
		zombie_looting_injection = "Excessive zombie looting! (Bypassed server-timeout, most likely using an injector to accomplish this.)"
	},

	-- global/*
	decors = {
		illegal_decor_type = "Syncing invalid decor value types."
	},

	explosions = {
		invalid_explosion_type = "Explosion type `${explosionType}` is not valid.",
		invalid_camera_shake = "Camera shake `${cameraShake}` is not valid.",
		invalid_damage_scale = "Damage scale `${damageScale}` is not valid.",
		created_explosion = "Created an explosion of type `${explosionTypeName}` with a damage scale of `${damageScale}` and camera shake of `${cameraShake}`.",
		create_explosion_not_developer = "Player attempted to create an explosion but they were not a developer."
	},

	functions = {
		day = "day",
		days = "days",
		hour = "hour",
		hours = "hours",
		minute = "minute",
		minutes = "minutes",
		second = "second",
		seconds = "seconds",
		unknown = "Unknown",
		flipped_vehicle_logs_title = "Flipped Vehicle",
		flipped_vehicle_logs_details = "${consoleName} flipped a vehicle."
	},

	-- illegal/*
	corner = {
		corner_ped = "Corner Ped - ${cornerPedDistance}m (${cornerPedTimer})",
		corner_ped_title = "Corner Ped",
		corner_ped_already_active = "There is already a corner ped waiting for you.",
		no_node_found = "No nearby nodes for peds found.",
		no_sell_area = "You are not in an area where peds are interested in drugs.",
		inside_areas_none = "Inside Areas: None",
		inside_areas = "Inside Areas: ${insideAreas}",
		not_able_to_sell = "You are not able to sell right now. Walk around for a bit before trying to sell again."
	},

	stockade = {
		dispatch = "[Dispatch]",
		status_1a = "10-78, A Stockade has pressed the emergency button and is requesting backup at ${streetName}.",
		status_1b = "10-78, A Stockade has pressed the emergency button and is requesting backup at ${streetName} near ${crossingRoad}.",
		status_2a = "10-78, An alarm system has detected that a Stockade is currently having its doors tinkered with and is requesting backup at ${streetName}.",
		status_2b = "10-78, An alarm system has detected that a Stockade is currently having its doors tinkered with and is requesting backup at ${streetName} near ${crossingRoad}.",
		status_3a = "10-78, An alarm system has detected that a Stockade has had its doors improperly opened and is requesting backup at ${streetName}.",
		status_3b = "10-78, An alarm system has detected that a Stockade has had its doors improperly opened and is requesting backup at ${streetName} near ${crossingRoad}.",
		grab_gold_bar = "[${InteractionKey}] Grab Gold Bar (${barsRemaining} left)",
		grabbing_gold_bar = "Grabbing Gold Bar",
		use_advanced_lockpick = "[${InteractionKey}] Use Advanced Lockpick",
		lockpicking_stockade = "Lockpicking Stockade"
	},

	-- jobs/*
	burger_shot = {
		start_delivery = "Start a delivery.",
		press_to_start_delivery = "Press ~g~${InteractionKey} ~w~to start a delivery.",
		alerady_in_delivery = "You already have an active delivery.",
		not_burger_shot_employee = "You must be a Burger Shot employee to start a delivery.",
		finish_delivery = "Finish the delivery.",
		press_to_finish_delivery = "Press ~g~${InteractionKey} ~w~to finish the delivery.",
		started_delivery = "Started a delivery to ${deliveryName}. The location has been marked on your map.",
		finished_delivery = "The delivery to ${deliveryName} has been completed. You received $${deliveryPrice} and $${distanceBonus} in tip, totalling $${totalPrice}.",
		error_finishing_delivery = "An error occurred while trying to finish your delivery.",
		finished_delivery_title = "Finished Burger Shot Delivery",
		finished_delivery_details = "${consoleName} finished a Burger Shot delivery and received $${deliveryPrice} and $${distanceBonus} in tip, totalling $${totalPrice}.",
		delivery_blip = "Burger Shot Delivery"
	},

	job_center = {
		life_invader = "Life Invader",
		ui_close_menu = "Close Menu",
		press_to_browse_jobs = "Press ~INPUT_CONTEXT~ to browse jobs.",
		change_job = "Change Job: ${jobName}",
		job_unemployed = "Unemployed",
		job_transportation = "Trucker",
		job_taxi = "Taxi Driver",
		job_journalist = "Journalist",
		job_government = "Waste Collector",
		job_mechanic = "Tow Driver",
		job_delivery = "Delivery Job",
		changed_job_already_set_to_job = "Your job is already set to ${jobName}.",
		changed_job_success = "Successfully set your job to ${jobName}.",
		changed_job_failure = "An error occurred while trying to set your job to ${jobName}.",
		changed_job_title = "Changed Job",
		changed_job_details = "${consoleName} changed their job to `${jobName}`."
	},

	jobs = {
		job_refreshed = "Job refreshed.",
		something_went_wrong = "Something went wrong.",
		user_does_not_have_sent_character_loaded = "The user does not have the sent character loaded.",
		user_has_no_character_loaded = "The user does not have any character loaded.",
		user_not_found = "The sent user was not found on the server.",
		invalid_character_id = "Invalid character id parameter sent.",
		invalid_steam_identifier = "Invalid steam identifier parameter sent."
	},

	police = {
		aim_assist_enabled = "Your aim will now be bestowed with great abilities.",
		aim_assist_disabled = "You will now aim worse than criminals/scumbags once again. It is recommened to re-enable the aim assist immediately.",
		you_are_not_police = "This feature is reserved for police, not criminals/scumbags.",

		undercover_enabled = "You are now undercover.",
		undercover_disabled = "You are no longer undercover."
	},

	state = {
		license_heli = "Helicopter",
		license_fw = "Fixed Wing",
		license_cfi = "Certified Flight Instructor",
		license_hw = "Heavyweight",
		license_hwh = "Heavyweight Helicopter",
		license_perf = "Performance",
		license_management = "Management",
		license_military = "Military",
		gave_character_license = "Gave ${characterName} license `${licenseLabel}`.",
		character_already_has_license = "${characterName} already has license `${licenseLabel}`",
		removed_character_license = "Removed license `${licenseLabel}` from ${characterName}.",
		character_does_not_have_license = "${characterName} does not have license `${licenseLabel}`",
		license_not_found = "License `${licenseName}` was not found.",
		user_not_found_with_character_id = "User not found with character id `${characterId}`.",
		no_license_added = "No license added.",
		invalid_character_id = "The character ID that was added is invalid.",
		no_character_id_added = "No character ID added.",
		your_licenses_are = "Your licenses are as following: ${licenses}",
		player_licenses_are = "${characterName} has the following licenses: ${licenses}",
		you_have_no_licenses = "You have no licenses.",
		player_has_no_licenses = "${characterName} has no licenses.",
		failed_to_get_licenses = "Failed to get licenses."
	},

	tow = {
		press_to_access_spawner = "Press ~INPUT_CONTEXT~ to access the vehicle spawner.",
		tow_vehicles = "Tow Vehicles",
		vehicle_list = "Vehicle List",
		park_vehicle = "Park Vehicle",
		parked_vehicle = "Parked vehicle.",
		no_vehicle_to_park = "There is no vehicle to park.",
		close_menu = "Close Menu",
		spawned_vehicle = "Spawned vehicle.",
		spawner_on_timeout = "The vehicle spawner is on a timeout. Please try again.",
		spawn_area_not_clear = "The spawn area is not clear.",
		return_button = "Return"
	},

	weazel_news = {
		press_to_access_spawner = "Press ~INPUT_CONTEXT~ to access the vehicle spawner.",
		weazel_news = "Weazel News",
		vehicle_list = "Vehicle List",
		close_menu = "Close Menu",
		return_button = "Return",
		park_vehicle = "Park Vehicle",
		parked_vehicle = "Parked vehicle.",
		no_vehicle_to_park = "There is no vehicle to park.",
		spawned_vehicle = "Spawned vehicle.",
		spawner_on_timeout = "The vehicle spawner is on a timeout. Please try again.",
		spawn_area_not_clear = "The spawn area is not clear."
	},

	-- menus/*
	hydrogen = {
		number1_of_number2 = "${number1} of ${number2}"
	},

	-- vehicles/*
	car_wash = {
		use_car_wash = "Press ~INPUT_CONTEXT~ to use the Car Wash. The cost is $${cost}.",
		stop_car_to_wash = "Stop your vehicle to use the Car Wash.",
		vehicle_already_clean = "This vehicle is too clean to be washed.",
		car_wash = "Car Wash",
		air_unit_damaged = "This Air Unit is damaged.",
		air_unit_not_enough_cash = "You do not have enough cash to use the Air Unit.",
		air_unit_exit_vehicle = "Exit the vehicle to use the Air Unit.",
		air_unit_press_to_use = "Press ~g~E ~w~to use the Air Unit for $${cost}.",
		air_unit_no_vehicle_nearby = "There are no nearby vehicles."
	},

	fuel = {
		exit_to_fuel = "Exit the vehicle to refuel.",
		press_to_fuel = "Press ~g~${InteractionKey} ~w~to refuel the vehicle.",
		fuel_pump_text = "Fuel Cost: $${fuelCost}~n~Press ~g~E ~w~to stop fueling.",
		vehicle_text = "Fuel Level: ${fuelLevel}%",
		tank_full = "The tank is full.",
		vehicle_busy = "The nearby vehicle is busy.",
		purchase_jerry_can = "Press ~g~${InventoryKey} ~w~to purchase a Jerry Can.",
		gas_station = "Gas Station",
		vehicle_engine_on = "The vehicle's engine is running.",
		petrolcan_fuel_text = "Petrol Amount Left: ${petrolAmount}%~n~Press ~g~E ~w~to stop fueling.",
		player_busy = "You are busy with something else.",
		fuel_level_set_to = "The fuel level has been set to `${fuelLevel}`.",
		not_in_a_vehicle = "You are not in a vehicle.",
	},

	gadgets = {
		helicopter_camera_vehicle_info_metric = "Speed: ${speed} km/h\nModel: ${model}\nPlate: ${plate}",
		helicopter_camera_vehicle_info_imperial = "Speed: ${speed} mp/h\nModel: ${model}\nPlate: ${plate}",
	},

	garages = {
		garage_empty = "Your garage is empty!",
		impound_lot = "Impound Lot",
		engine = "Engine",
		body = "Body",
		vehicle_in = "In",
		vehicle_out = "Out",
		vehicle_at_impound = "Your vehicle is located at the Impound Lot.",
		waypoint_to_impound = "A waypoint to the Impound Lot has been marked on your GPS.",
		unable_to_withdraw = "Unable to withdraw vehicle as it can currently be found at ${location}.",
		waypoint_to_vehicle = "A waypoint to your vehicle has been marked on your GPS.",
		vehicle_currently_at = "Your vehicle can currently be found at ${location}.",
		vehicle_in_garage = "Your vehicle is located in ${garageName}.",
		vehicle_withdrawn = "Your vehicle has been withdrawn.",
		error_withdrawing = "An error occurred while trying to withdraw your vehicle.",
		vehicle_in_the_way = "There is a vehicle blocking the spawn point.",
		vehicle_is_out = "Your vehicle is already out.",
		vehicle_stored = "Your vehicle has been stored.",
		error_storing = "An error occurred while trying to store the vehicle.",
		vehicle_not_owned = "You do not own this vehicle!",
		no_nearby_vehicle = "No nearby vehicles found.",
		no_vehicles_to_retrieve = "You have no vehicles to retrieve!",
		vehicle_retrieved = "The vehicle has been successfully retrieved.",
		error_retrieving = "An error occurred while trying to retrieve your vehicle.",
		not_enough_balance_to_retrieve = "You do not have enough balance in either of your accounts to retrieve this vehicle.",
		press_to_access = "Press ~INPUT_CONTEXT~ to access the garage.",
		ui_return = "Return",
		ui_vehicle_list = "Vehicle List",
		ui_store_vehicle = "Store Vehicle",
		ui_retrieve_vehicle = "Retrieve Vehicle",
		ui_close_menu = "Close Menu",
		garage_letter = "Garage ${letter}",
		no_vehicles_impounded = "None of your vehicles are impounded!",
		you_must_retrieve_this_vehicle = "You will have to retrieve this vehicle in order to get access to it.",
		garage = "Garage",
		retrieved_vehicle_logs_title = "Retrieved Vehicle",
		retrieved_vehicle_logs_details = "${consoleName} retrieved vehicle with plate `${plate}` for $250.",

		-- NOTE: `toggle_garage_debug` command:
		toggle_garage_debug_toggled_on = "Toggled the garage debug on.",
		toggle_garage_debug_toggled_off = "Toggled the garage debug off."
	},

	handlings = {
		set_handling_override_not_super_admin = "The player attempted to set a handling override but they were not a super admin.",
		remove_handling_override_not_super_admin = "The player attempted to remove a handling override but they were not a super admin."
	},

	keys = {
		no_nearby_player = "No nearby player found.",
		no_nearby_vehicle = "No nearby vehicle found.",
		no_keys_for_vehicle = "You do not have the keys to this vehicle.",
		vehicle_locked = "Vehicle Locked",
		vehicle_unlocked = "Vehicle Unlocked",
		h_to_hotwire = "[H] Hotwire",
		received_keys = "Received keys for vehicle with plate ${plate}.",
		you_are_not_in_a_vehicle = "You are not in a vehicle.",
		hotwired_vehicle_with_plate_number = "Hotwired vehicle with plate number '${plateNumber}'.",
		unable_to_hotwire_vehicle = "Unable to hotwire vehicle."
	},

	modifications = {
		wheels_reset = "The wheels are being reset.",
		wheels_already_reset = "The wheels are already in their default position.",
		wheels_modified = "The wheels have been modified.",
		wheels_none_specified = "No wheels specified.",
		wheels_none_valid_specified = "No valid wheels specified.",
		not_in_a_car = "You are not in a car.",
	},

	plates = {
		plate_number_is_available = "Plate number `${plateNumber}` is available.",
		plate_number_is_not_available = "Plate number `${plateNumber}` is not available.",
		missing_valid_plate_number = "Missing a valid 'plate number' parameter.",
		missing_valid_vehicle_id = "Missing a valid 'vehicle id' parameter.",
		database_error = "A back-end database error occurred.",
		no_custom_plate_package = "You do not have a custom plate package. Check out our webstore for more information!",
		api_error = "Our back-end API returned an error.",
		api_not_available = "Our back-end API is not available.",
		vehicle_does_not_belong_to_player = "Vehicle ID `${vehicleId}` does not belong to you.",
		vehicle_id_does_not_exist = "Vehicle ID `${vehicleId}` does not exist.",
		you_have_no_character_loaded = "You do not have a character loaded.",
		vehicle_plate_changed = "Changed the plate number of vehicle with ID `${vehicleId}` to `${plateNumber}`."
	},

	vehicles = {
		flip_flipping = "Flipping Vehicle",
		flip_unable = "You are unable to flip a vehicle while there are people inside.",
		vehicle_busy = "Please wait, the vehicle is busy!",
		hold_to_eject = "Hold To Eject",
		taking_keys = "Taking Keys",
		belt_on = "Belt On",
		belt_off = "Belt Off",
		mileage = "Mileage",
		vehicle_mileage_amount = "Vehicle with plate `${plateNumber}` has ${miles} miles.",
		not_in_driver_seat = "To check the mileage, you must be at the driver seat.",
		vehicle_locked = "The vehicle is locked.",
		manual_gears_enabled = "Manual gearing has now been enabled.",
		manual_gears_disabled = "Manual gearing has now been disabled.",
		manual_gear_set_to = "Gear set to ${gearId}.",
		cruise_control_set_to_metric = "The cruise control will now limit the speed at ${speed} km/h.",
		cruise_control_set_to_imperial = "The cruise control will now limit the speed at ${speed} mp/h.",
		cruise_control_reset = "The cruise control will now limit the speed at the speed the vehicle was at when toggled.",
		cruise_control_on_metric = "Cruise control set to ${speed} km/h.",
		cruise_control_on_imperial = "Cruise control set to ${speed} mp/h.",
		cruise_control_on_plane_metric = "Cruise control set to ${speed} km/h and ${altitude} meters.",
		cruise_control_on_plane_imperial = "Cruise control set to ${speed} mp/h and ${altitude} ft.",
		you_are_cuffed = "You are cuffed.",
		belt_is_on_and_vehicle_is_locked = "Your belt is on and the vehicle is locked.",
		belt_is_on = "Your belt is on.",
		vehicle_is_locked = "The vehicle is locked.",

		-- NOTE: `add_vehicle` command:
		add_vehicle_not_super_admin = "The player attempted to add a vehicle to someone's garage but they were not a super admin.",
		add_vehicle_added_vehicle_for_everyone = "Added vehicle with model name `${modelName}` for everyone.",
		add_vehicle_added_vehicle_for_player = "Added vehicle with model name `${modelName}` for ${consoleName}.",
		add_vehicle_added_vehicle = "Added vehicle with model name `${modelName}`.",
		add_vehicle_character_not_loaded = "The target player had no characters loaded.",
		add_vehicle_target_user_not_found = "The target user could not be found.",
		add_vehicle_invalid_input = "Invalid input.",
		add_vehicle_no_permissions = "No permissions.",
		add_vehicle_user_not_found = "User not found.",
		add_vehicle_invalid_player = "There were no players with server ID `${serverId}`.",
		add_vehicle_invalid_model_name = "The model name `${modelName}` is not a valid model.",
		add_vehicle_no_model_name = "No model name added.",

		added_vehicle_for_everyone_logs_title = "Added Vehicle For Everyone",
		added_vehicle_for_everyone_logs_details = "${consoleName} added a vehicle with model name `${modelName}` to everyone's garages.",
		added_vehicle_for_player_logs_title = "Added Vehicle For Player",
		added_vehicle_for_player_logs_details = "${consoleName} added a vehicle with model name `${modelName}` to ${targetConsoleName}'s garage.",
		added_vehicle_logs_title = "Added Vehicle",
		added_vehicle_logs_details = "${consoleName} added vehicle with model name `${modelName}` to their garage.",

		-- NOTE: `toggle_vehicle_weapons` command:
		toggle_vehicle_weapons_not_super_admin = "The player attempted to toggle vehicle weapons on a vehicle but they were not a super admin.",
		toggled_vehicle_weapons_on = "Toggled vehicle weapons on.",
		toggled_vehicle_weapons_off = "Toggled vehicle weapons off.",
		toggled_vehicle_weapons_vehicle_is_not_networked = "The vehicle you are in is not networked.",
		toggled_vehicle_weapons_not_in_a_vehicle = "You are not in a vehicle.",
		toggled_vehicle_weapons_target_user_not_found = "Target user not found.",
		toggled_vehicle_weapons_player_not_in_a_vehicle = "Target player is not in a vehicle.",
		toggled_vehicle_weapons_for_player_on = "Toggled the vehicle weapons on for ${consoleName}.",
		toggled_vehicle_weapons_for_player_off = "Toggled the vehicle weapons off for ${consoleName}.",
		toggled_vehicle_weapons_for_everyone = "Toggled the vehicle weapons for everyone.",

		toggled_vehicle_weapons_on_logs_title = "Toggled Vehicle Weapons On",
		toggled_vehicle_weapons_on_logs_details = "${consoleName} toggled the weapons for a vehicle on.",
		toggled_vehicle_weapons_off_logs_title = "Toggled Vehicle Weapons Off",
		toggled_vehicle_weapons_off_logs_details = "${consoleName} toggled the weapons for a vehicle off.",
		toggled_vehicle_weapons_on_for_player_logs_title = "Toggled Vehicle Weapons On For Player",
		toggled_vehicle_weapons_on_for_player_logs_details = "${consoleName} toggled the weapons for ${targetConsoleName}'s vehicle on.",
		toggled_vehicle_weapons_off_for_player_logs_title = "Toggled Vehicle Weapons Off For Player",
		toggled_vehicle_weapons_off_for_player_logs_details = "${consoleName} toggled the weapons for ${targetConsoleName}'s vehicle off.",
		toggled_vehicle_weapons_for_everyone_logs_title = "Toggled Vehicle Weapons For Everyone",
		toggled_vehicle_weapons_for_everyone_logs_details = "${consoleName} toggled the weapons for everyone's vehicle."
	},

	wheels = {
		press_to_slash = "[${InteractionKey}] Hold to slash",
		hold_to_slash = "Hold to slash",
		slashing_tire = "Slashing Tire"
	},

	-- weapons/*
	weapons = {
		pick_up_fire_extinguisher = "Hold ~INPUT_CONTEXT~ to pick up the Fire Extinguisher.",
		press_to_drop_fire_extinguisher = "Press ~INPUT_FRONTEND_RRIGHT~ to drop the Fire Extinguisher.",
		illegal_fire_extinguisher_model = "Attempted to delete a fire extinguisher on all clients with a model that wasn't a fire extinguisher."
	},

	-- a shared "alpha" locale category uwu - also know, some features such as the ${InteractionKey} will be missing here, so don't try to use it
	alpha = {
		check_in = "[E] Check In",
		checking_in = "Checking In",
		doctor_notified = "A doctor has been notified, please wait",
		leave_bed = "Press ~INPUT_CONTEXT~ to leave bed",
		you_have_been_charged = "You have been charged $${cost} for your injuries",
		beds_occupied = "All beds occupied",
		patient_checked_in = "Patient checked in at bed ${bed}",
		stop_bleeding = "[E] Stop Bleeding",
		stopping_bleeding = "Stopping Bleeding",
		bleeding_stopped = "Bleeding Stopped",
		you_have_parasite = "You have a parasite",
		you_have_multiple_parasite = "You have multiple parasites",
		bandage = "[E] Bandage Wounds",
		bandaging = "Bandaging Wounds",
		wounds_bandaged = "Wounds Bandaged",
		treat_injury = "[E] ${label} Injury",
		treating_injury = "Treating ${label} Injury",
		injury = "${label} Injury",
		cpr_done = "CPR successful",
		cpr_fail = "Unable to locate person",
		went_on_duty = "Went on-duty",
		went_off_duty = "Went off-duty",
		on_duty = "on duty",
		off_duty = "off duty",
		press_to_sign = "Press ~g~E ~w~to sign ",
		open_vehicle_spawner = "Press ~g~E ~w~to open the vehicle spawner",
		open_heli_spawner = "Press ~g~E ~w~to open the helicopter menu",
		on = "on",
		off = "off",
		sign_as_doctor = "Press ~g~E ~w~to sign ${status} as a doctor",
		close_menu = "Close Menu",
		vehicle_list = "Vehicle List",
		park_vehicle = "Park Vehicle",
		clear_area = "Please clear the garage before spawning a vehicle",
		unable_to_extra = "Unable to modify 'extras' on this vehicle!",
		warning = "Warning",
		invalid_input = "Invalid Input.",
		unable_to_extra_on_vehicle = "Unable to modify 'extras' on this vehicle!",
		heli_here_already = "Already a helicopter on the helipad",
		ems_air_hq = "EMS Air HQ",
		ems_garage = "EMS Garage",
		e_to_get_treated = "[E] Get Treated - $2500",
		get_treated = "Get Treated - $2500",
		you_are_being_treated = "You are being treated",
		being_treated = "Being Treated",
		minute = "minute",
		minutes = "minutes",
		second = "second",
		seconds = "seconds",
		kurwa_and = "and",
		wait_for_paramedic = "Please wait for a paramedic to arrive or wait ${time} to respawn",
		hold_to_respawn = "Hold ~b~ENTER ~w~to respawn or wait for a paramedic to arrive",
		hold_to_respawn_secondslol = "Hold ~b~ENTER (${seconds}) ~w~to respawn or wait for a paramedic to arrive",
		light = "Light",
		moderate = "Moderate",
		heavy = "Heavy",
		severe = "Severe",
		arms_injured = "Arms too injured, unable to fire",
		injuryb = "Injury",
		bleeding_multiple_injuries = "bleeding with multiple injuries",
		feels_irritated = "feels irritated",
		feels_painful = "feels painful",
		feels_extremely_painful = "feels extremely painful",
		multiple_injuries = "You have multiple injuries",
		bleeding = "bleeding",
		bleeding_with_injury = "bleeding with ${label} Injury",
		bleeding_reduced = "Bleeding Reduced",
		bleeding_self_stopped = "Bleeding stopped by itself",
		thanks_for_loot = "You were mugged while unconscious. Some items may be missing.",
		e_to_do_yoga = "[E] Do Yoga",
		do_yoga = "Do Yoga",
		stop_doing_yoga = "Press ~INPUT_CONTEXT~ to stop doing yoga.",
		mat_occupied = "Mat is occupied!",
		yoga = "Yoga",
		clothing = "Clothing",
		clothing_cam_help = "Use A, S and D to move the clothing camera around.",
		main = "Main",
		empty_slot = "Empty Slot",
		barber = "Barber",
		pants = "Pants",
		face = "Face",
		skin_color = "Skin Color",
		mask = "Mask",
		hair = "Hair",
		arms = "Arms",
		shoes = "Shoes",
		necklaces_and_ties = "Necklace & Ties",
		undershirt = "Undershirt",
		decals = "Decals",
		shirts = "Shirts",
		parachute_and_bag = "Parachute / bag",
		armour = "Armor",
		components = "Components",
		textures = "Textures",
		colour_palette = "Colour Palette",
		remove_undershirt = "Remove Undershirt",
		no_idea = "No idea",
		head = "Head",
		hats_and_helmets = "Hats/Helmets",
		glasses = "Glasses",
		earrings = "Earrings",
		left_wrist = "Left Wrist",
		right_wrist = "Right Wrist",
		remove_helmets = "Remove helmets",
		remove_glasses = "Remove glasses",
		remove_earrings = "Remove earrings",
		remove_left_wrist = "Remove left wrist",
		remove_right_wrist = "Remove right wrist",
		blemishes = "Blemishes",
		facial_hair = "Facial Hair",
		eyebrows = "Eyebrows",
		ageing = "Ageing",
		makeup = "Makeup",
		blush = "Blush",
		complexion = "Complexion",
		sun_damage = "Sun Damage",
		lipstick = "Lipstick",
		moles_and_freckles = "Moles/Freckles",
		chest_hair = "Chest hair",
		body_blemishes = "Body blemishes",
		add_body_blemishes = "Add Body blemishes",
		opacity = "Opacity",
		colours = "Colours",
		press_to_access_clotheshop = "Press ~INPUT_CONTEXT~ to customise your character.",
		clothing_store = "Clothing Store",
		finish_creation = "Press ~g~G ~w~to complete the customization of your character. You can't undo this action.",
		press_to_customize = "Press ~INPUT_CONTEXT~ to customise your character.",
		barbershop = "Barbershop",
		not_a_clothing_spot = "You must be near a clothing spot to use this command!",
		customization = "Customization",
		accessories = "Accessories",
		freemode_models = "Freemode models",
		male_models = "Male models",
		female_models = "Female models",
		ems_models = "EMS Models",
		animal_models = "Animal Models",
		multiplayer_models = "Multiplayer Models",
		serial_number = "Serial Number: ${serialNumber}<br>This weapon is registered to ${fullName} (${characterId}).",
		serial_number_unknown = "Serial Number: Unknown.",
		badge_owner = "This badge belongs to ${fullName} (${positionName}).",
		badge_owner_unknown = "Badge Owner is unknown.",
		evidence_incomplete = "This evidence is incomplete, and can not be reviewed.",
		evidence_type = "Evidence Type",
		evidence_casings = "Casings came back to serial number ${serialNumber} which was held by ${buyerName} (${buyerCid}) at the time of use.",
		evidence_bullets = "Bullet impacts seems to have been created by ${bulletLabel}.",
		evidence_dna = "DNA was picked up from vehicle with plate ${plateNumber} and came back to ${DNAOwnerName} (${DNAOwner}).",
		additional_information = "Additional Information:",
		picked_up_at_location = "Picked up at location:",
		timestamp_of_pickup = "Timestamp of pickup:",
		weapon_name = "Weapon Name:",
		casings_picked_up = "Amount of casings picked up:",
		bullet_label = "Bullet Label:",
		impacts_found = "Amount of impacts found in area:",
		right_foot = "Right Foot",
		left_foot = "Left Foot",
		right_hand = "Right Hand",
		left_hand = "Left Hand",
		right_knee = "Right Knee",
		left_knee = "Left Knee",
		head = "Head",
		neck = "Neck",
		right_arm = "Right Arm",
		left_arm = "Left Arm",
		chest = "Chest",
		pelvis = "Pelvis",
		right_shoulder = "Right Shoulder",
		left_shoulder = "Left Shoulder",
		right_wrist = "Right Wrist",
		left_wrist = "Left Wrist",
		tounge = "Tounge",
		upper_lip = "Upper Lip",
		lower_lip = "Lower Lip",
		right_thigh = "Right Thigh",
		left_thigh = "Left Thigh",
		lower_spine = "Lower Spine",
		center_spine = "Center Spine",
		upper_spine = "Upper Spine",
		root_spine = "Root Spine",
		right_clavicle = "Right Clavicle",
		left_clavicle = "Left Clavicle"
	}
}
