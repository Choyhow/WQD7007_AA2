SELECT 
  m.title,
  COUNT(r.rating) AS num_ratings
FROM 
  `wqd7007-bigdatamanagement.movielens_dataset.ratings` r
JOIN 
  `wqd7007-bigdatamanagement.movielens_dataset.movies` m
ON 
  r.movieId = m.movieId
GROUP BY 
  m.title
ORDER BY 
  num_ratings DESC
LIMIT 10
