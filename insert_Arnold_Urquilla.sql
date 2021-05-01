/*
 *	WeatherApp Project
 *  Table Data Script
 *
 *	ITEC 3200-02
 *  William Arnold
 *  Nelson Urquilla
 */

# TODO: Look into importing real weather data from CSV and loading it into SQL via URL.



use WeatherApp;

/*
 *  Beginning of Insert Statements
 */

insert into LOCATION(Zip_Code, City, County, State)
    VALUES  (35004, 'Moody', 'Saint Clair', 'AL'),
            (35031, 'Blountsville', 'Blount', 'AL'),
            (48004, 'Anchorville', 'Saint CLair', 'MI'),
            (48184, 'Wayne', 'Wayne', 'MI'),
            (89019, 'Jean', 'Clark', 'NV'),
            (89020, 'Amargosa Valey', 'Nye', 'NV'),
            (96708, 'Haiku', 'Maui', 'HI'),
            (96709, 'Kapolei', 'Honolulu', 'HI'),
            (68017, 'Ceresco', 'Saunders', 'NE'),
            (68179, 'Omaha', 'Douglas', 'NE'),
            (30045, 'Lawrenceville', 'Gwinnett', 'GA'),
            (30362, 'Atlanta', 'Dekalb', 'GA'),
            (30043, 'Lawrenceville', 'Gwinnett', 'GA');


insert into USER(Zip_Code, UserName, DoB, Log_In_Date)
    VALUES  (35004, 'Mike', '1991-02-11', '2021-04-28'),
            (35031, 'Ben', '1999-03-13', '2021-04-27'),
            (48004, 'Jake', '1998-12-20', '2021-03-02'),
            (48184, 'Doug', '1987-11-22', '2021-04-28'),
            (89019, 'Cliff', '1990-08-17', '2021-04-28'),
            (89020, 'Bob', '1988-12-16', '2021-02-08'),
            (96708, 'Nelson', '19700-04-30', '2021-04-20'),
            (96709, 'Amanda', '1965-06-28', '2021-04-26'),
            (96709, 'Jane', '1999-10-02', NULL),
            (68017, 'Jason', '1989-10-05', '2021-04-28'),
            (68179, 'Sandy', '1987-11-06', '2021-04-28'),
            (30045, 'Laura', '1993-01-11', NULL),
            (30362, 'Amy', '1994-02-19', '2021-04-27'),
            (12345, 'Fred', '1950-06-18', '2021-04-27');



insert into CURRENT_OBSERVATIONS(ZIP_CODE, Observation_Date, Observation_Time, Temperature, Humidity, Condition_Desc)
    VALUES  (35004, '2021-04-28',  '11.00.00', 80, 100, 'Heavy rain.'),
            (35004, '2021-04-28',  '12.00.00', 70, 100, 'Heavy rain.'),
            (35031, '2021-04-28',  '09.00.00', 65, 100, 'Heavy rain.'),
            (35031, '2021-04-28',  '22.00.00', 78, 100, 'Heavy rain.'),
            (48004,  '2021-04-28',  '18.00.00', 79, 20, 'Low humidity, very dry and hot.'),
            (48004,  '2021-04-28',  '19.00.00', 80, 9, 'Low humidity, very dry and hot.'),
            (48184,  '2021-04-28',  '04.00.00', 78, 12, 'Low humidity, very dry and hot.'),
            (48184,  '2021-04-28',  '05.00.00', 78, 5, 'Low humidity, very dry and hot.'),
            (89020,  '2021-04-28',  '23.00.00', 68, 30, NULL),
            (89019,  '2021-04-28',  '12.00.00', 69, 25, 'Windy.'),
            (89019,  '2021-04-28',  '14.00.00', 59, 35, 'Windy.'),
            (89020,  '2021-04-28',  '18.00.00', 73, 40, NULL),
            (96708,  '2021-04-28',  '10.00.00', 78, 40, 'Regular humidity, clear skies.'),
            (68017,  '2021-04-28',  '11.00.00', 79, 45, 'Normal humidity, clear skies.'),
            (68179,  '2021-04-28',  '17.00.00', 77, 40, 'Normal humidity, clear skies.'),
            (68179,  '2021-04-28',  '20.00.00', 74, 46, 'Normal humidity, clear skies.'),
            (30045,  '2021-04-28',  '22.00.00', 70, 100, 'Humid; storms in the vicinity.'),
            (30045,  '2021-04-28',  '22.00.00', 70, 100, 'Humid; storms in the vicinity.'),
            (30045,  '2021-04-28',  '23.00.00', 72, 100, 'Extremely heavy rain; low visibility.'),
            (30362,  '2021-04-28',  '17.00.00', 81, 100, 'Extremely heavy rain; low visibility.'),
            (30043,  '2021-04-28',  '15.00.00', 70, 90, 'Humid; storms in the vicinity.'),
            (30043,  '2021-04-28',  '16.00.00', 77, 85, 'Humid; storms in the vicinity.');


