function DD = genDD(OMC_STA1, OMC_STA2, refSatID,n)

% generates OMC Double Differences between station OMC1 and OMC2
%
% [IN]
% OMC_STA1 epochs x 32 OMC of phase obs of station 1
% OMC_STA2 epochs x 32 OMC of phase obs of station 2
% refStaID scalar number of common reference satellite
%
% [OUT]
% DD epochs x 32 OMC DD

for PRN=1:1:32
    OMC_DD(:,PRN) = (OMC_STA1(:,PRN) - OMC_STA1(:,refSatID)) - (OMC_STA2(:,PRN) - OMC_STA2(:,refSatID));
end
%OMC_DD(:,refSatID) = nan;
DD = OMC_DD;
end
