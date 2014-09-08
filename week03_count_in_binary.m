% Before running this code, connect to the Arduino using the command
% a = arduino('COM3'); 
% Note: your COM port may be different

% Create a list of pin numbers that your external LEDs are connected to
myLED_pin_list = [2 3 4 5];

% loop over all pins and set the mode to output
for k = 1:4,
    pinMode(a,myLED_pin_list(k),'output');
end

% For a 3-bit binary number, write down the powers of 2
% in order from highest to lowest 
powers2 = [8 4 2 1];

for n = 0 : 15,
    number = n;

    % store the digits of the binary number in a vector named 'bits'
    for k = 1:4,
        if number >= powers2(k)
            bits(k) = 1;
            number = number - powers2(k);
        else
            bits(k) = 0;
        end
    end
    
    % display the result to our LEDs where:
    % LED on = 1 digit
    % LED off = 0 digit
    for k = 1:4,
        digitalWrite(a,myLED_pin_list(k),bits(k));
    end
    
    % display the result to the screen
    fprintf('Currently displaying the number %d (%d%d%d%d) on the LEDs\n', n, bits);
    
    pause(1);
end




