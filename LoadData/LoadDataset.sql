-- Create and load the ratings table
CREATE OR REPLACE TABLE `wqd7007-bigdatamanagement.movielens_dataset.ratings` (
  userId INT64,
  movieId INT64,
  rating FLOAT64,
  timestamp INT64
);

LOAD DATA
INTO `wqd7007-bigdatamanagement.movielens_dataset.ratings`
FROM FILES (
  format = 'CSV',
  uris = ['gs://movielens-dataset-bucket/ratings.csv']
);

-- Create and load the movies table
CREATE OR REPLACE TABLE `wqd7007-bigdatamanagement.movielens_dataset.movies` (
  movieId INT64,
  title STRING,
  genres STRING
);

LOAD DATA
INTO `wqd7007-bigdatamanagement.movielens_dataset.movies`
FROM FILES (
  format = 'CSV',
  uris = ['gs://movielens-dataset-bucket/movies.csv']
);

-- Create and load the tags table
CREATE OR REPLACE TABLE `wqd7007-bigdatamanagement.movielens_dataset.tags` (
  userId INT64,
  movieId INT64,
  tag STRING,
  timestamp INT64
);

LOAD DATA
INTO `wqd7007-bigdatamanagement.movielens_dataset.tags`
FROM FILES (
  format = 'CSV',
  uris = ['gs://movielens-dataset-bucket/tags.csv']
);

-- Create and load the genome-scores table
CREATE OR REPLACE TABLE `wqd7007-bigdatamanagement.movielens_dataset.genome_scores` (
  movieId INT64,
  tagId INT64,
  relevance FLOAT64
);

LOAD DATA
INTO `wqd7007-bigdatamanagement.movielens_dataset.genome_scores`
FROM FILES (
  format = 'CSV',
  uris = ['gs://movielens-dataset-bucket/genome-scores.csv']
);

-- Create and load the genome-tags table
CREATE OR REPLACE TABLE `wqd7007-bigdatamanagement.movielens_dataset.genome_tags` (
  tagId INT64,
  tag STRING
);

LOAD DATA
INTO `wqd7007-bigdatamanagement.movielens_dataset.genome_tags`
FROM FILES (
  format = 'CSV',
  uris = ['gs://movielens-dataset-bucket/genome-tags.csv']
);

-- Create and load the links table with corrected schema
CREATE OR REPLACE TABLE `wqd7007-bigdatamanagement.movielens_dataset.links` (
  movieId INT64,
  imdbId INT64,  -- Change this to INT64
  tmdbId INT64
);

LOAD DATA
INTO `wqd7007-bigdatamanagement.movielens_dataset.links`
FROM FILES (
  format = 'CSV',
  uris = ['gs://movielens-dataset-bucket/links.csv']
);
