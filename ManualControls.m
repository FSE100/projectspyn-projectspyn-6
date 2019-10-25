global key
InitKeyboard();

while 1
    pause(0.2)
    switch key
        case 'uparrow'
            brick.MoveMotor('A', 100);
            brick.MoveMotor('B', 100);
        case 'downarrow'
            brick.MoveMotor('A', -100);
            brick.MoveMotor('B', -100);
        case 'leftarrow'
            brick.MoveMotor('A', -100);
            brick.MoveMotor('B', 100);
        case 'rightarrow'
            brick.MoveMotor('A', 100);
            brick.MoveMotor('B', -100);
        case 0
            brick.StopMotor('A');
            brick.StopMotor('B');
        case 'q'
            break;
    end
end
CloseKeyboard();
