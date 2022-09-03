function [output] = datause(A)
k=1;
k1=1;
data1=A;
data1(isnan(data1))=0;
B1=find(data1(:,1)==0);
data1(B1,:)=[];
B2=find(data1(:,2)==0);
data1(B2,:)=[];
B3=find(data1(:,3)==0);
data1(B3,:)=[];
B4=find(data1(:,4)==0);
data1(B4,:)=[];
%%
data2=data1;
ss=size(data1);
d=zeros(ss(1),ss(2)+1);
d(1:ss(1),1:4)=data2;
for i=1:size(data2,1)
    class__1(i,1)=data2(i,1);
    class__1(i,2)=data2(i,2);
    class__1(i,3)=data2(i,3);
    if data2(i,4)>=10 && data2(i,4)<=18
        data2(i,5)=1;
    end
    if data2(i,4)>=19 && data2(i,4)<=26
        data2(i,5)=2;
    end
    if data2(i,4)>=27 && data2(i,4)<=34
        data2(i,5)=2;
    end
    if data2(i,4)>=35 && data2(i,4)<=42
        data2(i,5)=3;
    end
    if data2(i,4)>=43 && data2(i,4)<=50
        data2(i,5)=4;
    end
end
output=data2;
end