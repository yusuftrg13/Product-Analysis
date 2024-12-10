/*Let's make choice for table*/
use seller

/*Take a look what is the inside of the table?*/
Select*From shopping_trends

/*Let's see random columns*/
Select Customer_ID,Age,Gender,Location
From shopping_trends


/*We are going to gather customer who over 30 years old*/
Select * From shopping_trends
where Age>30



Select * From  shopping_trends
ORDER BY Purchase_Amount_USD  DESC;

/*I'm gonna find out that clothing detail*/
Select Customer_ID,Age,Gender,Item_Purchased,Location
From shopping_trends
Where Category='Clothing';

/*We are going to learn average usd by category*/
Select Category,AVG(Purchase_Amount_USD ) AS AVERAGE_USD
From shopping_trends
Group By Category

/*Let's find out average rating by categories*/

Select Category,AVG(Review_Rating) AS Average_Rating
from shopping_trends
Group By Category


/*Let's discover average sales amount by location*/
Select Location,Avg(Purchase_Amount_USD) as Average_Sales_USD
from shopping_trends
Group by Location

/*Total Sales amount by location*/
Select Location,sum(Purchase_Amount_USD) as Total_Sales
from shopping_trends
Group by Location

/*Avg sales amount by season*/
Select Season,AVG(Purchase_Amount_USD) AS Max_Sales
from shopping_trends
Group by Season

/*We are going to learn how many sales is there by pay method*/
Select Payment_Method,Count(*) as Sales_Count
from shopping_trends
Group by Payment_Method

/*How many sales were implemented discount*/
SELECT Discount_Applied, SUM(Purchase_Amount_USD) as Total_Sales
FROM shopping_trends
GROUP BY Discount_Applied;


/*Most popular category*/
Select Category,Count(*) as Popular_Category
from shopping_trends
Group By Category

/*Most higher rating score by locations*/
Select Location,MAX(Review_Rating) as Max_Rating
from shopping_trends
Group by Location


/*We are going to learn average sales amount by subscription status*/
Select Subscription_Status,Avg(Purchase_Amount_USD) as Avera_Sales
From shopping_trends
group by Subscription_Status


SELECT Payment_Method, SUM(Purchase_Amount_USD) as Total_Sales
FROM shopping_trends
GROUP BY Payment_Method;

/*We are examining sales trend analysis*/
Select Season,SUM(Purchase_Amount_USD) as Total_Sales_by_Season
From shopping_trends
group by Season
order by Total_Sales_by_Season Desc; /*
We also learnt that most higher sales was became in Fall
*/


SELECT Category, AVG(Review_Rating) as Average_Review_Rating
FROM shopping_trends
GROUP BY Category
ORDER BY Average_Review_Rating DESC;