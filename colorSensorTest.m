brick.SetColorMode(2,2);
color = brick.ColorCode(2);
switch(color)
    case 0
        colorName = 'no color';
    case 1
        colorName = 'black';
    case 2
        colorName = 'blue';
    case 3
        colorName = 'green';
    case 4
        colorName = 'yellow';
    case 5
        colorName = 'red';
    case 6
        colorName = 'white';
    case 7
        colorName = 'brown';
end

disp(color);