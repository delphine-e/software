data=xlsread('C:\Users\PC\Desktop\average.xlsx','Sheet1');
[m,n]=size(data);
total=zeros(m,1);
average=zeros(m,4);
count=zeros(m,1);
p=1;
i=1;
while(i<m)
    count(i,1)=1;
    total(i,1)=data(i,3);
    for j=i+1:m
        if data(i,1)==data(j,1)&&data(i,2)==data(j,2)
           total(i,1)=total(i,1)+data(j,3);
           count(i,1)=count(i,1)+1;
        else break
        end
    end
    average(p,1)=data(i,1);
    average(p,2)=data(i,2);
    average(p,3)=total(i,1)/count(i,1);
    average(p,4)=data(i,4);
    i=j;
    p=p+1;
end
xlswrite('C:\Users\PC\Desktop\average.xlsx',average,'Sheet2');