load firmSpecific.mat;
load firmList.mat;

% [a,b]=size(firmList);
% [a1,b1,c1]=size(firmSpecific);
% 
% A=zeros(a,b);
% A1=zeros(a1,b1,c1);
% for i=1:a
%     for j=1:b
%         A(i,j)=firmList(i,j);
%     end
% end
% 
% for i=1:a1
%     for j=1:b1
%         for k=1:c1
%             A1(i,j,k)=firmSpecific(i,j,k);
%         end
%     end
% end
% 
% date=innerjoin(A,A1);

Rows=find(ismember(firmList(:,2),10008));
% NRows=find(isnotmember(firmList(:,2),10008));
data=firmList(Rows,:);
data_fin=innerjoin(data,firmSpecific);

for i=1:35
    Rows1=find(ismember(firmSpecific(:,:,i),data(:,1)));
end

