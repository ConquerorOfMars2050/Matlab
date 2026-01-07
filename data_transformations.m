aircraft_data = readtable("Semester 1 Week 2 - Computer Practical - basic Excel usage.xlsx", "Sheet", "Aircraft");

%Task 1: divide the range by the cruise speed to calculate the flight time in hours for a full range flight, store this into a column titled Range_hrs (we have just done this)
aircraft_data.Range_hrs = aircraft_data.Range_km ./ aircraft_data.CruiseSpeed_km_h;

%Task 2: calculate the fuel consumption in L for a full range flight using the fuel burn data, store this to a column titled FuelBurn_L
aircraft_data.FuelBurn_L = aircraft_data.FuelBurn_L_per_hr .* aircraft_data.Range_hrs

%Task 3: calculate the fuel consumption in L / 100 km, store this to a column titled FuelConsumption_L_per_100km
aircraft_data.FuelConsumption_L_per_100km = 100 .* aircraft_data.FuelBurn_L ./ aircraft_data.Range_km

%Task 4: calculate the fuel consumption per passenger in L / 100 km . pax, store this to a column titled FuelConsumption_L_per_100km_pax
aircraft_data.FuelConsumption_L_per_100km_pax = aircraft_data.FuelConsumption_L_per_100km ./ aircraft_data.Seats
