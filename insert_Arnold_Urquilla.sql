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
    VALUES  (12345, 'FakeCity',     'FakeCounty',   'FS'),
            (12345, 'FakeCity',     'FakeCounty',   'FS'),
            (12345, 'FakeCity',     'FakeCounty',   'FS'),
            (12345, 'FakeCity',     'FakeCounty',   'FS'),
            (12345, 'FakeCity',     'FakeCounty',   'FS'),
            (12345, 'FakeCity',     'FakeCounty',   'FS'),
            (12345, 'FakeCity',     'FakeCounty',   'FS'),
            (12345, 'FakeCity',     'FakeCounty',   'FS'),
            (12345, 'FakeCity',     'FakeCounty',   'FS'),
            (12345, 'FakeCity',     'FakeCounty',   'FS'),
            (12345, 'FakeCity',     'FakeCounty',   'FS'),
            (12345, 'FakeCity',     'FakeCounty',   'FS'),
            (12345, 'FakeCity',     'FakeCounty',   'FS');


insert into USER(Zip_Code, UserName, DoB, Log_In_Date)
    VALUES  (12345, 'FakeUser',     '1901-01-01', '1901-01-01'),
            (12345, 'FakeUser',     '1901-01-01', '1901-01-01'),
            (12345, 'FakeUser',     '1901-01-01', '1901-01-01'),
            (12345, 'FakeUser',     '1901-01-01', '1901-01-01'),
            (12345, 'FakeUser',     '1901-01-01', '1901-01-01'),
            (12345, 'FakeUser',     '1901-01-01', '1901-01-01'),
            (12345, 'FakeUser',     '1901-01-01', '1901-01-01'),
            (12345, 'FakeUser',     '1901-01-01', '1901-01-01'),
            (12345, 'FakeUser',     '1901-01-01', '1901-01-01'),
            (12345, 'FakeUser',     '1901-01-01', '1901-01-01'),
            (12345, 'FakeUser',     '1901-01-01', '1901-01-01'),
            (12345, 'FakeUser',     '1901-01-01', '1901-01-01'),
            (12345, 'FakeUser',     '1901-01-01', '1901-01-01'),
            (12345, 'FakeUser',     '1901-01-01', '1901-01-01');


insert into CURRENT_OBSERVATIONS(Observation_Date, Observation_Time, Temperature, Humidity, Condition_Desc)
    VALUES  ('1901-01-01',  '00.00.00', 100, 100, 'This is a description.'),
            ('1901-01-01',  '00.00.00', 100, 100, 'This is a description.'),
            ('1901-01-01',  '00.00.00', 100, 100, 'This is a description.'),
            ('1901-01-01',  '00.00.00', 100, 100, 'This is a description.'),
            ('1901-01-01',  '00.00.00', 100, 100, 'This is a description.'),
            ('1901-01-01',  '00.00.00', 100, 100, 'This is a description.'),
            ('1901-01-01',  '00.00.00', 100, 100, 'This is a description.'),
            ('1901-01-01',  '00.00.00', 100, 100, 'This is a description.'),
            ('1901-01-01',  '00.00.00', 100, 100, 'This is a description.'),
            ('1901-01-01',  '00.00.00', 100, 100, 'This is a description.'),
            ('1901-01-01',  '00.00.00', 100, 100, 'This is a description.'),
            ('1901-01-01',  '00.00.00', 100, 100, 'This is a description.'),
            ('1901-01-01',  '00.00.00', 100, 100, 'This is a description.'),
            ('1901-01-01',  '00.00.00', 100, 100, 'This is a description.'),
            ('1901-01-01',  '00.00.00', 100, 100, 'This is a description.'),
            ('1901-01-01',  '00.00.00', 100, 100, 'This is a description.'),
            ('1901-01-01',  '00.00.00', 100, 100, 'This is a description.'),
            ('1901-01-01',  '00.00.00', 100, 100, 'This is a description.'),
            ('1901-01-01',  '00.00.00', 100, 100, 'This is a description.'),
            ('1901-01-01',  '00.00.00', 100, 100, 'This is a description.'),
            ('1901-01-01',  '00.00.00', 100, 100, 'This is a description.'),
            ('1901-01-01',  '00.00.00', 100, 100, 'This is a description.');


