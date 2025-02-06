// 巡逻逻辑
function patrol() {
    x += speed * direction;
}

// 检测玩家并冲向玩家逻辑
function chase_player(player) {
    if (x < player.x) {
        x += chase_speed;
    } else {
        x -= chase_speed;
    }

    if (y < player.y) {
        y += chase_speed;
    } else {
        y -= chase_speed;
    }
}

// 检测玩家是否在追击范围内
function detect_player(player) {
    return (abs(x - player.x) < chase_range && abs(y - player.y) < chase_range);
}




var player = instance_nearest(x, y, obj_Jodie); // 假设玩家对象的名称为obj_player

if (state == "patrol") {
    patrol();
    if (detect_player(player)) {
        state = "chase";
    }
} else if (state == "chase") {
    chase_player(player);
    if (!detect_player(player)) {
        state = "patrol";
    }
}