clc 
clear
m=0.8;                    %setting up of modulation index
i=1;
a_m=[20; 60];         %setting of initial angles 
delta(2,1)=0;             %delta matrix represent change after every iteration
i_matrix(:,1)=0;
a1_matrix(:,1)=0;
a2_matrix(:,1)=0;
while true
    jacob=[-sind(a_m(1,1)) -sind(a_m(2,1));...
        -5*sind(5*a_m(1,1)) -5*sind(5*a_m(2,1))];
    B_func=[2*m; 0];
    F_func=[cosd(a_m(1,1))+cos(a_m(2,1));...
        cosd(5*a_m(1,1))+cosd(5*a_m(2,1))];
    delta=jacob\(B_func-F_func);
    a_m=acosd(abs(cosd(a_m+delta)));
    i_matrix(i,1)=i;
    a1_matrix(i,1)=a_m(1,1);
    a2_matrix(i,1)=a_m(2,1);
    if max(abs(delta))<0.057       %less than 0.001 radian
        break
    end
    i=i+1;
end
display(sort(a_m)); 
plot(i_matrix,a1_matrix,i_matrix,a2_matrix)
a=a_m(1,1);                        %final angles linked to the model
b=a_m(2,1);
t=0.02;                            %time period corresponding to the model