SELECT 
  m.title,
  AVG(r.rating) AS avg_rating
FROM 
  `wqd7007-bigdatamanagement.movielens_dataset.ratings` r
JOIN 
  `wqd7007-bigdatamanagement.movielens_dataset.movies` m
ON 
  r.movieId = m.movieId
GROUP BY 
  m.title
ORDER BY 
  avg_rating DESC
LIMIT 10;
