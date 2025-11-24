---
title: "Assignment 2: Mapping Parking Violations in NYC"
author: Thomas Brambor
date: 2025-03-06
format: 
  html:
    embed-resources: true
    keep-md: true
execute:
  keep-md: true
---



# Parking Violations in NYC

## Data

For this assignment, we are going to investigate data on parking violations in NYC. 

### Parking violations in 2020/21

NYC Open Data has data on all [parking violations issued in NYC](https://data.cityofnewyork.us/City-Government/Parking-Violations-Issued-Fiscal-Year-2021/pvqr-7yc4) since 2014. The updated dataset provided for 2025 currently includes about 26 million observations. To make the assignment manageable, I have reduced it to a subset of tickets issued in Jan 2025 and to Manhattan precincts only, yielding about 200 thousand tickets.

Two support files are also included in the `parking` sub folder:

  - the **descriptions of all variables**
  - the **dictionary of violation codes**
  
### Police Precincts

A second data source is the [shape files of police precincts in NYC](https://www1.nyc.gov/site/planning/data-maps/open-data/districts-download-metadata.page). 

## Exercise

### 1. Data exploration

Before focusing on the spatial part of the data, let's explore the basic patterns in the data. 

#### a) Violation Code and Fine Amounts

Add the violation code descriptions and fine amounts to the data file. For simplicity, ignore the differing fine amounts above and below 96th street. _Simply use the fine amount for below 96th street for all violations._

Provide a visual overview of the top 10 most common types of violations. Compare how this ranking differs if we focus on the total amount of revenue generated.

#### b) Average amount of fine by vehicle

Find an appropriate visualization to show the average amount of fine by vehicle color and vehicle year. Restrict your attention to non-commercial vehicles (see [vehicle plate type](https://dmv.ny.gov/registration/registration-class-codes). Briefly describe your findings.

### 2. Map by Precincts

Read in the shape files for the police precincts and remove all precincts outside of Manhattan. 

#### a) Number of tickets, total fines, and average fines

Provide three maps that show choropleth maps of:

  - the total number of tickets 
  - the total amount of fines 
  - the average amount of fines
  
Briefly describe what you learn from these maps in comparison. Which of these maps is the most representative of the data?

#### b) Types of violations

I have added a grouping of the violation codes called `violation_group` to guide your visualization. Provide a faceted set of choropleth maps to capture each of these subgroups and show where different types of violations are more or less common. Choose a color scheme that allows you to highlight the main trends in the data.

### 3. Focus on the Upper East

[Precinct 19](https://www1.nyc.gov/site/nypd/bureaus/patrol/precincts/19th-precinct.page) identifies the Upper East Side. The data currently does not provide latitude and longitude of the violation locations (and I am not sure what these `street_code` variables are for).

#### a) Ignoring fire hydrants

Restrict your data to parking violations related to fire hydrants (`Violation Code = 40`). Using the variables `Street Name` and `House Number` as well as the knowledge that these addresses are in the Upper East Side of Manhattan, geocode at least 500 addresses. Include a data table of these addresses and the latitude and longitude of these addresses in the output. 

#### b) Interactive Map

Provide an interactive map of the violations you geocoded using `leaflet`. Provide at least three pieces of information on the parking ticket in a popup.

#### c) Luxury cars

Create another variable called `luxury_car` in which you identify luxury car brands using the `Vehicle Make` variable.

Start with the previous map. Distinguish the points by whether the car is a luxury car. Add a legend informing the user about the color scheme. Also make sure that the added information about the car type is now contained in the popup information. Show this map.

#### d) Cluster

Add marker clustering, so that zooming in will reveal the individual locations but the zoomed out map only shows the clusters. Show the map with clusters.

## Submission

Please follow the [instructions](/Exercises/homework_submission_instructions.md) to submit your homework. The homework is due on Monday, March 17.

## Please stay honest!

If you do come across something online that provides part of the analysis / code etc., please no wholesale copying of other ideas. We are trying to evaluate your abilities to visualized data not the ability to do internet searches. Also, this is an individually assigned exercise -- please keep your solution to yourself.