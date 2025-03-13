
if (instance_exists(obj_Jodie)) { // Check if the player exists
    var _player_distance = point_distance(x, y, obj_Jodie.x, obj_Jodie.y);
    if (_player_distance < attack_range && hawkIsBlind == false) 
	{
        // Code for attacking the Jodie,
        spr_flying = true;
        perched = false;
        // place animated flying sprite here
        var dir_to_player = point_direction(x, y, obj_Jodie.x, obj_Jodie.y);
        x += lengthdir_x(move_speed, dir_to_player);
        y += lengthdir_y(move_speed, dir_to_player);
    } else {
        // when Player is not in range, don't attack and start perching on trees
        if (spr_flying) {
            // If flying, move to the nearest tree to perch
            if (target_tree != noone) {
                // Set to flying sprite here again
                var dir_to_tree = point_direction(x, y, target_tree.x, target_tree.y);
                x += lengthdir_x(perch_speed, dir_to_tree);
                y += lengthdir_y(perch_speed, dir_to_tree);

                // Code to check if Hawk is close enough to the tree to perch
                if (point_distance(x, y, target_tree.x, target_tree.y) < 5) {
                    spr_flying = false;
                    perched = true;
                    // Set perching sprite here
                    x = target_tree.x;
                    y = target_tree.y - sprite_height / 2;
                }
            }
        } else if (perched) {
            // When perched, wait for a while before flying to next tree
            if (alarm[0] == -1) {
                alarm[0] = room_speed * 2; // Set alarm for patrolling
            }
        }
    }
} else {
    // No player instance, just patrol
    if (spr_flying) {
        if (target_tree != noone) {
            sprite_index = spr_flying_sprite; // Set to flying sprite
            var dir_to_tree = point_direction(x, y, target_tree.x, target_tree.y);
            x += lengthdir_x(perch_speed, dir_to_tree);
            y += lengthdir_y(perch_speed, dir_to_tree);

            // Check if close enough to the tree to perch
            if (point_distance(x, y, target_tree.x, target_tree.y) < 5) {
                spr_flying = false;
                perched = true;
                sprite_index = perch_sprite; // Set to perched sprite
                x = target_tree.x;
                y = target_tree.y - sprite_height / 2;
            }
        }
    } else if (perched) {
        // If perched, wait for a while before patrolling
        if (alarm[0] == -1) {
            alarm[0] = room_speed * 2; // Set alarm for patrolling
        }
    }
}
