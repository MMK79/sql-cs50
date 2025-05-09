database:
wget https://cdn.cs50.net/sql/2024/x/psets/1/dese.zip
questions:
##### [`1.sql`](https://cs50.harvard.edu/sql/2024/psets/1/dese/#1sql)

Your colleague is preparing a map of all public schools in Massachusetts. In `1.sql`, write a SQL query to find the names and cities of all public schools in Massachusetts.

- Keep in mind that not all schools in the `schools` table are considered traditional public schools. Massachusetts also recognizes [charter schools](https://en.wikipedia.org/wiki/Charter_schools_in_the_United_States), which (according to DESE!) are considered distinct.

##### [`2.sql`](https://cs50.harvard.edu/sql/2024/psets/1/dese/#2sql)

Your team is working on archiving old data. In `2.sql`, write a SQL query to find the names of districts that are no longer operational.

- Districts that are no longer operational have “(non-op)” at the end of their name.

##### [`3.sql`](https://cs50.harvard.edu/sql/2024/psets/1/dese/#3sql)

The Massachusetts Legislature would like to learn how much money, on average, districts spent per-pupil last year. In `3.sql`, write a SQL query to find the average per-pupil expenditure. Name the column “Average District Per-Pupil Expenditure”.

- Note the `per_pupil_expenditure` column in the `expenditures` table contains the average amount, per pupil, each district spent last year. You’ve been asked to find the average of this set of averages, weighting all districts equally regardless of their size.

##### [`4.sql`](https://cs50.harvard.edu/sql/2024/psets/1/dese/#4sql)

Some cities have more public schools than others. In `4.sql`, write a SQL query to find the 10 cities with the most public schools. Your query should return the names of the cities and the number of public schools within them, ordered from greatest number of public schools to least. If two cities have the same number of public schools, order them alphabetically.

##### [`5.sql`](https://cs50.harvard.edu/sql/2024/psets/1/dese/#5sql)

DESE would like you to determine in what cities additional public schools might be needed. In `5.sql`, write a SQL query to find cities with 3 or fewer public schools. Your query should return the names of the cities and the number of public schools within them, ordered from greatest number of public schools to least. If two cities have the same number of public schools, order them alphabetically.

##### [`6.sql`](https://cs50.harvard.edu/sql/2024/psets/1/dese/#6sql)

DESE wants to assess which schools achieved a 100% graduation rate. In `6.sql`, write a SQL query to find the names of schools (public or charter!) that reported a 100% graduation rate.

##### [`7.sql`](https://cs50.harvard.edu/sql/2024/psets/1/dese/#7sql)

DESE is preparing a report on schools in the Cambridge school district. In `7.sql`, write a SQL query to find the names of schools (public or charter!) in the Cambridge school district. Keep in mind that Cambridge, the city, contains a few school districts, but DESE is interested in the district whose name is “Cambridge.”

##### [`8.sql`](https://cs50.harvard.edu/sql/2024/psets/1/dese/#8sql)

A parent wants to send their child to a district with many other students. In `8.sql`, write a SQL query to display the names of all school districts and the number of pupils enrolled in each.

##### [`9.sql`](https://cs50.harvard.edu/sql/2024/psets/1/dese/#9sql)

Another parent wants to send their child to a district with few other students. In `9.sql`, write a SQL query to find the name (or names) of the school district(s) with the single least number of pupils. Report only the name(s).

##### [`10.sql`](https://cs50.harvard.edu/sql/2024/psets/1/dese/#10sql)

In Massachusetts, school district expenditures are in part determined by local taxes on property (e.g., home) values. In `10.sql`, write a SQL query to find the 10 public school districts with the highest per-pupil expenditures. Your query should return the names of the districts and the per-pupil expenditure for each.

##### [`11.sql`](https://cs50.harvard.edu/sql/2024/psets/1/dese/#11sql)

Is there a relationship between school expenditures and graduation rates? In `11.sql`, write a SQL query to display the names of schools, their per-pupil expenditure, and their graduation rate. Sort the schools from greatest per-pupil expenditure to least. If two schools have the same per-pupil expenditure, sort by school name.

- You should assume a school spends the same amount per-pupil their district as a whole spends.

##### [`12.sql`](https://cs50.harvard.edu/sql/2024/psets/1/dese/#12sql)

A parent asks you for advice on finding the best public school districts in Massachusetts. In `12.sql`, write a SQL query to find public school districts with above-average per-pupil expenditures _and_ an above-average percentage of teachers rated “exemplary”. Your query should return the districts’ names, along with their per-pupil expenditures and percentage of teachers rated exemplary. Sort the results first by the percentage of teachers rated exemplary (high to low), then by the per-pupil expenditure (high to low).

Hint

You might find it helpful to know that subqueries can be inserted into most any part of a SQL query, including conditions. For instance, the following is valid SQL syntax:

```
SELECT "column" FROM "table"
WHERE "column" > (
    SELECT AVG("column")
    FROM "table"
);
```

##### [`13.sql`](https://cs50.harvard.edu/sql/2024/psets/1/dese/#13sql)

In `13.sql`, write a SQL query to answer a question you have about the data! The query should:

- Involve at least one `JOIN` or subquery
