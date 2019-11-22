brick.SetColorMode(2,2);  
color = 1;
distance = 1;
pressed = 0;
while(distance ~= -1 && pressed ~= -1 && color ~= -1)
    distance = brick.UltrasonicDist(1);
    pressed = brick.TouchPressed(3);
    color = brick.ColorCode(2);
     %%ultrasonic sensor statements
    if(distance >= 10 && distance <= 65)
        brick.MoveMotor('A', 30);
        brick.MoveMotor('B', 30);
    end
    if(distance <= 10)
        brick.MoveMotor('A', 16);
        brick.MoveMotor('B', -16);
        pause(.1)
    end
    if(distance > 65)
        brick.MoveMotor('B', 16);
        brick.MoveMotor('A', -16);
        pause(2)
        brick.MoveMotor('A', 30);
        brick.MoveMotor('B', 30);
        pause(6)
    end
    
    %%touch sensor statements
    if(pressed ~= 1)
        brick.MoveMotor('A', 30);
        brick.MoveMotor('B', 30);
    end
    if(pressed == 1)
        brick.MoveMotor('A', -16);
        brick.MoveMotor('B', -16);
        pause(2.3)
        brick.MoveMotor('A', 16);
        brick.MoveMotor('B', -16);
        pause(1.8)
    end
    
    %%color sensor statements
        if(color ~= 5 && color ~= 3 && color == 2) 
            brick.MoveMotor('A', 30);
            brick.MoveMotor('B', 30);
        end
        if(color == 5)%%red,stop
            brick.StopMotor('A');
            brick.StopMotor('B');
            pause(4)
            brick.MoveMotor('A', 30);
            brick.MoveMotor('B', 30);
            pause(5)
        end
        if(color == 3 || color == 2)%%blue/green,manual
            brick.StopMotor('A', 16);
            brick.StopMotor('B', 16);
            ManualControls();
            pause(5)
        end        
end
        
