CREATE TABLE weather(
    city VARCHAR(80),
    temp_lo int,
    temp_hi int,
    prcp real,
    date date
);

CREATE TABLE cities (
    name VARCHAR(80),
    location point
);

INSERT INTO weather VALUES ('San Francisco', 46, 50, 0.25, '1994-11-27');

INSERT INTO weather (city, temp_lo, temp_hi, prcp, date)
VALUES ('San Francisco', 43, 57, 0.0, '1994-11-29');

SELECT weather.city, (weather.temp_hi+weather.temp_lo)/2 AS temp_avg, date FROM weather;