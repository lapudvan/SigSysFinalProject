[y,fs] = audioread('dusty_dungeon.wav');

% yM = y(:,1) + y(:,2);
yM = y;
% soundsc(yM, 44100)

% theta = 0;
for theta = -60:20:60
deltaTL = deltaT(90 + theta);
deltaTR = deltaT(90 - theta);

delay = zeros(floor(abs(deltaTL - deltaTR)*44100),1);

if(deltaTL > deltaTR)
    yL = cat(1,delay,yM);
    yR = cat(1,yM,delay);
else
    yR = cat(1,delay,yM);
    yL = cat(1,yM,delay);
end

y = cat(2,yL,yR);
pause(length(yL)/44100)
soundsc(y, 44100)
end