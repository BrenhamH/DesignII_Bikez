clc
clear
%all lengths are in"
%chain length given as total length of chain (both sides of loop)

backframe_len = []; 

frontframe_len = []; 

frontframe_hyp = []; 

backframe_width = [];

tube_thick = [];

tube_diam = [];

tube_weightpi = [];

seat_weight = [];

seat_height = [];

steerhub_mass = [];

seat_len = [];

gear_diam = [];

seatbarhigh_len = [];

tire_diam = [];

tube_weightpf = [];

tube_weightpi = tube_weightpf/12;

baxl_len = (backframe_width)/3;

totalframe_len = backframe_len+frontframe_len;

backframe_hyp = sqrt((baxl_len^2)+(backframe_len^2));

steercolumn_len = sqrt(frontframe_len^2 + seat_height^2);

chain_len = 2*steercolumn_len+(pi*gear_diam);

seatbarlow_len = seatbarhigh_len-1;

backframtubes_len = 4*(baxl_len)+2*(backframe_hyp);

frontframtubes_len = 2*(frontframe_hyp)+2*(seat_len)+2*(baxl_len);

seatsupport_len = sqrt(backframe_len^2 + seat_height^2);

steercolumn_weight = (steercolumn_len)*(tube_weightpi);

steerhub_weight = steercolumn_weight/2;

biketotal_len = totalframe_len+tire_diam;

aboveframtubes_len = seatsupport_len+seatbarlow_len+seatbarhigh_len+steercolumn_len;

aboveframtubes_weight = aboveframtubes_len*tube_weightpi;

bottomframtubes_weight = (backframtubes_len+frontframtubes_len)*tube_weightpi;

%COM calculations use point at back of seat on bottom frame as origin
bottomframtubes_comx = ((tube_weightpi*backframe_width)*backframe_len)+2*(