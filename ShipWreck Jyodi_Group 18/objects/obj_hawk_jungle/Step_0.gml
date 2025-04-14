hawkIsBlind = false;

if (instance_exists(obj_Jodie_J)) 
{
    var _player_distance = point_distance(x, y, obj_Jodie_J.x, obj_Jodie_J.y);
    
    // 调试输出：显示当前状态
    show_debug_message("玩家距离：" + string(_player_distance) + 
                      " 冷却状态：" + string(hawkAttacked) + 
                      " 失明状态：" + string(hawkIsBlind));

    if (_player_distance < attack_range && hawkAttacked == false && hawkIsBlind ==false) 
    {
        // 进入攻击状态
        sprite_index = Hawk_Divebomb;
        
        // 计算精确攻击方向
        var _attack_dir = point_direction(x, y, obj_Jodie_B.x, obj_Jodie_B.y);
        x += lengthdir_x(attack_speed, _attack_dir);
        y += lengthdir_y(attack_speed, _attack_dir); // 保持Y轴自由移动
        
        // 根据攻击方向翻转图像
        image_xscale = (_attack_dir > 90 && _attack_dir < 270) ? -1 : 1;

        // 增强型碰撞检测
        if (place_meeting(x, y, obj_Jodie_B)) 
        {
            show_debug_message("攻击命中！");
            maintain_flight_height() // 直接重置高度（如需平滑移动见下方方案）
            hawkAttacked = true;
            alarm[0] = 200;
        }
    }
    else 
    {
        maintain_flight_height();
        patrol_flight();
        sprite_index = Hawk;
        
    }
}
else 
{
    patrol_flight();
	maintain_flight_height();
}

// ===== 新增高度维持函数 =====
function maintain_flight_height() {
    // 平滑返回方案（替代直接 y = 100）：
    if (y != normal_height) {
        var _delta = normal_height - y;
        y += sign(_delta) * min(abs(_delta), return_speed);
    }
    
    // 保持飞行朝向
    image_xscale = facing == 1 ? 1 : -1;
}
// ========== 巡逻函数 ==========
function patrol_flight() 
{
    // 移除固定 y = 100 的限制
    // 边界检测
   
   
   if (x > start_x + patrol_range) {
        facing = -1;
        image_xscale = -1;
    }
    else if (x < start_x - patrol_range) {
        facing = 1;
        image_xscale = 1;
    }
    
    x += move_speed * facing;
   
	y += random_range(-0.5, 0.5); // 小幅自然浮动
}
