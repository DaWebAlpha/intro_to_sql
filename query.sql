-- query.sql

--SELECT * FROM cars

--SELECT brand, model, price FROM cars

--SELECT brand, model, year, condition FROM cars;


/* FILTERING RESULTS */
/*
	Select the brand, model, condition and price from cars
		where the condition equals 0
*/

SELECT brand,  model, condition, price FROM cars WHERE condition = 0;