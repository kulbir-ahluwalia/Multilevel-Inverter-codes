clc 
clear
m=0.001;
a_m=[10; 20; 30; 40; 50];
delta(5,10)=0;
a1_matrix(:,1)=0;
a2_matrix(:,1)=0;
a3_matrix(:,1)=0;
a4_matrix(:,1)=0;
a5_matrix(:,1)=0;
m_matrix(:,1)=0;
j=1;
while m<=1
    i=1;
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
        if max(abs(delta))<0.057
            break
        end
        i=i+1;
    end
    display(m)
    a1_matrix(j,1)=a_m(1,1);
    a2_matrix(j,1)=a_m(2,1);
    a3_matrix(j,1)=a_m(3,1);
    a4_matrix(j,1)=a_m(4,1);
    a5_matrix(j,1)=a_m(5,1);
    m_matrix(j,1)=m;
    j=j+1;
    m=m+0.001;
end