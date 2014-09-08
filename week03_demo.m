% this is extra code that you can examine to demonstrate a couple of 
% another things we can do with our LED setup. Time permitting try 
% this code out and play around with changing it. 

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
    % notice that the pause statement is after all LED values are set and NOT in 
    % the innder FOR loop
    pause(0.2);
end

fprintf('Turning off all lights\n');
for k = 1:4, 
    digitalWrite(a, myLED_pin_list(k), 0);
end
pause(1);

fprintf('Chasing light sequence\n');
% Chasing light sequence
for n = 1:10,
    for k = [1 2 3 4 3 2], 
        % set to HIGH - turn on LED
        digitalWrite(a, myLED_pin_list(k), 1);
        % notice this pause statement and one below are both in the inner FOR loop
        pause(0.05);
        % set to LOW - turn off LED
        digitalWrite(a, myLED_pin_list(k), 0);
        pause(0.05);
    end
end
