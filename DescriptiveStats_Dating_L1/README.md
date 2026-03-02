# Descriptive Statistics — Dating Trends

## Overview

This project analyzes data from the [*How Couples Meet and Stay Together* (HCMST)](https://data.stanford.edu/hcmst) survey conducted by Stanford University. The goal is to uncover and visualize patterns in how American couples meet, exploring dimensions such as meeting mode over time, age and gender dynamics, and the influence of political affiliation on relationships and relationship duration.

The analysis is framed as a data-driven memo for a feature article, producing polished, publication-ready visualizations.

## Key Visualizations

| Topic | Chart Types |
|---|---|
| **Dating trends over time** | Stacked bar chart (counts & proportions), line graph |
| **Age & gender in relationships** | Scatter plot with regression lines and annotations |
| **Politics & dating** | Stacked bar chart by political alignment, box plot of relationship duration |
| **Marriage vs. divorce by meeting type** | Dual pie charts, interactive Plotly pie charts |
| **Interactivity** | Interactive line graph (ggplotly), interactive pie charts (Plotly), filterable data table (DT) |

<p align="center">
  <img src="images/clipboard-2348474118.png" width="500" alt="Dating Trends">
</p>

## Tools & Libraries

- **R** — ggplot2, dplyr, tidyverse, patchwork, forcats, ggthemes
- **Interactive** — plotly, DT (DataTables)

## Files

| File | Description |
|---|---|
| `Assignment1_dating.Rmd` | R Notebook with full analysis and visualizations |
| `Assignment1_dating.nb.html` | Rendered HTML output (viewable in browser) |
| `HCMST_couples.rds` | Survey dataset |
| `HCMST_variable_descriptions.pdf` | Variable codebook for the survey data |
| `images/` | Supporting images used in the notebook |

## Data Source

Rosenfeld, M. J., Thomas, R. J., & Hausen, S. (2018). *How Couples Meet and Stay Together*, Waves 1–5. Stanford University Libraries.
