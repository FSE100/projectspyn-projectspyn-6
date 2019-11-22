pressed = 0;
while(pressed ~= -1)
    pressed = brick.TouchPressed(3);
    if(pressed ~= 1)
        brick.MoveMotor('A', 20);
        brick.MoveMotor('B', 20);
    end
    if(pressed == 1)
        brick.MoveMotor('A', -16);
        brick.MoveMotor('B', -16);
        pause(2.3)
        brick.MoveMotor('A', 16);
        brick.MoveMotor('B', -16);
        pause(1.8)
    end
end
        