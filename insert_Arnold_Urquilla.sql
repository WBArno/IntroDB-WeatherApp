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
    VALUES  (35004, 'Moody',            'St.Clair',     'AL'),
            (35031, 'Blountsville',     'Blount',       'AL'),
            (48004, 'Anchorville',      'St.Clair',     'MI'),
            (48184, 'Wayne',            'Wayne',        'MI'),
            (89019, 'Jean',             'Clark',        'NV'),
            (89020, 'Amargosa Valley',  'Nye',          'NV'),
            (96708, 'Haiku',            'Maui',         'HI'),
            (68017, 'Ceresco',          'Saunders',     'NE'),
            (68179, 'Omaha',            'Douglas',      'NE'),
            (30045, 'Lawrenceville',    'Gwinnett',     'GA'),
            (30362, 'Atlanta',          'Dekalb',       'GA'),
            (30043, 'Lawrenceville',    'Gwinnett',     'GA');


insert into USER(Zip_Code, UserName, DoB, Log_In_Date)
    VALUES  (35004, 'Mike',     '1991-02-11',   '2021-04-28'),
            (35031, 'Ben',      '1999-03-13',   '2021-04-27'),
            (48004, 'Jake',     '1998-12-20',   '2021-03-02'),
            (48184, 'Doug',     '1987-11-22',   '2021-04-28'),
            (89019, 'Cliff',    '1990-08-17',   '2021-04-28'),
            (89020, 'Bob',      '1988-12-16',   '2021-02-08'),
            (96708, 'Nelson',   '1970-04-30',   '2021-04-20'),
            (96708, 'Amanda',   '1965-06-28',   '2021-04-26'),
            (96708, 'Jane',     '1999-10-02',   NULL),
            (68017, 'Jason',    '1989-10-05',   '2021-04-28'),
            (68179, 'Sandy',    '1987-11-06',   '2021-04-28'),
            (30045, 'Laura',    '1993-01-11',   NULL),
            (30362, 'Amy',      '1994-02-19',   '2021-04-27'),
            (30043, 'Fred',     '1950-06-18',   '2021-04-27');



insert into CURRENT_OBSERVATIONS(ZIP_CODE, Observation_Date, Observation_Time, Temperature, Humidity, Condition_Desc)
    VALUES  (35004, '2021-04-28',  '11:00:00', 80, 100, 'Heavy rain.'),
            (35004, '2021-04-28',  '12:00:00', 70, 100, 'Heavy rain.'),
            (35031, '2021-04-28',  '09:00:00', 65, 100, 'Heavy rain.'),
            (35031, '2021-04-28',  '22:00:00', 78, 100, 'Heavy rain.'),
            (48004, '2021-04-28',  '18:00:00', 79, 20,  'Low humidity, very dry and hot.'),
            (48004, '2021-04-28',  '19:00:00', 80, 9,   'Low humidity, very dry and hot.'),
            (48184, '2021-04-28',  '04:00:00', 78, 12,  'Low humidity, very dry and hot.'),
            (48184, '2021-04-28',  '05:00:00', 78, 5,   'Low humidity, very dry and hot.'),
            (89020, '2021-04-28',  '23:00:00', 68, 30,  NULL),
            (89019, '2021-04-28',  '12:00:00', 69, 25,  'Windy.'),
            (89019, '2021-04-28',  '14:00:00', 59, 35,  'Windy.'),
            (89020, '2021-04-28',  '18:00:00', 73, 40,  NULL),
            (96708, '2021-04-28',  '10:00:00', 78, 40,  'Regular humidity, clear skies.'),
            (68017, '2021-04-28',  '11:00:00', 79, 45,  'Normal humidity, clear skies.'),
            (68179, '2021-04-28',  '17:00:00', 77, 40,  'Normal humidity, clear skies.'),
            (68179, '2021-04-28',  '20:00:00', 74, 46,  'Normal humidity, clear skies.'),
            (30045, '2021-04-28',  '21:00:00', 70, 100, 'Humid; storms in the vicinity.'),
            (30045, '2021-04-28',  '22:00:00', 70, 100, 'Humid; storms in the vicinity.'),
            (30045, '2021-04-28',  '23:00:00', 72, 100, 'Extremely heavy rain; low visibility.'),
            (30362, '2021-04-28',  '17:00:00', 81, 100, 'Extremely heavy rain; low visibility.'),
            (30043, '2021-04-28',  '15:00:00', 70, 90,  'Humid; storms in the vicinity.'),
            (30043, '2021-04-28',  '16:00:00', 77, 85,  'Humid; storms in the vicinity.');


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


