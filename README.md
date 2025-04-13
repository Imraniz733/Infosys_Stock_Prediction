# Infosys_Stock_Prediction

## Table of Contents
- [Introduction](#Introduction)
- [Data Preparation(SQL)](#Data-Preparation)
- [Modeling(Python)](#Modeling)
- [Visualization(Tableau)](#Visualization)
- [Files](#Files)

## Introduction
This project demonstrates a well-known IT company **Infosys** stock price forecasting project using a combination of SQL, Python, and Tableau. The project involves preparing historical stock data, building a forecasting model using the SARIMA approach, and visualizing the results using Tableau. The goal of this project is to forecast stock prices for Infosys using time series analysis.

## Data Preparation (SQL) 
The historical stock data is prepared and cleaned using SQL queries. In this phase, SQL is used to prepare and preprocess the stock price data. The dataset consists of historical stock prices for Infosys, including the following columns:
**Date:** The date of the stock price.
**close_price:** The closing price of the stock on the given date.
**Data Cleaning:** Missing values were handled, and the date column was converted into the correct format.
**Aggregating Data:** Monthly average stock prices were calculated.

## Modeling (Python) 
In Python, the SARIMA model is applied using the pmdarima library to forecast future stock prices. The model chosen is SARIMA(0,2,1)(0,1,1)[12], where:
- ARIMA(0,2,1): Non-seasonal part of the ARIMA model.
- SARIMA(0,1,1)[12]: Seasonal part of the model (seasonal period of 12 months for monthly data).

Steps:
1. Load and preprocess the data (using pandas).
2. Fit the SARIMA model using auto_arima() from pmdarima.
3. Generate forecasts for the next 12 months.
4. Export results to CSV for further analysis and visualization.

## Visualization (Tableau)
Once the forecasting model is built, Tableau is used to visualize both historical and forecasted stock prices. The forecast_result.csv file generated from the Python model is imported into Tableau for analysis and visualization.

Steps:
1. Load Data: Import both historical data and forecasted results into Tableau.
2. Create Visualizations: Build line charts, bar charts, or other visualizations to compare historical data against forecasted data.
3. Interactive Dashboards: Create interactive dashboards that allow users to explore trends in stock prices over time.
4. Visualizations: Line chart showing both historical and forecasted stock prices and forecast with confidence intervals (upper and lower bounds).

## Files
**Infosys_stock.csv:** The raw historical stock price data.

**forecast_result.csv:** The file containing forecasted stock prices with confidence intervals.

**Infosys_stock_analysis.sql:** The SQL file contains preparation and cleaning.

**Infosys_Stock_Prediction.html:** The Python script used to train the SARIMA model and generate forecasts.

**Trendline_stock_prediction.twbx:** The Tableau workbook file that visualizes the forecasted and historical stock prices.

**Line Chart.png:** The line chart png file.
