data=xlsread('C:\Users\PC\Desktop\label.xlsx','Sheet1');
[m,n]=size(data);
back=zeros(m,1);
back(1,1)=1;
i=1;
while(i<=m)
    for j=i+1:m
        if data(i,3)==data(j,3)&&data(i,4)==data(j,4)
            back(j,1)=back(i,1);
        else break;
        end
    end
    p=i;
    i=j;
    back(i,1)=back(p,1)+1;
end
xlswrite('C:\Users\PC\Desktop\label.xlsx',back,2);
            
        
            