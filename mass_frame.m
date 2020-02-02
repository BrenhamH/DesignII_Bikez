clc
clear
%all lengths are in"
%chain length given as total length of chain (both sides of loop)

backframe_len = []; 

frontframe_len = []; 

seat_width = [];

seat_weight = [];

seat_height = [];

gear_diam = [];

seatbarhigh_len = []; %how high off the frame we want the front of the seat

tire_diam = [];

tube_weightpf = [];

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
%bottomframtubes_comx = ((tube_weightpi*backframe_width)*backframe_len)+2*(