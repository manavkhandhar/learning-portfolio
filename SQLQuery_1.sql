-- this dataset holds information of all companies turned unicorn status around the world till date.
-- our query shows AI companies in China that have turned unicorn status.


--overview of AI companies in China
SELECT *
FROM [dbo].[Unicorn_Companies] 
WHERE "Industry" = 'Artificial intelligence' AND "Country" = 'China'

--years it took for companies in China to reach the Unicorn status

SELECT "Company", "Valuation", "Year_Founded","Date_Joined","Country","Funding", YEAR(Date_Joined) - "Year_Founded" AS "Years to become unicorn"
FROM [dbo].[Unicorn_Companies]
WHERE "Industry" = 'Artificial intelligence' AND "Country" = 'China'
ORDER BY "Years to become unicorn" ASC

--filtering data by valuation
SELECT "Company", "Valuation", "Year_Founded","Date_Joined","Country","Funding","Investors", YEAR(Date_Joined) - "Year_Founded" AS "Years to become unicorn"
FROM [dbo].[Unicorn_Companies]
WHERE "Industry" = 'Artificial intelligence' AND "Country" = 'China'
ORDER BY "Valuation" DESC






