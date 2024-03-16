function plotDD(DD_chk, DD_amb, RxTime, ELEV, sat, DD)

% plots the DD incuding cleaned by they ambiguities as zero mean against
% time and elevation
%
% [IN]
% DD_chk epochs x 32 OMC DD (checked and corrected)
% DD_amb epochs x 32 Ambiguities of OMC DD
% RxTime epochs x 1 Receiver clock time vector in seconds of day
% ELEV epochs x 32 Elevations of Satellites in view [radiants]
%
% [OUT]


figure()
subplot(1,2,1)
plot(RxTime, DD(:,sat));
ylabel('OMC(DD) GPS L1 [m]');
xlabel('GPS Time [sec]');
title('DD against time(for PRN 4)');
grid on
subplot(1,2,2)
plot(ELEV(:,sat), DD(:,sat));
ylabel('OMC(DD) GPS L1 [m]');
xlabel('Eleveation [degree]');
title('DD against elevation(for PRN 4)');
grid on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure()
subplot(1,2,1)
plot(RxTime, DD_chk(:,sat));
ylabel('OMC(DD_chk) GPS L1 [m]');
xlabel('GPS Time [sec]');
title('corrected DD against time(for PRN 4)');
grid on
subplot(1,2,2)
plot(ELEV(:,sat), DD_chk(:,sat));
ylabel('OMC(DD_chk) GPS L1 [m]');
xlabel('Eleveation [degree]');
title('corrected DD against elevation(for PRN 4)');
grid on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure()
subplot(1,2,1)
% DD residuals against time
plot(RxTime, DD_amb(:,sat));
ylabel('OMC(DD_amb) GPS L1 [m]');
xlabel('GPS Time [sec]');
title ('Ambiguties against time(for PRN 4)');
grid on
subplot(1,2,2)
% DD residuals against elevation
plot(ELEV(:,sat),DD_amb(:,sat));
ylabel('OMC(DD_amb) GPS L1 [m]');
xlabel('Eleveation [degree]');
title('Ambiguties against elevation(for PRN 4)')
grid on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
figure()
subplot(1,2,1)
% DD residuals against time
plot(RxTime, DD_chk(:,sat) - DD_amb(:,sat));
ylabel('OMC(DD_chk - DD_amb) GPS L1 [m]');
xlabel('GPS Time [sec]');
title ('residuals against time(for PRN 4)');
grid on
subplot(1,2,2)
% DD residuals against elevation
plot(ELEV(:,sat), DD_chk(:,sat) - DD_amb(:,sat));
ylabel('OMC(DD_chk - DD_amb) GPS L1 [m]');
xlabel('Eleveation [degree]');
title('residuals against elevation(for PRN 4)')
grid on
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
end