insert into WEATHER_FORECAST(Condition_ID, Meteorologist_ID, Todays_Forecast, `Five_Day_Forecast`)
    VALUES  (2,     10,    'Heavy rain throughout the day.',            'W:Heavy Rain Tr:Sunny F:P.Cloudy Sa:Sunny Su:Rain'),
            (4,     7,     'Heavy rain throughout the day.',            'W:Heavy Rain Tr:Sunny F:P.Cloudy Sa:Sunny Su:Rain'),
            (6,     8,     'Humid in the morning, dry and hot late.',   'W:Sunny Tr:Rain F:P.Cloudy Sa:Cloudy Su:Clear'),
            (8,     6,     'Dry and hot throughout the day.',           'W:Sunny Tr:Rain F:Cloudy Sa:P.Cloudy Su:Mostly Clear'),
            (9,     5,     NULL,                                        'W:Sunny Tr:Rain F:Cloudy Sa:Cloudy Su:P.Cloudy'),
            (11,    4,     'Windy and cool.',                           'W:Windy Tr:Cloudy F:T-Storms Sa:Rain Su:P.Cloudy'),
            (12,    1,     NULL,                                        'W:Sunny Tr:Sunny F:Cloudy Sa:Cloudy Su:P.Cloudy'),
            (13,    9,     'Clear and temperate.',                      'W:Sunny Tr:Sunny F:T-Storms Sa:T-Storms Su:Rain'),
            (14,    2,     'Clear and temperate.',                      'W:Sunny Tr:Sunny F:T-Storms Sa:T-Storms Su:Rain'),
            (16,    3,     'Clear and temperate.',                      'W:Sunny Tr:Sunny F:T-Storms Sa:T-Storms Su:Rain'),
            (19,    3,     'Scattered thunderstorms in the evening.',   'W:T-Storms Tr:P.Cloudy F:Sunny S:Cloudy Su:T-Storms'),
            (20,    3,     'Scattered thunderstorms in the evening.',   'W:T-Storms Tr:P.Cloudy F:Sunny S:Cloudy Su:T-Storms'),
            (22,    3,     'Scattered thunderstorms in the evening.',   'W:T-Storms Tr:P.Cloudy F:Sunny S:Cloudy Su:T-Storms');

insert into SEVERE_FORECAST(Forecast_ID, Severe_Chance, Severe_Type)
    VALUES  (1,     50,     'Heavy rain could lead to wide-scale flooding.'),
            (6,     90,     'Unseasonable hard freeze likely'),
            (4,     90,     'High temperatures forecast.'),
            (6,     90,     'Heavy wind forecast.'),
            (11,    25,     'Tornadoes possible with the strong storm system'),
            (12,    35,     'Flooding possible with the strong storm system.'),
            (13,    70,     'Severe thunderstorms likely with the strong storm system'),
            (2,     35,     'Potential hail forecast.'),
            (2,     25,     'Tropical storm forming in the Gulf Coast.'),
            (8,     75,     'High Surf Possible');


insert into SEVERE_WEATHER_ALERT(Severe_Forecast_ID, Zip_Code, Alert_Type, Alert_Severity, Alert_Description)
    VALUES  (1,    35004, 'Flash Flood',   'Warning',   'Heavy flooding currently occurring.'),
            (1,    35031, 'Flash Flood',   'Warning',   'Heavy flooding currently occurring.'),
            (3,    48184, 'Heat',          'Advisory',  NULL),
            (4,    89019, 'Wind',          'Advisory',  NULL),
            (5,    30045, 'Tornado',       'Watch',     'Tornadoes possible in the region.'),
            (7,    30045, 'Severe T-Storm','Warning',   'Strong T-Storms capable of knocking over trees present.'),
            (5,    30362, 'Tornado',       'Watch',     'Tornadoes possible in the region.'),
            (6,    30362, 'Flash Flood',   'Warning',   'Heavy flooding occurring with the strong T-Storms'),
            (5,    30043, 'Tornado',       'Watch',     'Tornadoes possible in the region.'),
            (5,    30043, 'Tornado',       'Warning',   'Tornado spotted in the area.');
