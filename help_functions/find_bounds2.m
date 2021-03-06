function [LRbound]=find_bounds2(E)

LRbound=zeros(size(E,1),3);
for m=1:size(E,1)
Emax=max(abs(E(m,:).^2),[],2);
LRbound(m,2)=find(abs(E(m,:).^2)==Emax,1);
Emax=Emax./exp(2);
LRbound(m,1)=find(abs(E(m,:).^2)>Emax,1);
LRbound(m,3)=find(abs(E(m,:).^2)>Emax,1,'last');
end

end