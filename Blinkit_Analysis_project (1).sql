CREATE DATABASE blinkit_analysis;
USE blinkit_analysis;

CREATE TABLE grocery_sales (
    Item_Identifier VARCHAR(50),
    Item_Weight FLOAT,
    Item_Fat_Content VARCHAR(20),
    Item_Visibility FLOAT,
    Item_Type VARCHAR(50),
    Item_MRP FLOAT,
    Outlet_Identifier VARCHAR(50),
    Outlet_Establishment_Year INT,
    Outlet_Size VARCHAR(20),
    Outlet_Location_Type VARCHAR(20),
    Outlet_Type VARCHAR(50),
    Item_Outlet_Sales FLOAT);

INSERT INTO grocery_sales
SELECT * 
FROM `1759924698862_grocery_store`;

select * from grocery_sales;

-- =========================================
-- BLINKIT GROCERY SALES ANALYSIS
-- =========================================

-- 1. Show all Item_Identifier
SELECT Item_Identifier FROM grocery_sales;

-- 2. Count total Item_Identifier
SELECT COUNT(Item_Identifier) FROM grocery_sales;

-- 3. Maximum Item Weight
SELECT MAX(Item_Weight) FROM grocery_sales;

-- 4. Minimum Item Weight
SELECT MIN(Item_Weight) FROM grocery_sales;

-- 5. Average Item Weight
SELECT AVG(Item_Weight) FROM grocery_sales;

-- 6. Count of Low Fat items
SELECT COUNT(*) FROM grocery_sales
WHERE Item_Fat_Content = 'Low Fat';

-- 7. Count of Regular items
SELECT COUNT(*) FROM grocery_sales
WHERE Item_Fat_Content = 'Regular';

-- 8. Maximum Item_MRP
SELECT MAX(Item_MRP) FROM grocery_sales;

-- 9. Minimum Item_MRP
SELECT MIN(Item_MRP) FROM grocery_sales;

-- 10. Items with MRP > 200
SELECT Item_Identifier, Item_Fat_Content, Item_Type, Item_MRP
FROM grocery_sales
WHERE Item_MRP > 200;

-- 11. Max MRP where Low Fat
SELECT MAX(Item_MRP)
FROM grocery_sales
WHERE Item_Fat_Content = 'Low Fat';

-- 12. Min MRP where Low Fat
SELECT MIN(Item_MRP)
FROM grocery_sales
WHERE Item_Fat_Content = 'Low Fat';

-- 13. Data where MRP between 50 and 100
SELECT *
FROM grocery_sales
WHERE Item_MRP BETWEEN 50 AND 100;

-- 14. Unique Item_Fat_Content
SELECT DISTINCT Item_Fat_Content FROM grocery_sales;

-- 15. Unique Item_Type
SELECT DISTINCT Item_Type FROM grocery_sales;

-- 16. All data in descending order by MRP
SELECT * FROM grocery_sales ORDER BY Item_MRP DESC;

-- 17. All data in ascending order by Item_Outlet_Sales
SELECT * FROM grocery_sales ORDER BY Item_Outlet_Sales ASC;

-- 18. All data in ascending order by Item_Type
SELECT * FROM grocery_sales ORDER BY Item_Type ASC;

-- 19. Data of Dairy & Meat
SELECT * FROM grocery_sales
WHERE Item_Type IN ('Dairy', 'Meat');

-- 20. Unique Outlet_Size
SELECT DISTINCT Outlet_Size FROM grocery_sales;

-- 21. Unique Outlet_Location_Type
SELECT DISTINCT Outlet_Location_Type FROM grocery_sales;

-- 22. Unique Outlet_Type
SELECT DISTINCT Outlet_Type FROM grocery_sales;

-- 23. Count items by Item_Type (desc)
SELECT Item_Type, COUNT(*)
FROM grocery_sales
GROUP BY Item_Type
ORDER BY COUNT(*) DESC;

-- 24. Count items by Outlet_Size (asc)
SELECT Outlet_Size, COUNT(*)
FROM grocery_sales
GROUP BY Outlet_Size
ORDER BY COUNT(*) ASC;

-- 25. Count items by Outlet_Type (desc)
SELECT Outlet_Type, COUNT(*)
FROM grocery_sales
GROUP BY Outlet_Type
ORDER BY COUNT(*) DESC;

-- 26. Count items by Outlet_Location_Type (desc)
SELECT Outlet_Location_Type, COUNT(*)
FROM grocery_sales
GROUP BY Outlet_Location_Type
ORDER BY COUNT(*) DESC;

-- 27. Max MRP by Item_Type
SELECT Item_Type, MAX(Item_MRP)
FROM grocery_sales
GROUP BY Item_Type;

-- 28. Min MRP by Item_Type
SELECT Item_Type, MIN(Item_MRP)
FROM grocery_sales
GROUP BY Item_Type;

