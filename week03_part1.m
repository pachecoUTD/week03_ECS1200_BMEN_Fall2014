
% Before running this code, connect to the Arduino using the command
% a = arduino('COM3'); 
% Note: your COM port may be different

% specify pin mode for pin 13
% Note: pin is tied to Arduino LED marked "L"
% When pin 13 is set HIGH, the "L" LED will be on
% When pin 13 is set LOW, the "L" LED will be off
pinMode(a,13,'output');

% output the digital value (0 or 1) to pin 13
% alternate between setting pin to 0 or 1 to 
% make LED blink
for k = 1:10, 
    digitalWrite(a,13,1); % set pin 13 HIGH
    pause(0.2); % pause for 0.2 sec
    digitalWrite(a,13,0); % set pin 13 LOW
    pause(0.2);
end

    
