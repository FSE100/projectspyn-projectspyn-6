global key
InitKeyboard();

while 1
    pause(0.1)
    switch key
        case 'uparrow'
            brick.MoveMotor('A', 16);
            brick.MoveMotor('B', 16);
        case 'downarrow'
            brick.MoveMotor('A', -16);
            brick.MoveMotor('B', -16);
        case 'rightarrow'
            brick.MoveMotor('A', -16);
            brick.MoveMotor('B', 16);
        case 'leftarrow'
            brick.MoveMotor('A', 16);
            brick.MoveMotor('B', -16);
        case 's'
            brick.MoveMotor('C', 3);
            
        case 'w'
            brick.MoveMotor('C', -3);
            
        case 0
            brick.StopMotor('A');
            brick.StopMotor('B');
            brick.StopMotor('C');
        case 'q'
            break;
    end
end
CloseKeyboard();
