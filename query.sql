/*THIS SELECTS ALL */
/* SELECT * FROM cars; */


/* THIS SELECTS PROPERTIES brand, model, cars */
/* SELECT brand, model, year FROM cars; */


/* SELECTING ONLY PROPERTIES brand, model, year, conditions */
/* SELECT brand, model, year, condition FROM cars; */


/*FILTERING OUT BY SOLD AND COLOR */
/* SELECT brand, model, sold, year FROM cars WHERE sold = 'false' AND color = 'black'; */



-- SELECT cars WHOSE color is not black and is not sold 
/* SELECT model, brand, year, sold, color FROM cars WHERE color != 'black' AND sold <> 'false'; */


/*
	Select the brand, model, color and year from cars
		exclude any green car
		show models which are 'DB' followed by any other single character
		and the year is after 1964
*/
/* 
SELECT brand, model, color, year FROM cars
    WHERE color NOT LIKE '%green%'
    AND model LIKE 'DB_'
    AND year > 1964; */

/*
	Select cars made between 1980 and 1989
		show the brand, model, year and price
*/

/* SELECT brand, model, year, price FROM cars
	WHERE year >= 1980
	AND year <= 2000; */

/*
	Select brand, model, condition, color and price from cars
		where the price is between $20,000 and $60,000
		and the condition is between 1 and 3
		and the color contains red
*/

/* SELECT brand, model, condition, color, price FROM cars
	WHERE price BETWEEN 20000 AND 60000
	AND condition BETWEEN 1 AND 3
	AND color LIKE '%red%'; */




/* OR */
/*
	Search for brand, model, color, year and price of cars
		where the color is a shade of red
		or the year is between 1960 and 1969
*/

select brand, color, year, price FROM cars 
	WHERE color = '%red%'
	OR year BETWEEN 1960 AND 1969;