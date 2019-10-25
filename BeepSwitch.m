disp('PUSH button to start the tone')
while brick.TouchPressed(1)~=0
    brick.playTone(100,300,500)
    disp('RELEASE button to turn tone OFF.')
    pause(0.5)
end

disp('done!')