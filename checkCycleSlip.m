function DD_chk = checkCycleSlip(DD, threshold,n)

% checks for cycle slips and repairs them, if possible
%
% [IN]
% DD epochs x 32 OMC DD
% threshold scalar uncertainty to determine cycle slips
%
% [OUT]
% DD_chk epochs x 32 checked and repaired DDs

for i=1:1:32
    temp = DD(:,i);
    TD = diff(temp);
    cycle_slip = find(TD >= threshold);
    
    for j=1:1:length(cycle_slip)
        for k=1+cycle_slip(j):1:length(temp)
            temp(k) = temp(k) - TD(cycle_slip(j));
        end
    end
    DD_chk(:,i) = temp;
end
end

