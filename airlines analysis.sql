CREATE TABLE airline_safety (
  airline VARCHAR(50),
  avail_seat_km_per_week BIGINT,
  incidents_85_99 INTEGER,
  fatal_accidents_85_99 INTEGER,
  fatalities_85_99 INTEGER,
  incidents_00_14 INTEGER,
  fatal_accidents_00_14 INTEGER,
  fatalities_00_14 INTEGER) ;


	INSERT INTO airline_safety (airline, avail_seat_km_per_week, incidents_85_99, fatal_accidents_85_99, fatalities_85_99, incidents_00_14, fatal_accidents_00_14, fatalities_00_14)
VALUES
  ('Aer Lingus', 320906734, 2, 0, 0, 0, 0, 0),
  ('Aeroflot*', 1197672318, 76, 14, 128, 6, 1, 88),
  ('Aerolineas Argentinas', 385803648, 6, 0, 0, 1, 0, 0),
  ('Aeromexico*', 596871813, 3, 1, 64, 5, 0, 0),
  ('Air Canada', 1865253802, 2, 0, 0, 2, 0, 0),
  ('Air France', 3004002661, 14, 4, 79, 6, 2, 337),
  ('Air India*', 869253552, 2, 1, 329, 4, 1, 158),
  ('Air New Zealand*', 710174817, 3, 0, 0, 5, 1, 7),
  ('Alaska Airlines*', 965346773, 5, 0, 0, 5, 1, 88),
  ('Alitalia', 698012498, 7, 2, 50, 4, 0, 0),
  ('All Nippon Airways', 1841234177, 3, 1, 1, 7, 0, 0),
  ('American*', 5228357340, 21, 5, 101, 17, 3, 416),
  ('Austrian Airlines', 358239823, 1, 0, 0, 1, 0, 0),
  ('Avianca', 396922563, 5, 3, 323, 0, 0, 0),
  ('British Airways*', 3179760952, 4, 0, 0, 6, 0, 0),
  ('Cathay Pacific*', 2582459303, 0, 0, 0, 2, 0, 0),
  ('China Airlines', 813216487, 12, 6, 535, 2, 1, 225),
  ('Condor', 417982610, 2, 1, 16, 0, 0, 0),
  ('COPA', 550491507, 3, 1, 47, 0, 0, 0),
  ('Delta / Northwest*', 6525658894, 24, 12, 407, 24, 2, 51),
  ('Egyptair', 557699891, 8, 3, 282, 4, 1, 14),
  ('El Al', 335448023, 1, 1, 4, 1, 0, 0),
  ('Ethiopian Airlines', 488560643, 25, 5, 167, 5, 2, 92),
  ('Finnair', 506464950, 1, 0, 0, 0, 0, 0),
  ('Garuda Indonesia', 613356665, 10, 3, 260, 4, 2, 22),
  ('Gulf Air', 301379762, 1, 0, 0, 3, 1, 143),
  ('Hawaiian Airlines', 493877795, 0, 0, 0, 1, 0, 0),
  ('Iberia', 1173203126, 4, 1, 148, 5, 0, 0),
  ('Japan Airlines', 1574217531, 3, 1, 520, 0, 0, 0),
  ('Kenya Airways', 277414794, 2, 0, 0, 2, 2, 283),
  ('KLM*', 1874561773, 7, 1, 3, 1, 0, 0),
  ('Korean Air', 1734522605, 12, 5, 425, 1, 0, 0),
  ('LAN Airlines', 1001965891, 3, 2, 21, 0, 0, 0),
  ('Lufthansa*', 3426529504, 6, 1, 2, 3, 0, 0),
  ('Malaysia Airlines', 1039171244, 3, 1, 34, 3, 2, 537),
  ('Pakistan International', 348563137, 8, 3, 234, 10, 2, 46),
  ('Philippine Airlines', 413007158, 7, 4, 74, 2, 1, 1),
  ('Qantas*', 1917428984, 1, 0, 0, 5, 0, 0),
  ('Royal Air Maroc', 295705339, 5, 3, 51, 3, 0, 0),
  ('SAS*', 682971852, 5, 0, 0, 6, 1, 110),
  ('Saudi Arabian', 859673901, 7, 2, 313, 11, 0, 0),
  ('Singapore Airlines', 2376857805, 2, 2, 6, 2, 1, 83),
  ('South African', 651502442, 2, 1, 159, 1, 0, 0),
  ('Southwest Airlines', 3276525770, 1, 0, 0, 8, 0, 0),
  ('Sri Lankan / AirLanka', 325582976, 2, 1, 14, 4, 0, 0),
  ('SWISS*', 792601299, 2, 1, 229, 3, 0, 0),
  ('TACA', 259373346, 3, 1, 3, 1, 1, 3),
  ('TAM', 1509195646, 8, 3, 98, 7, 2, 188),
  ('TAP - Air Portugal', 619130754, 0, 0, 0, 0, 0, 0),
  ('Thai Airways', 1702802250, 8, 4, 308, 2, 1, 1),
  ('Turkish Airlines', 1946098294, 8, 3, 64, 8, 2, 84),
  ('United / Continental*', 7139291291, 19, 8, 319, 14, 2, 109),
  ('US Airways / America West*', 2455687887, 16, 7, 224, 11, 2, 23),
  ('Vietnam Airlines', 625084918, 7, 3, 171, 1, 0, 0),
  ('Virgin Atlantic', 1005248585, 1, 0, 0, 0, 0, 0),
  ('Xiamen Airlines', 430462962, 9, 1, 82, 2, 0, 0);
