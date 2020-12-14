# Week 4 - bookmark_manager

### User Stories

As a user,  
To read bookmarks currently available,  
I want to be able to show a list of bookmarks.

### Model Diagrams
#### User Story 1
![Screenshot -US1](https://github.com/lukewickens1989/bookmark_manager/blob/main/week_4_bookmark_us1 "User Story 1 Model")

### Database Setup Instructions
```
CREATE DATABASE <<database_name>>;
psql bookmark_manager
CREATE TABLE bookmarks(id SERIAL PRIMARY KEY, url VARCHAR(60));
```