// 创建事件 (Create Event)
speed = 2;
patrol_range = 100;
chase_speed = 4;
chase_range = 150;
start_x = x;
start_y = y;
direction = 1; // 1表示向右，-1表示向左
state = "patrol"; // 初始状态为巡逻

alarm[0] = 30; // 设置Alarm 0，每30步触发一次