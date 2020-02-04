clc 
clear
m=0.9;
i=1;
a_m=[18; 28; 38; 48; 58];
delta(5,1)=0;
i_matrix(:,1)=0;
a1_matrix(:,1)=0;
a2_matrix(:,1)=0;
a3_matrix(:,1)=0;
a4_matrix(:,1)=0;
a5_matrix(:,1)=0;
while true
    jacob=[-sind(a_m(1,1)) -sind(a_m(2,1)) -sind(a_m(3,1)) -sind(a_m(4,1)) -sind(a_m(5,1));...
        -5*sind(5*a_m(1,1)) -5*sind(5*a_m(2,1)) -5*sind(5*a_m(3,1)) -5*sind(5*a_m(4,1)) -5*sind(5*a_m(5,1));...
        -7*sind(7*a_m(1,1)) -7*sind(7*a_m(2,1)) -7*sind(7*a_m(3,1)) -7*sind(7*a_m(4,1)) -7*sind(7*a_m(5,1));...
        -11*sind(11*a_m(1,1)) -11*sind(11*a_m(2,1)) -11*sind(11*a_m(3,1)) -11*sind(11*a_m(4,1)) -11*sind(11*a_m(5,1));...
        -13*sind(13*a_m(1,1)) -13*sind(13*a_m(2,1)) -13*sind(13*a_m(3,1)) -13*sind(13*a_m(4,1)) -13*sind(13*a_m(5,1))];
    B_func=[5*m; 0; 0; 0; 0];
    F_func=[cosd(a_m(1,1))+cos(a_m(2,1))+cosd(a_m(3,1))+cosd(a_m(4,1))+cosd(a_m(5,1));...
        cosd(5*a_m(1,1))+cosd(5*a_m(2,1))+cosd(5*a_m(3,1))+cosd(5*a_m(4,1))+cosd(5*a_m(5,1));...
        cosd(7*a_m(1,1))+cosd(7*a_m(2,1))+cosd(7*a_m(3,1))+cosd(7*a_m(4,1))+cosd(7*a_m(5,1));...
        cosd(11*a_m(1,1))+cosd(11*a_m(2,1))+cosd(11*a_m(3,1))+cosd(11*a_m(4,1))+cosd(11*a_m(5,1));...
        cosd(13*a_m(1,1))+cosd(13*a_m(2,1))+cosd(13*a_m(3,1))+cosd(13*a_m(4,1))+cosd(13*a_m(5,1))];
    delta=jacob\(B_func-F_func);
    a_m=acosd(abs(cosd(a_m+delta)));
    i_matrix(i,1)=i;
    a1_matrix(i,1)=a_m(1,1);
    a2_matrix(i,1)=a_m(2,1);
    a3_matrix(i,1)=a_m(3,1);
    a4_matrix(i,1)=a_m(4,1);
    a5_matrix(i,1)=a_m(5,1);
    if max(abs(delta))<0.057
        break
    end
    i=i+1;
end
display(sort(a_m)); 
plot(i_matrix,a1_matrix,i_matrix,a2_matrix,i_matrix,a3_matrix,i_matrix,a4_matrix,i_matrix,a5_matrix)
a=a_m(1,1);
b=a_m(2,1);
c=a_m(3,1);
d=a_m(4,1);
e=a_m(5,1);
t=10;