
brick.SetColorMode(2,2);  
    color = 1;
    while(color ~= 0)
        color = brick.ColorCode(2);
        if(color ~= 5 && color ~= 4 && color ~= 3 && color == 2)
            brick.MoveMotor('A', 16);
            brick.MoveMotor('B', 16);
            continue;
        end
        if(color == 5)%%red,stop
            brick.StopMotor('A', 16);
            brick.StopMotor('B', 16);
            pause(4)
            brick.MoveMotor('A', 16);
            brick.MoveMotor('B', 16);
            pause(5);
        end
        if(color == 3 || color == 2)%%blue/green,manual
            brick.StopMotor('A', 16);
            brick.StopMotor('B', 16);
            ManualControls();
            pause(5)
        end        
    end
    

