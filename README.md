# PocketRocket Recommender
PocketRocket Recommender is a movie recommender. 

The project consists of three parts: 
1. the web portal UI, which is developed using [ReactJS](https://reactjs.org/)
    - Home page / Collection page
    Display movie collections by genres
![home page](https://github.com/YangHong92/PocketRocket/raw/master/webroot/public/home.png)

    - Movie page
    Display the movie details of given movieId and return similiar movies 
![movie page](https://github.com/YangHong92/PocketRocket/raw/master/webroot/public/movie.png)

    - User page
    Display the user details of given userId and watched movie history, and based on the behaviour recommend movies 
![user page](https://github.com/YangHong92/PocketRocket/raw/master/webroot/public/user.png)

2. the web portal server, which is built using [NodeJS](https://nodejs.org/en/)
It serves the dynamic data query from mysql/redis to frontend and communicates with backend recommender model

3. the backend recommender model, which is built and trained based on [TensorFlow](https://www.tensorflow.org/) and [pySpark](https://spark.apache.org/docs/latest/api/python/),  deployed by docker [tensorflow/serving](https://hub.docker.com/r/tensorflow/serving)


## Project Data
Project data is collected from [MovieLens](https://grouplens.org/datasets/movielens/), only 1000 movies are sampled, together with corresponding users rating records.

Dataset:
- movies.csv 
movieId, title, releaseYear, genres

- ratings.csv
userId, movieId, rating, timestamp 

- links.csv
movieId, imbdId, tmdbId


## Recommendation System Architecture
The architecture of the backend recommender model follows the architecture of industrial recommender system, including:

1. Pretrain embedding
    - Item(movie) embedding
Item2vec: use users' watched movie sequences to train word2vec  to generate item(movie) embedding
    - User embedding
average over the embeddings of user watched movies to genereate user embedding

2. Candidates generation
    - Retrive candidates based on similarity score
compare the similarity score between user embedding & items embedding, the top 500 closet items are the item candidates for the following ranker model

3. Offline deep learning model training
    - Nerual CF
Nerual CF consists of user tower and item tower. It replaces the dot product for computing user-item similarity in traditional collaborative filtering model with a neural network.

4. Online model serving


## Run the Project
- Environment
python: 3.6+
TensorFlow 2.0+

- Start mysql server & redis server

- Load the data in mysql
run sql script in webroot/server/sql/movielens-tabluar-info.sql to create table and load data into mysql

- Start the backend model using docker
```
> docker pull tensorflow/serving
> docker run -t --rm -p 8501:8501  \
-v "${project_path}/PocketRocket/recmodel/neuralcf:/models/recmodel"  \
-e MODEL_NAME=recmodel  \
--name pocketrocket \
tensorflow/serving &
```

- Start the web portal using NodeJS
```
> cd webroot
> npm install
> npm install pm2 -g
> npm run build
> npm start
```
Then visit at http://localhost:3001/

- Stop the web portal
```
> pm2 stop 0
```


<br/>

###### The project is inspired by [SparrowRecSys](https://github.com/wzhe06/SparrowRecSys).