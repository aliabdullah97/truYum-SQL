USE truyum;

INSERT INTO menu_Item(Name, Price, Active, Date_of_Launch, Category, Free_Delivery)
VALUES ('Sandwich', 99, 'Yes', '2017-03-15', 'Main Course', 'Yes'),
('Burger', 129, 'Yes', '2017-12-23', 'Main Course', 'No'),
('Pizza', 149, 'Yes', '2017-08-21', 'Main Course', 'No'),
('French Fries', 57, 'No', '2017-07-02', 'Starters', 'Yes'),
('Chocolate Brownie', 32, 'Yes', '2022-11-02', 'Dessert', 'Yes');

SELECT * FROM menu_Item;

SELECT * FROM menu_Item
WHERE Active='Yes' AND Date_of_Launch<CURDATE();

SELECT * FROM menu_Item 
WHERE M_id=4;

UPDATE menu_Item
SET Name='Biryani', Price=120, Active='No', Date_of_Launch='2017-10-20', Category='Main Course', Free_Delivery='Yes'
WHERE M_id=1; 

INSERT INTO user (U_id, U_name)
VALUES (1,'Admin'),(2,'Customer');

INSERT INTO cart(cart_id, menuItem_id, user_id)
VALUES (1,1,2),(2,4,2),(3,5,2);

SELECT menu_Item.Name, menu_Item.Price, menu_Item.Free_Delivery FROM menu_Item
INNER JOIN cart ON menu_Item.M_id = cart.menuItem_id;

SELECT SUM(menu_Item.Price) FROM menu_Item
INNER JOIN cart ON menu_Item.M_id = cart.menuItem_id;

DELETE FROM cart
WHERE user_id=2 AND menuItem_id=4;



