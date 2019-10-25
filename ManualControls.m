global key
InitKeyboard();

while 1
    pause(0.1)
    switch key
        case 'uparrow'
            brick.MoveMotor('A', 49);
            brick.MoveMotor('B', 50);
        case 'downarrow'
            brick.MoveMotor('A', -50);
            brick.MoveMotor('B', -50);
        case 'leftarrow'
            brick.MoveMotor('A', -50);
            brick.MoveMotor('B', 50);
        case 'rightarrow'
            brick.MoveMotor('A', 50);
            brick.MoveMotor('B', -50);
        case 0
            brick.StopMotor('A');
            brick.StopMotor('B');
        case 'q'
            break;
    end
end
CloseKeyboard();
