%Q2

%a)
load pfInfo.mat;
%b)
data=pfInfo.firmList(:,1);
data1=table(data);
writetable(data1,'companylist.csv');
%c)
fin=zeros(996,1);bm=zeros(996,1);com=zeros(996,1);cc=zeros(996,1);
cn=zeros(996,1);div=zeros(996,1);ener=zeros(996,1);ind=zeros(996,1);
tech=zeros(996,1);uti=zeros(996,1);

data2=pfInfo.firmList(:,7);

for i=1:1:996
    if data2(i)==10008 
        fin(i,1)=data(i);
    end
    if data2(i)==10002
        bm(i,1)=data(i);
    end
    if data2(i)==10003
        com(i,1)=data(i);
    end
    if data2(i)==10004
        cc(i,1)=data(i);
    end
    if data2(i)==10005
        cn(i,1)=data(i);
    end
    if data2(i)==10006
        div(i,1)=data(i);
    end
    if data2(i)==10007
        ener(i,1)=data(i);
    end
    if data2(i)==10011
        ind(i,1)=data(i);
    end
    if data2(i)==10013
        tech(i,1)=data(i);
    end
    if data2(i)==10014
        uti(i,1)=data(i);
    end
end
fin(fin==0) = [];bm(bm==0) = [];com(com==0) = [];cc(cc==0) = [];
cn(cn==0) = [];div(div==0) = [];ener(ener==0) = [];ind(ind==0) = [];
tech(tech==0) = [];uti(uti==0) = [];

fin1=table(fin);bm1=table(bm);com1=table(com);cc1=table(cc);
cn1=table(cn);div1=table(div);ener1=table(ener);ind1=table(ind);
tech1=table(tech);uti1=table(uti);

writetable(fin1,'Companylist_Financial.csv');writetable(bm1,'Companylist_Basic_Material.csv');
writetable(com1,'Companylist_Communications.csv');writetable(cc1,'Consumer_cyclical.csv');
writetable(cn1,'Companylist_noncyclical.csv');writetable(div1,'Companylist_Diversified.csv');
writetable(ener1,'Companylist_Energy.csv');writetable(ind1,'Companylist_Industrial.csv');
writetable(tech1,'Companylist_Technology.csv');writetable(uti1,'Companylist_Utilities.csv');





 