select * from airline_safety ;

--total number of records in airline safety--
SELECT COUNT(*) FROM airline_safety;

--get the airlines with the highest number of fatalities between 1985-99--
SELECT airline, fatalities_85_99 FROM airline_safety
ORDER BY fatalities_85_99 DESC
LIMIT 5; 

--get the airlines with zero fatality in both periods --
SELECT airline
FROM airline_safety
WHERE fatalities_85_99 = 0 AND fatalities_00_14 = 0;

--get the average number of incidents per airline between 2000-2014 --
SELECT AVG(incidents_00_14) AS avg_incidents_00_14
FROM airline_safety;

--get the top 10 airlines with the highest available seat kilometres per week --
SELECT airline, avail_seat_km_per_week FROM airline_safety
ORDER BY avail_seat_km_per_week DESC
LIMIT 10;

-- get the total number of incidents ,fatal accidents ,fatalities for each airlnes --
SELECT airline,
       SUM(incidents_85_99) + SUM(incidents_00_14) AS total_incidents,
       SUM(fatal_accidents_85_99) + SUM(fatal_accidents_00_14) AS total_fatal_accidents,
       SUM(fatalities_85_99) + SUM(fatalities_00_14) AS total_fatalities FROM airline_safety
GROUP BY airline
ORDER BY total_fatalities DESC; 

-- get the airlines with highest number of indidents per available seat kilometer --
SELECT airline,
       (SUM(incidents_85_99) + SUM(incidents_00_14)) / avail_seat_km_per_week AS incident_rate FROM airline_safety
GROUP BY airline, avail_seat_km_per_week
ORDER BY incident_rate DESC; 

-- get the airlines with the highest and lowest number of incidents in 2000-2014 period--
SELECT airline, incidents_00_14, RANK() OVER (ORDER BY incidents_00_14 DESC) AS rank_incidents_00_14 FROM airline_safety
WHERE incidents_00_14 > 0 ORDER BY incidents_00_14 DESC;

--calculate the change in incidents and fatalitites between the two periods for each airline --
SELECT airline, incidents_00_14 - incidents_85_99 AS incident_change,fatalities_00_14 - fatalities_85_99 AS fatality_change FROM airline_safety ORDER BY incident_change DESC, fatality_change DESC;

--identify the airlines that has a decrease in incidents but increase in fatalities between the two periods --
SELECT airline FROM airline_safety WHERE incidents_00_14 < incidents_85_99 AND fatalities_00_14 > fatalities_85_99;


















