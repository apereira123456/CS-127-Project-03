%
ind1 = opticalPattern(15,15);

final(1)=sum(sum(nnz(ind1(1:3:end,:,1))));
final(2)=sum(sum(nnz(ind1(1:2:6,2:2:end,2))));
final(3)=sum(sum(nnz(ind1(:,1:2:end,3))));
calculation1 = (final(1)/final(2))+final(3)
%}

%
ind2 = opticalPattern(100,100);

final(1)=sum(sum(nnz(ind2(1:4:end,2:2:end,1))));
final(2)=sum(sum(nnz(ind2(:,2:2:end,2))));
final(3)=sum(sum(nnz(ind2(:,1:2:end,3))));
calculation2 = (final(1)+final(2))+final(3)
%}

%
ind3 = opticalPattern3(99,99);

final(1)=sum(sum(nnz(ind3(1:2:end,:,1))));
final(2)=sum(sum(nnz(ind3(:,1:3:end,2))));
final(3)=sum(sum(nnz(ind3(1:2:end,1:4:end,3))));
calculation3 = (final(1)*final(2))/final(3)
%}

