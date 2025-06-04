-- query.sql

--SELECT * FROM cars

--SELECT brand, model, price FROM cars

--SELECT brand, model, year, condition FROM cars;


/* FILTERING RESULTS */
/*
	Select the brand, model, condition and price from cars
		where the condition equals 0
*/
--SELECT brand,  model, condition, price FROM cars WHERE condition = 0;


/*
	Select the brand, model, condition and price from cars
		find results where the price is less than $50,000
*/

--SELECT brand, model, condition, price WHERE price < 50000;

--SELECT * FROM cars WHERE year = 2001 and model = 'X-Type';

/*
	Filter out cars from 1965
		Select the brand, model, year and price
*/


--NOT EQUAL TO --
--SELECT brand, model, year, price FROM cars WHERE year != 1965;
--SELECT brand, model, year, price FROM cars WHERE year <> 1965;



/*
	Select the brand, model, color and year
		find any car where the color includes 'green'
*/
SELECT brand, model, color, year FROM cars WHERE color LIKE '%green%';
