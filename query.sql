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

/* select brand, model, color, year, price FROM cars 
	WHERE color LIKE '%red%'
	OR year BETWEEN 1960 AND 1969; */


/*
	Select brand, model, price and sold from cars
		filter out any cars which are sold
		show cars where the brand is none of ('Ford', 'Triumph', 'Chevrolet', 'Dodge')
		or the price is less than $50000
*/




/* IN */
/*
	Select brand, model, price and sold from cars
		filter out any cars which are sold
		show cars where the brand is none of ('Ford', 'Triumph', 'Chevrolet', 'Dodge')
		or the price is less than $50000
*/
/* 
SELECT brand, model, price, sold FROM cars
	WHERE (
		brand NOT IN ('Ford', 'Triumph', 'Chevrolet', 'Dodge')
		OR price < 50000
	) AND sold IS FALSE; */


-- CHALLENGE ONE

/*
	Select brand, model, and color from cars
		where the color is 'red'
		and the brand is not 'Ferrari'
		and the car has not been sold
*/

/* SELECT brand, model, color FROM cars
WHERE color LIKE '%red%'
AND brand != 'Ferrari'
AND SOLD IS false */

/*
	Select brand, model, and color from cars
		where the color is not red, blue, or white
		and the brand is none of: Aston Martin, Bentley or Jaguar
		and sold is false
*/

/* SELECT brand, model, color FROM cars
	WHERE color NOT IN ('red', 'blue', 'white')
	AND brand NOT IN ('Aston Martin', 'Bentley', 'Jaguar')
	AND SOLD IS false; */






/* ORDER BY */

/* CODE 1 */
/*
	Select the brand, model and year from the cars table
		order by the brand
*/

/* SELECT brand, model, year FROM cars
	ORDER BY brand;
CODE 2 */
/*
	Select the brand, model and year from the cars table
		order by the brand descENDING
*/

/* SELECT brand, model, year FROM cars
	ORDER BY brand DESC, year; */
-- CODE 3
/*
	Select the brand, model, condition and price from cars
		order the table by condition in descending order
		and by price in ascending order
*/

/* SELECT brand, model, condition, price FROM cars
	ORDER BY condition DESC, price; */

-- CODE 4
/*
		Select the brand, model, condition and price from cars
		where the car is not sold
		and the condition is not 5
		order the table by condition in descending order
		and by price in ascending order
*/

/* SELECT brand, model, condition, price FROM cars
	WHERE sold IS FALSE
	ORDER BY condition DESC, price;
 */