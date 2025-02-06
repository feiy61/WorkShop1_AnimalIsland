if (state == "patrol") {
    direction *= -1; // 反转方向
}
alarm[0] = 30; // 重新设置Alarm 0，每30步触发一次