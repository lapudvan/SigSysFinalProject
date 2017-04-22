function T = deltaT(theta)

c = 340.29; %m/s
a = 11e-2; %cm, average human head size

if theta > pi
    theta = theta * pi / 180;
end

if abs(theta) < pi/2
    T = -a/c * cos(theta);
else
    T = a/c*(abs(theta) - pi/2);
end