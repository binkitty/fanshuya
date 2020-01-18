function ExtractMthEnd()
load dtd_mle_2000.mat;
date=firmDtd(:,2);
len=length(date);
date1=zeros(len,8);

for i=1:1:len
    date1(i,:)=str2num(num2str(date(i))')';
end

date1(:,4)=1000*date1(:,1)+100*date1(:,2)+10*date1(:,3)+date1(:,4);
date1(:,6)=10*date1(:,5)+date1(:,6);
date1(:,7)=10*date1(:,7)+date1(:,8);

dt=datetime(date1(:,4),date1(:,6),date1(:,7));  
endRows = find(ismember(dt,unique(dateshift(dt,'end','month')))); %there's a mistake that it cannot extract the last day of March

len=length(endRows);

date2=zeros(len,3);
date2=firmDtd(endRows,:);

%to find where is NaN
%for j=1:31
    for i=1:len
        if isnan(date2(i,3))
           endRows(i,1)=endRows(i,1)-1;
            date2=firmDtd(endRows,:);
       end
   end
%end
filename='dtd_mle_2000_monthly.mat';
save(filename);
end





