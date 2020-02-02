clc
clear
%all lengths are in"
%tube_weightpf is lb/f
%chain length given as total length of chain (both sides of loop)

backframe_len = 10; 

frontframe_len = 8; 

frontframe_hyp = 11.14; 

backframe_width = 32;

tube_thick = .095;

tube_diam = .75;

tube_weightpf = .665;

seat_weight = 3.964;

seat_height = 11;

steerhub_mass = 1.39;

seat_len = 16;

gear_diam = 6.52;

seatbarhigh_len = 2;

tire_diam = 26;

tire_weight = 7.981;

baxl_len = (backframe_width)/3;

totalframe_len = backframe_len+frontframe_len;

backframe_hyp = sqrt((baxl_len^2)+(backframe_len^2));

tube_sa = pi*((tube_diam/2)^2)-pi*(((tube_diam/2)-tube_thick)^2);

steercolumn_len = sqrt(frontframe_len^2 + seat_height^2);

chain_len = 2*steercolumn_len+(pi*gear_diam);

seatbarlow_len = seatbarhigh_len-1;

backframtubes_len = 4*(baxl_len)+2*(backframe_hyp);

frontframtubes_len = 2*(frontframe_hyp)+2*(seat_len)+2*(baxl_len);

seatsupport_len = sqrt(backframe_len^2 + seat_height^2);

steercolumn_weight = (tube_sa)*(steercolumn_len)*(tube_weightpf);

steerhub_weight = steercolumn_weight/2;

biketotal_len = totalframe_len+tire_diam;

aboveframtubes_len = seatsupport_len+seatbarlow_len+seatbarhigh_len+steercolumn_len;

aboveframtubes_weight = aboveframtubes_len*tube_sa*tube_weightpf; %change pf to per inch

bottomframtubes_weight = (backframtubes_len+frontframtubes_len)*tube_sa*tube_weightpf;

total_weight = aboveframtubes_weight+bottomframtubes_weight+(chain_len*.022)+(3*tire_weight)+steerhub_weight+seat_weight;





