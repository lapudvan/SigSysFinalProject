function T = deltaT(theta)

c = 340.29; %m/s
a = 8.75e-2; %cm, average human head size

if theta > pi
    theta = theta * pi / 180;
end

if abs(theta) <= pi/2
    T = -a/c * cosd(abs(theta));
else
    T = a/c*(abs(theta) - 90);
end