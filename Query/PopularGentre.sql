SELECT 
  genre,
  COUNT(*) AS num_ratings
FROM 
  `wqd7007-bigdatamanagement.movielens_dataset.movies`,
  UNNEST(SPLIT(genres, '|')) AS genre
GROUP BY 
  genre
ORDER BY 
  num_ratings DESC;