insert into METEOROLOGIST(Last_Name, First_Name)
    VALUES  ('FakeLast',    'FakeFirst'),
            ('FakeLast',    'FakeFirst'),
            ('FakeLast',    'FakeFirst'),
            ('FakeLast',    'FakeFirst'),
            ('FakeLast',    'FakeFirst'),
            ('FakeLast',    'FakeFirst'),
            ('FakeLast',    'FakeFirst'),
            ('FakeLast',    'FakeFirst'),
            ('FakeLast',    'FakeFirst'),
            ('FakeLast',    'FakeFirst');


insert into WEATHER_FORECAST(Condition_ID, Meteorologist_ID, Hourly_Forecast, `10_Day_Forecast`)
    VALUES  (10,    10,     'This is an hourly forecast.',              'This is a 10-Day Forecast.'),
            (10,    10,     'This is an hourly forecast.',              'This is a 10-Day Forecast.'),
            (10,    10,     'This is an hourly forecast.',              'This is a 10-Day Forecast.'),
            (10,    10,     'This is an hourly forecast.',              'This is a 10-Day Forecast.'),
            (10,    10,     'This is an hourly forecast.',              'This is a 10-Day Forecast.'),
            (10,    10,     'This is an hourly forecast.',              'This is a 10-Day Forecast.'),
            (10,    10,     'This is an hourly forecast.',              'This is a 10-Day Forecast.'),
            (10,    10,     'This is an hourly forecast.',              'This is a 10-Day Forecast.'),
            (10,    10,     'This is an hourly forecast.',              'This is a 10-Day Forecast.'),
            (10,    10,     'This is an hourly forecast.',              'This is a 10-Day Forecast.');


insert into SEVERE_FORECAST(Forecast_ID, Severe_Chance, Severe_Type)
    VALUES  (10,    100,     'Type of severe weather'),
            (10,    100,     'Type of severe weather'),
            (10,    100,     'Type of severe weather'),
            (10,    100,     'Type of severe weather'),
            (10,    100,     'Type of severe weather'),
            (10,    100,     'Type of severe weather'),
            (10,    100,     'Type of severe weather'),
            (10,    100,     'Type of severe weather'),
            (10,    100,     'Type of severe weather'),
            (10,    100,     'Type of severe weather');


insert into SEVERE_WEATHER_ALERT(Severe_Forecast_ID, Zip_Code, Alert_Type, Alert_Severity, Alert_Description)
    VALUES  (10,    12345, 'Alert type goes here.',     'Alert Severity Goes Here',     'Alert description goes here.'),
            (10,    12345, 'Alert type goes here.',     'Alert Severity Goes Here',     'Alert description goes here.'),
            (10,    12345, 'Alert type goes here.',     'Alert Severity Goes Here',     'Alert description goes here.'),
            (10,    12345, 'Alert type goes here.',     'Alert Severity Goes Here',     'Alert description goes here.'),
            (10,    12345, 'Alert type goes here.',     'Alert Severity Goes Here',     'Alert description goes here.'),
            (10,    12345, 'Alert type goes here.',     'Alert Severity Goes Here',     'Alert description goes here.'),
            (10,    12345, 'Alert type goes here.',     'Alert Severity Goes Here',     'Alert description goes here.'),
            (10,    12345, 'Alert type goes here.',     'Alert Severity Goes Here',     'Alert description goes here.'),
            (10,    12345, 'Alert type goes here.',     'Alert Severity Goes Here',     'Alert description goes here.'),
            (10,    12345, 'Alert type goes here.',     'Alert Severity Goes Here',     'Alert description goes here.');
