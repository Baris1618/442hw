%graph for N vs theta

y= [49 16 34 43 68 63 62 92 75 110 61 52 61 36 30 15 8];
x = [20 40 60 80 100 120 140 160 180 200 220 240 260 280 300 320 340];

bar(x, y, 1, 'c')

%Graph with symmetric values added

x_sym = [20 40 60 80 100 120 140 160 180];
y= [49 16 34 43 68 63 62 92 75 110 61 52 61 36 30 15 8];
x = [20 40 60 80 100 120 140 160 180 200 220 240 260 280 300 320 340];


for i=1:9
if i~=9
    z(i)=y(i) + y(18-i);
else 
    z(i)=2*y(i);
end
end

bar(x_sym, z, 1, 'b')

%Linear regression

x_sym = [20 40 60 80 100 120 140 160 180];
y= [49 16 34 43 68 63 62 92 75 110 61 52 61 36 30 15 8];
x = [20 40 60 80 100 120 140 160 180 200 220 240 260 280 300 320 340];

x_sym = x_sym/2
q = sind(x_sym)


for i=1:9
if i~=9
    z(i)=y(i) + y(18-i);
else 
    z(i)=2*y(i);
end
end

c=polyfit(q,z,1);
Z=polyval(c,q);
scatter(q,z)
hold on
plot(q,Z) 

d=c(1)

[Z,bint] = regress(Result', [q;Z]');