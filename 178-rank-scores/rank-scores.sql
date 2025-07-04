
SELECT
  S1.score,
  (SELECT COUNT(DISTINCT S2.score)
   FROM Scores S2
   WHERE S2.score > S1.score) + 1 AS `rank`
FROM Scores S1
ORDER BY S1.score DESC;