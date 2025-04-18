database:
wget https://cdn.cs50.net/sql/2024/x/psets/0/normals.zip
questions:
* In 1.sql, write a SQL query to find the normal ocean surface temperature in the Gulf of Maine, off the coast of Massachusetts. To find this temperature, look at the data associated with 42.5° of latitude and -69.5° of longitude.
    Recall that you can find the normal ocean surface temperature in the 0m column, which stands for 0 meters of depth!
* In 2.sql, write a SQL query to find the normal temperature of the deepest sensor near the Gulf of Maine, at the same coordinate above.
    The deepest sensor records temperatures at 225 meters of depth, so you can find this data in the 225m column.
* In 3.sql, choose a location of your own and write a SQL query to find the normal temperature at 0 meters, 100 meters, and 200 meters. You might find Google Earth helpful if you’d like to find some coordinates to use!
* In 4.sql, write a SQL query to find the lowest normal ocean surface temperature.
* In 5.sql, write a SQL query to find the highest normal ocean surface temperature.
* In 6.sql, write a SQL query to return all normal ocean temperatures at 50m of depth, as well as their respective degrees of latitude and longitude, within the Arabian Sea. Include latitude, longitude, and temperature columns. For simplicity, assume the Arabian Sea is encased in the following four coordinates:
    20° of latitude, 55° of longitude
    20° of latitude, 75° of longitude
    0° of latitude, 55° degrees of longitude
    0° of latitude, 75° degrees of longitude
* In 7.sql, write a SQL query to find the average ocean surface temperature, rounded to two decimal places, along the equator. Call the resulting column “Average Equator Ocean Surface Temperature”.
    The equator’s ocean surface temperatures can be found at all longitudes between the latitudes -0.5° and 0.5°, inclusive.
* In 8.sql, write a SQL query to find the 10 locations with the lowest normal ocean surface temperature, sorted coldest to warmest. If two locations have the same normal ocean surface temperature, sort by latitude, smallest to largest. Include latitude, longitude, and surface temperature columns.
* In 9.sql, write a SQL query to find the 10 locations with the highest normal ocean surface temperature, sorted warmest to coldest. If two locations have the same normal ocean surface temperature, sort by latitude, smallest to largest. Include latitude, longitude, and surface temperature columns.
There are 180 whole degrees of latitude. In 10.sql, write a SQL query to determine how many points of latitude we have at least one data point for. (Why might we not have data points for all latitudes?)

