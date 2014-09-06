% Before running this code, connect to the Arduino using the command
% a = arduino('COM3'); 
% Note: your COM port may be different

% Create a list of pin numbers that your external LEDs are connected to
myLED_pin_list = [2 3 4 5];
for k = 1:4,
    pinMode(a,myLED_pin_list(k),'output');
end

% Blinking lights
fprintf('Blink light sequence\n');
for n = 1:15,
    for k = 1:4, 
        % use the mod function to set dv to 1 when n is odd and to 0 when n is event
        dv = mod(n,2);
        digitalWrite(a, myLED_pin_list(k), dv);
    end
    pause(0.2);
end

pause(1);
fprintf('Turning off all lights\n');
for k = 1:4, 
    digitalWrite(a, myLED_pin_list(k), 0);
end

fprintf('Chasing light sequence\n');
pause(1);
% Chasing light sequence
for n = 1:3,
    for k = 1:4, 
        % use the mod function to set dv to 1 when n is odd and to 0 when n is event
        digitalWrite(a, myLED_pin_list(k), 1);
        pause(0.2);
        digitalWrite(a, myLED_pin_list(k), 0);
        pause(0.2);
    end
end
