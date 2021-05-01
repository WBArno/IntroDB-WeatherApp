/*
 *	WeatherApp Project
 *  Tables Declaration Script
 *
 *	ITEC 3200-02
 *  William Arnold
 *  Nelson Urquilla
 */


# Uncomment for repeat runs.
# drop database WeatherApp;

# Establish the Database
create database WeatherApp;
use WeatherApp;

/*
 *  Create tables
 */

# Location Data (General information for use in USER)
create table LOCATION (
    Zip_Code            integer         NOT NULL,       # Format: #####
    City                VarChar(15)     NOT NULL,
    County              VarChar(10)     NOT NULL,
    State               Char(2)         NOT NULL,       # Format: AA
    constraint          Loc_PK          PRIMARY KEY(Zip_Code));


# User Data
create table USER (
    User_ID             Integer         AUTO_INCREMENT,
    Zip_Code            Integer         NOT NULL,       # REF: LOCATION
    UserName            VarChar(10)     NOT NULL,
    DoB                 Date            NOT NULL,       # Format: yyyy-mm-dd
    Log_In_Date         Date            NULL,           # Format: yyyy-mm-dd
    constraint          Usr_PK          PRIMARY KEY(User_ID),
    constraint          Usr_Loc_FK      FOREIGN KEY(Zip_Code)       references LOCATION(Zip_Code));


# Observation Data (Each row is a single observation for a single location)
create table CURRENT_OBSERVATIONS (
    #Multiple observations can occur at the same time (in different locations, so a surrogate key is needed.
    Condition_ID        integer         AUTO_INCREMENT,
    Zip_Code            integer         NOT NULL,       # REF: LOCATION
    Observation_Date    date            NOT NULL,       # Format: yyyy-mm-dd
    Observation_Time    time            NOT NULL,       # Format: HH:MM:SS
    Condition_Desc      VarChar(100)    NULL,           # Text description of current conditions
    Temperature         integer         NOT NULL,       # Format: ### (DegF)
    Humidity            integer         NOT NULL,       # Format: ### (%)
    constraint          Obs_PK          PRIMARY KEY(Condition_ID, Zip_Code),
    constraint          Loc_Obs_FK      FOREIGN KEY(Zip_Code)       references LOCATION(ZIP_CODE));


# Meteorologist Information
create table METEOROLOGIST (
    Meteorologist_ID    integer         AUTO_INCREMENT,
    Last_Name           VarChar(25)     NOT NULL,
    First_Name          VarChar(25)     NOT NULL,
    constraint          Met_PK          PRIMARY KEY(Meteorologist_ID));


# Weather Forecasts
create table WEATHER_FORECAST (
    Forecast_ID         integer         AUTO_INCREMENT,
    Condition_ID        integer         NOT NULL,       # REF: CURRENT_OBSERVATIONS
    Meteorologist_ID    integer         NOT NULL,       # REF: METEOROLOGIST
    One_Day_Forecast    VarChar(100)    NULL,           # Text description of an hourly forecast
    Ten_Day_Forecast    VarChar(100)    NOT NULL,       # Text description of a 10-day forecast
    constraint          For_PK          PRIMARY KEY(Forecast_ID, Condition_ID),
    constraint          For_Obs_FK      FOREIGN KEY(Condition_ID)       references  CURRENT_OBSERVATIONS(Condition_ID),
    constraint          For_Met_FK      FOREIGN KEY(Meteorologist_ID)   references  METEOROLOGIST(Meteorologist_ID));


# Severe Forecasts
create table SEVERE_FORECAST (
    Severe_Forecast_ID  integer         AUTO_INCREMENT,
    Forecast_ID         integer         NOT NULL,       # REF: WEATHER_FORECAST
    Severe_Chance       integer         NOT NULL,       # Format: ### (%)
    Severe_Type         VarChar(100)    NOT NULL,       # Description of severe weather, if relevant
    constraint          Sev_PK          PRIMARY KEY(Severe_Forecast_ID, Forecast_ID),
    constraint          Sev_Wfr_FK      FOREIGN KEY(Forecast_ID)        references  WEATHER_FORECAST(Forecast_ID));


# Severe Weather Alerts (When Issued)
create table SEVERE_WEATHER_ALERT(
    Alert_ID            integer         AUTO_INCREMENT,
    Severe_Forecast_ID  integer         NOT NULL,       # REF: SEVERE_FORECAST
    Zip_Code            integer         NOT NULL,       # REF: LOCATION
    Alert_Type          VarChar(25)     NOT NULL,
    Alert_Severity      VarChar(25)     NOT NULL,
    Alert_Description   VarChar(100)    NULL,           # Description of Severe weather, if relevant
    constraint          Alt_PK          PRIMARY KEY(Alert_ID, Severe_Forecast_ID, Zip_Code),
    constraint          Alt_Sev_FK      FOREIGN KEY(Severe_Forecast_ID) references SEVERE_FORECAST(Severe_Forecast_ID),
    constraint          Alt_Loc_FK      FOREIGN KEY(Zip_Code)           references LOCATION(Zip_Code));