-- 29. Min MRP by Outlet_Establishment_Year (desc)
SELECT Outlet_Establishment_Year, MIN(Item_MRP)
FROM grocery_sales
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year DESC;

-- 30. Max MRP by Outlet_Establishment_Year (desc)
SELECT Outlet_Establishment_Year, MAX(Item_MRP)
FROM grocery_sales
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year DESC;

-- 31. Avg MRP by Outlet_Size (desc)
SELECT Outlet_Size, AVG(Item_MRP)
FROM grocery_sales
GROUP BY Outlet_Size
ORDER BY AVG(Item_MRP) DESC;

-- 32. Avg MRP by Outlet_Type (asc)
SELECT Outlet_Type, AVG(Item_MRP)
FROM grocery_sales
GROUP BY Outlet_Type
ORDER BY AVG(Item_MRP) ASC;

-- 33. Max MRP by Outlet_Type
SELECT Outlet_Type, MAX(Item_MRP)
FROM grocery_sales
GROUP BY Outlet_Type;

-- 34. Max Item_Weight by Item_Type
SELECT Item_Type, MAX(Item_Weight)
FROM grocery_sales
GROUP BY Item_Type;

-- 35. Max Item_Weight by Outlet_Establishment_Year
SELECT Outlet_Establishment_Year, MAX(Item_Weight)
FROM grocery_sales
GROUP BY Outlet_Establishment_Year;

-- 36. Min Item_Weight by Outlet_Type
SELECT Outlet_Type, MIN(Item_Weight)
FROM grocery_sales
GROUP BY Outlet_Type;

-- 37. Avg Item_Weight by Outlet_Location_Type (desc)
SELECT Outlet_Location_Type, AVG(Item_Weight)
FROM grocery_sales
GROUP BY Outlet_Location_Type
ORDER BY AVG(Item_Weight) DESC;

-- 38. Max Item_Outlet_Sales by Item_Type
SELECT Item_Type, MAX(Item_Outlet_Sales)
FROM grocery_sales
GROUP BY Item_Type;

-- 39. Min Item_Outlet_Sales by Item_Type
SELECT Item_Type, MIN(Item_Outlet_Sales)
FROM grocery_sales
GROUP BY Item_Type;

-- 40. Min Item_Outlet_Sales by Outlet_Establishment_Year
SELECT Outlet_Establishment_Year, MIN(Item_Outlet_Sales)
FROM grocery_sales
GROUP BY Outlet_Establishment_Year;

-- 41. Max Item_Outlet_Sales by Outlet_Establishment_Year (desc)
SELECT Outlet_Establishment_Year, MAX(Item_Outlet_Sales)
FROM grocery_sales
GROUP BY Outlet_Establishment_Year
ORDER BY Outlet_Establishment_Year DESC;

-- 42. Avg Item_Outlet_Sales by Outlet_Size (desc)
SELECT Outlet_Size, AVG(Item_Outlet_Sales)
FROM grocery_sales
GROUP BY Outlet_Size
ORDER BY AVG(Item_Outlet_Sales) DESC;

-- 43. Avg Item_Outlet_Sales by Outlet_Type
SELECT Outlet_Type, AVG(Item_Outlet_Sales)
FROM grocery_sales
GROUP BY Outlet_Type;

-- 44. Max Item_Outlet_Sales by Outlet_Type
SELECT Outlet_Type, MAX(Item_Outlet_Sales)
FROM grocery_sales
GROUP BY Outlet_Type;

-- 45. Total Item_Outlet_Sales by Item_Type
SELECT Item_Type, SUM(Item_Outlet_Sales)
FROM grocery_sales
GROUP BY Item_Type;

-- 46. Total Item_Outlet_Sales by Item_Fat_Content
SELECT Item_Fat_Content, SUM(Item_Outlet_Sales)
FROM grocery_sales
GROUP BY Item_Fat_Content;

-- 47. Max Item_Visibility by Item_Type
SELECT Item_Type, MAX(Item_Visibility)
FROM grocery_sales
GROUP BY Item_Type;

-- 48. Min Item_Visibility by Item_Type
SELECT Item_Type, MIN(Item_Visibility)
FROM grocery_sales
GROUP BY Item_Type;

-- 49. Total Sales by Item_Type (Tier 1 only)
SELECT Item_Type, SUM(Item_Outlet_Sales)
FROM grocery_sales
WHERE Outlet_Location_Type = 'Tier 1'
GROUP BY Item_Type;

-- 50. Total Sales by Item_Type (Low Fat & LF)
SELECT Item_Type, SUM(Item_Outlet_Sales)
FROM grocery_sales
WHERE Item_Fat_Content IN ('Low Fat', 'LF')
GROUP BY Item_Type;
