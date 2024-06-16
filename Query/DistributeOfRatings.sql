SELECT 
  genre,
  AVG(r.rating) AS avg_rating
FROM 
  `wqd7007-bigdatamanagement.movielens_dataset.ratings` r
JOIN 
  `wqd7007-bigdatamanagement.movielens_dataset.movies` m
ON 
  r.movieId = m.movieId,
  UNNEST(SPLIT(genres, '|')) AS genre
GROUP BY 
  genre
ORDER BY 
  avg_rating DESC
LIMIT 10