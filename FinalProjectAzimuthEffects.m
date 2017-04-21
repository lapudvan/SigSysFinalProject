[yM,fs] = audioread('dusty_dungeon.wav');

% yM = y(:,1) + y(:,2);
% soundsc(yM, 44100)

theta = -45;

deltaTL = deltaT(theta - 90);
deltaTR = deltaT(theta + 90);

delay = zeros(floor(abs(deltaTL - deltaTR)*44100),1);

if(deltaTL > deltaTR)
    yR = cat(1,delay,yM);
    yL = cat(1,yM,delay);
else
    yL = cat(1,delay,yM);
    yR = cat(1,yM,delay);
end

y = cat(2,yL,yR);
% pause(5)
soundsc(y, 44100)