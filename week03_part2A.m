% Before running this code, connect to the Arduino using the command
% a = arduino('COM3'); 
% Note: your COM port may be different

% Create a list of pin numbers that your external LEDs are connected to
myLED_pin_list = [2 3 4];
for k = 1:3,
    pinMode(a,myLED_pin_list(k),'output');
end

% For a 3-bit binary number, write down the powers of 2
% in order from highest to lowest 
powers2 = [4 2 1];

% number to convert to binary
number = 1;

% store the digits of the binary number in a vector named 'bits'
testNumber = 0;
for k = 1:3, 
    if number >= (powers2(k)+testNumber)
        bits(k) = 1;
        testNumber = testNumber + powers2(k);
    else
        bits(k) = 0;
    end
end

% display the result to the screen 
bits

% display the result to our LEDs where:
% LED on = 1 digit
% LED off = 0 digit
for k = 1:3,
    digitalWrite(a,myLED_pin_list(k),bits(k));
end



