function DD_amb = genDDamb(DD_chk)
% compute the DD ambiguities (full cycles) and give them back
%
% [IN]
% DD_chk epochs x 32 OMC DD (checked and corrected)
%
% [OUT]
% DD_amb epochs x 32 Double differences and their ambiguities

lambda = 0.1905;

DD_amb = zeros(size(DD_chk));

% put 0 value instead of NAN in DD_chk matrix

for i=1:1:length(DD_chk)
    for j=1:1:32
        if isnan(DD_chk(i,j)) == 1
            DD_chk(i,j) = 0;
        end
    end
end
% compute the ambiguty for any satellite and fill the DD_amb matrix
for j=1:1:length(DD_chk)
    for k=1:1:32
        if DD_chk(j,k) ~= 0
            amb = round(mean(DD_chk(:,k)) * (1/lambda)) * lambda;
            DD_amb(j,k) = amb;
        end
    end
end

end
