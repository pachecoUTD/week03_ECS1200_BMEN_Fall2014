
% Before running this code, connect to the Arduino using the command
% a = arduino('COM3'); 
% Note: your COM port may be different

% Note: pin 13 is tied to Arduino LED marked "L"
% When pin 13 is set HIGH, the "L" LED will be ON
% When pin 13 is set LOW, the "L" LED will be OFF

% pin number for on-board LED
onboard_LED_pin_number = 13;

% specify pin mode as output
pinMode(a,onboard_LED_pin_number,'output');

% number of flashes to generate
nflashes = 10;

% flash rate (number flashes per second)
flash_rate_Hz = 1;

% set amount of time ON as one half the period
timeOn_sec = (1 / flash_rate_Hz) / 2;

% set amount of time OFF as one half the period
timeOff_sec = (1 / flash_rate_Hz) / 2;

% make LED flash
for k = 1:nflashes, 
    % Use the Matlab Arduino function digitalWrite to set the pins HIGH or LOW
    
    % Complete the code to set pin 13 HIGH so that LED turns ON
    digitalWrite(a,onboard_LED_pin_number,??);
    
    % pause for timeOn 
    pause(timeOn_sec);
    
    % Complete the code to set pin 13 LOW so that LED turns OFF
    digitalWrite(a,??,??);

    % pause for timeOff
    pause(timeOff_sec);
end



