# Week 4 - bookmark_manager

### User Stories

As a user,  
To read bookmarks currently available,  
I want to be able to show a list of bookmarks.

As a user,
To be able to save new webpages that I find,
I want to be able to create new bookmarks.

### Model Diagrams
#### User Story 1
![Screenshot -US1](https://github.com/lukewickens1989/bookmark_manager/blob/main/week_4_bookmark_us1 "User Story 1 Model")

### Database Setup Instructions
```
##### PRODUCTION ENVIRONMENT #####
CREATE DATABASE <<bookmark_manager>>;
psql bookmark_manager
CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));

##### DEVELOPMENT ENVIRONMENT #####
CREATE DATABASE <<bookmark_manager_test>>
psql bookmark_manager_test
CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
```