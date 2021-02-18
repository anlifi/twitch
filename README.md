# Data Analysis with Twitch Data
> A little exploratory data analysis project using Twitch data.

## Table of Contents
* [General Info](#general-info)
* [Technologies](#technologies)
* [Inspiration](#inspiration)
* [Contact](#contact)

## General Info
This is my first little data analysis project using 2015-01-01 Twitch streaming and chat data provided by [Codecademy](https://www.codecademy.com/). (Note: The data is scrubbed and is meant for practice use only.)

The original data was given as two separate CSV-files and the project is divided into two parts. One part is focused on analysing the data with SQL (SQLite). The other part is focused on visualizing the data with Python (Matplotlib). (Note: The analysis is mainly performed on the stream data.)\
For the first part, the CSV-files are converted into an SQL database with the help of a little python code (using the Pandas and Sqlite3 libraries) and then analyzed with SQL.\
For the second part, the data is analyzed/visualizied inside a Jupyter Notebook using the Python libraries Pandas and Matplotlib. Here, the "viewers per hour" analysis is based on data fetched from an SQL query which was extracted into a CSV-file.

## Technologies
This project is created with:
* Python - 3.8.5
* SQLite - 3.33.0

## Inspiration
The project is based on the "Gaming Data with Twitch" project from [Codecademy](https://www.codecademy.com/).

## Contact
GitHub [@anlifi](https://github.com/anlifi) | LinkedIn [Angelina Fischer](https://www.linkedin.com/in/angelina-fischer-a424111b0/)