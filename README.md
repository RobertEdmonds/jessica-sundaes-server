# Jessica Sundaes Server

## Goals

- Build a web basic API with Sinatra and Active Record to support a React
  frontend

## Introduction

This is a ruby configuration to support an React frontend. Ruby is using Sinatra and Active Record. The application is for a sundae shop so a customer can look at the different sundaes and shakes that the shop offers and be able to leave their own review for each shop item.

## Features

Jessica Sundae App:

- Controllers
  - Runs all the CRUD requests for the App
- Models
  - Shake (Primary table)
    - has many to shake reviews
  - Shake Review (Foreign table)
    - belongs to shake
  - Sundae (Primary table)
    - has many to sundae reviews
  - Sundae Review (Foreign table)
    - belongs to sundae
- Config
  - For items to bundle for other developers to run before working on this program
- DB
  - Migrate
    - Sets up all keys for the tables
  - Schema
    - Shows which tables are currently migrated and the keys of those tables
  - Seeds
    - Optional for assigning initial values for the tables in Schema
- Spec
  - Different rake tasks and the ability to migrate information into the tables
- Config
  - Allows the tables to be pulled by a certain source and to start the server
- Gemfile
  - Different packages to download to help ruby run smoother and more efficient
- Rakefile
  - Controls to run in the terminal to get the server started and check on code before running
  - Set the port that the tables are being sent through

## Frontend

- The Frontend is built out React.
- [github-for-frontend](https://github.com/RobertEdmonds/Jessica_sundae_client)

## Resources

- [Blog](https://medium.com/@bobby.edmonds89/the-miracle-of-active-record-5bb52b35749e)
- [YouTube Video](https://www.youtube.com/watch?v=RL8oyXl5nqQ)
