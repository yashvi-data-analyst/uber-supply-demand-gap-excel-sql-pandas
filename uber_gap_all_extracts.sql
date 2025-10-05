CREATE DATABASE usdg_project;
CREATE SCHEMA IF NOT EXISTS analytics;
SET search_path TO analytics, public;

CREATE TABLE IF NOT EXISTS analytics.uber_clean (
  request_id INT,
  pickup_point VARCHAR(20),
  driver_id INT,
  status VARCHAR(30),
  request_ts TIMESTAMP,
  drop_ts TIMESTAMP,
  request_date DATE,
  request_hour INT,
  daypart VARCHAR(20),
  unfulfilled_flag INT
);

SELECT COUNT(*) FROM analytics.uber_clean;
SELECT MIN(request_ts), MAX(request_ts) FROM analytics.uber_clean;

-- Hourly gap
SELECT request_hour,
       COUNT(*) AS requests,
       SUM(unfulfilled_flag) AS unfulfilled,
       ROUND(100.0*SUM(unfulfilled_flag)/COUNT(*),2) AS unfulfilled_pct
FROM analytics.uber_clean
GROUP BY request_hour
ORDER BY request_hour;

-- Daypart x Status
SELECT daypart, status, COUNT(*) AS n
FROM analytics.uber_clean
GROUP BY daypart, status
ORDER BY daypart, n DESC;

-- Pickup x Daypart gap
SELECT pickup_point, daypart,
       SUM(unfulfilled_flag) AS unfulfilled
FROM analytics.uber_clean
GROUP BY pickup_point, daypart
ORDER BY pickup_point, unfulfilled DESC;
