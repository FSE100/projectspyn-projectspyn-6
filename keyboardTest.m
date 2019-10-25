global key
InitKeyboard();

while 1
    pause(0.1);
    switch key
        case 'uparrow'
            disp('up arrow pressed');
            
        case 'downarrow'
            disp('down arrow pressed');
            
        case 'leftarrow'
            disp('left arrow pressed');
            
        case 0
            disp('no key pressed');
            
        case 'q'
            break;
            
    end
end
CloseKeyboard();