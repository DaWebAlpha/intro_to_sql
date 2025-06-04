import { PGlite } from '@electric-sql/pglite';
import fs from 'node:fs/promises'

const db = new PGlite();

(async () => {
    await db.exec(`
        CREATE TABLE IF NOT EXISTS cars(
            id SERIAL PRIMARY KEY,
            brand TEXT, 
            model TEXT, 
            year INTEGER, 
            price INTEGER, 
            color TEXT, 
            condition INTEGER,
            Sold BOOLEAN   
        );
        INSERT INTO cars(brand, model, year, price, color, condition, sold) VALUES
        ('Ford', 'Mustang', 1965, 45000, 'white', 4, false),
        ('Chevrolet', 'Camaro', 1970, 48000, 'red', 2, false)
        
    `)
    const sql = await fs.readFile('query.sql', 'utf8');
    const result = await db.query(sql);

    console.clear();
    console.table(result.rows);
})();