insert into METEOROLOGIST(Last_Name, First_Name)
    VALUES  ('Shores',  'James'),
            ('Nelson',  'Peter'),
            ('White',   'Amanda'),
            ('Griffin', 'Bill'),
            ('Jenkins', 'Jenifer'),
            ('Brown',   'Amanda'),
            ('Johnson', 'Parker'),
            ('Gump',    'Forrest'),
            ('Mendez',  'Juan'),
            ('Monday',  'Jay');


insert into WEATHER_FORECAST(Condition_ID, Meteorologist_ID, Hourly_Forecast, `10_Day_Forecast`)
    VALUES  (1,    10,    'This is an hourly forecast.',              'This is a 10-Day Forecast.'),
            (2,    9,     'This is an hourly forecast.',              'This is a 10-Day Forecast.'),
            (3,    8,     'This is an hourly forecast.',              'This is a 10-Day Forecast.'),
            (4,    7,     'This is an hourly forecast.',              'This is a 10-Day Forecast.'),
            (5,    6,     'This is an hourly forecast.',              'This is a 10-Day Forecast.'),
            (6,    5,     'This is an hourly forecast.',              'This is a 10-Day Forecast.'),
            (7,    4,     'This is an hourly forecast.',              'This is a 10-Day Forecast.'),
            (8,    3,     'This is an hourly forecast.',              'This is a 10-Day Forecast.'),
            (9,    2,     'This is an hourly forecast.',              'This is a 10-Day Forecast.'),
            (10,   1,     'This is an hourly forecast.',              'This is a 10-Day Forecast.');


insert into SEVERE_FORECAST(Forecast_ID, Severe_Chance, Severe_Type)
    VALUES  (11,    100,     'Type of severe weather'),
            (12,    50,     'Type of severe weather'),
            (13,    25,     'Type of severe weather'),
            (14,    30,     'Type of severe weather'),
            (15,    40,     'Type of severe weather'),
            (16,    20,     'Type of severe weather'),
            (17,    70,     'Type of severe weather'),
            (18,    80,     'Type of severe weather'),
            (19,    90,     'Type of severe weather'),
            (20,    10,     'Type of severe weather');


insert into SEVERE_WEATHER_ALERT(Severe_Forecast_ID, Zip_Code, Alert_Type, Alert_Severity, Alert_Description)
    VALUES  (11,    35004, 'Alert type goes here.',     'Alert Severity Goes Here',     'Alert description goes here.'),
            (12,    30045, 'Alert type goes here.',     'Alert Severity Goes Here',     'Alert description goes here.'),
            (13,    30043, 'Alert type goes here.',     'Alert Severity Goes Here',     'Alert description goes here.'),
            (14,    30362, 'Alert type goes here.',     'Alert Severity Goes Here',     'Alert description goes here.'),
            (15,    96709, 'Alert type goes here.',     'Alert Severity Goes Here',     'Alert description goes here.'),
            (16,    96708, 'Alert type goes here.',     'Alert Severity Goes Here',     'Alert description goes here.'),
            (17,    96725, 'Alert type goes here.',     'Alert Severity Goes Here',     'Alert description goes here.'),
            (18,    68017, 'Alert type goes here.',     'Alert Severity Goes Here',     'Alert description goes here.'),
            (19,    68179, 'Alert type goes here.',     'Alert Severity Goes Here',     'Alert description goes here.'),
            (20,    89020, 'Alert type goes here.',     'Alert Severity Goes Here',     'Alert description goes here.');
