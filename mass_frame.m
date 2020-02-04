clc
clear
%all lengths are in"
%chain length given as total length of chain (both sides of loop)

backframe_len = 10; 

frontframe_len = 8; 

seat_width = 16;

seat_weight = 3.967;

seat_height = 11;

gear_diam = 2.878;

seatbarhigh_len = 2; %how high off the frame we want the front of the seat

tire_diam = 26;

tire_weight = 7.981;

tube_weightpf = .665;

frontframe_hyp = sqrt((seat_width/2)^2+frontframe_len^2); 

baxl_len = seat_width/2;

tube_weightpi = tube_weightpf/12;

backframe_width = seat_width + 2*baxl_len;

totalframe_len = backframe_len+frontframe_len+seat_width;

backframe_hyp = sqrt((baxl_len^2)+(backframe_len^2));

steercolumn_len = sqrt(frontframe_len^2 + seat_height^2);

chain_len = 2*steercolumn_len+(pi*gear_diam);

seatbarlow_len = seatbarhigh_len-1;

backframtubes_len = backframe_width+seat_width+2*(backframe_hyp);

frontframtubes_len = 2*(frontframe_hyp)+4*(seat_width);

seatsupport_len = sqrt(backframe_len^2 + seat_height^2);

steercolumn_weight = (steercolumn_len)*(tube_weightpi);

steerhub_weight = steercolumn_weight;

biketotal_len = totalframe_len+tire_diam;

aboveframtubes_len = seatsupport_len+seatbarlow_len+seatbarhigh_len+steercolumn_len;

aboveframtubes_weight = aboveframtubes_len*tube_weightpi;

bottomframtubes_weight = (backframtubes_len+frontframtubes_len)*tube_weightpi;

%COM calculations use point at back of seat on bottom frame as origin
total_weight = aboveframtubes_weight+bottomframtubes_weight+(chain_len*.022)+(3*tire_weight)+steerhub_weight+seat_weight;

COMY_TOPEQN = 2*(tire_weight*tire_diam/2)+(seatsupport_len*tube_weightpi*(seatsupport_len/2*sind(47.73)+13))+(seatbarlow_len*tube_weightpi*(tire_diam/2+.5)+seatbarhigh_len*(tire_diam/2+1))+(steercolumn_len*tube_weightpi*(steercolumn_len/2*sind(54.59)));

COMY_BOTTEQN = tire_weight*2+seatsupport_len*tube_weightpi+seatbarlow_len*tube_weightpi+steercolumn_len*tube_weightpi;

COMY_LOC = COMY_TOPEQN/COMY_BOTTEQN;

COMX_TOPEQN = 2*(tire_weight*tire_diam/2)+2*(backframtubes_len*tube_weightpi*backframe_len)+2*(tube_weightpi*(seatbarhigh_len+seatbarlow_len+seatsupport_len)*(seat_width/2+backframe_len+tire_diam/2))+2*(frontframtubes_len*tube_weightpi*frontframe_len)+(tire_weight*(tire_diam/2+backframe_len+seat_width+frontframe_len))+(seatsupport_len*tube_weightpi*(seatsupport_len/2*cosd(47.73)))+(steercolumn_weight*(steercolumn_weight/2*cosd(54.59)));

COMX_BOTTEQN = 2*tire_weight+2*backframtubes_len*tube_weightpi+2*(tube_weightpi*(seatbarlow_len+seatbarhigh_len+seatsupport_len))+2*(frontframtubes_len*tube_weightpi)+tire_weight+seatsupport_len*tube_weightpi+steercolumn_weight;

COMX_LOC = COMX_TOPEQN/COMX_BOTTEQN;

COMZ_LOC = 16; %Assume bike is symmetrical, COM is half of total width