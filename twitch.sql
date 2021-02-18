-- SQLite
-- Inspect data
SELECT *
FROM stream
LIMIT 20;

SELECT *
FROM chat
LIMIT 20;

-- Unique games
SELECT DISTINCT game
FROM stream;

-- Unique channels
SELECT DISTINCT channel
FROM stream;

-- Most popular games
SELECT game, COUNT(*)
FROM stream
GROUP BY game
ORDER BY COUNT(*) DESC;

-- LoL viewer locations
SELECT country, COUNT(*)
FROM stream
WHERE game = 'League of Legends'
GROUP BY country
ORDER BY COUNT(*) DESC;

-- Streamers by source of viewing
SELECT player, COUNT(*)
FROM stream
GROUP BY player
ORDER BY COUNT(*) DESC;

-- Genre of game (created column)
SELECT game,
  CASE
    WHEN game = 'League of Legends'
      THEN 'MOBA'
    WHEN game = 'Dota 2'
      THEN 'MOBA'
    WHEN game = 'Heroes of the Storm'
      THEN 'MOBA'
    WHEN game = 'Counter-Strike: Global Offensive'
      THEN 'FPS'
    WHEN game = 'DayZ'
      THEN 'Survival'
    WHEN game = 'ARK: Survival Evolved'
      THEN 'Survival'
    ELSE 'Other'
  END AS 'genre',
  COUNT(*)
FROM stream
GROUP BY game
ORDER BY COUNT(*) DESC;

-- Stream time
SELECT time
FROM stream
LIMIT 10;

-- Get seconds from stream time
SELECT time,
  strftime('%S', time)
FROM stream
GROUP BY time
LIMIT 20;

-- Hours (US time) and view count per hour in DE
SELECT strftime('%H', time),
  COUNT(*)
FROM stream
WHERE country = 'DE'
GROUP BY 1;

-- Join stream and chat table on device_id
SELECT *
FROM stream
JOIN chat
  ON stream.device_id = chat.device_id;

