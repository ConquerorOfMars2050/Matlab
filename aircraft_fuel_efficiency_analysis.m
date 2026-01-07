fuel_data = readtable("Semester 1 Week 3 - Computer Practical - fitting and data analysis.xlsx");
fuel_data.FuelConsumption_L_per_100Km_pax = fuel_data.FuelPerAircraft_L_100Km_ ./ fuel_data.TypicalSeats;
fgr = figure();
tly = tiledlayout(fgr, 1, 2);
left_tile = nexttile(tly, 1);
scatleft = scatter(left_tile, fuel_data.TypicalSeats, fuel_data.FuelPerAircraft_L_100Km_);
xlabel('X');
ylabel('Y');

right_tile = nexttile(tly, 2);
scatright = scatter(right_tile, fuel_data.TypicalSeats, fuel_data.FuelConsumption_L_per_100Km_pax);
xlabel('X');
ylabel('Y');

R1 = corrcoef(fuel_data.FuelPerAircraft_L_100Km_, fuel_data.TypicalSeats) 
R2 = corrcoef(fuel_data.FuelConsumption_L_per_100Km_pax, fuel_data.TypicalSeats)

R1 = corr(fuel_data.FuelPerAircraft_L_100Km_, fuel_data.TypicalSeats)
R2 = corr(fuel_data.FuelConsumption_L_per_100Km_pax, fuel_data.TypicalSeats)
