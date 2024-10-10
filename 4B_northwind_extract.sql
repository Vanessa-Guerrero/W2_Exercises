USE northwind;

/*
What is the name of the table that holds the items Northwind sells? 
- Products

What is the name of the table that holds the types (categories) of the items 
Northwind sells?
- Catergories

What are the first and last names of all the Northwind employees?
- 	Nancy Davolio
	Andrew Fuller
	Janet Leverling
	Margaret Peacock
	Steven Buchanan
	Michael Suyama
	Robert King
	Laura Callahan
	Anne Dodsworth

*/

SELECT * FROM products;
/*  How many records does your query return? How can you change this?
	- 77 records. I can change the limit to # rows in the drop down menu above. More advance is using the LIMIT keyword to cap the number of records */
    
SELECT * FROM categories;
/*	What is the category id of seafood?
	- Seaweed and fish */

SELECT OrderID, OrderDate, ShipName, ShipCountry FROM orders
LIMIT 50;

