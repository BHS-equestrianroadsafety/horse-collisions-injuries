# Equestrian road safety in the United Kingdom: factors associated with collisions and horse fatalities: Datasets and analysis code
DOI to be inserted here

## Introduction
This repository contains datasets and code used for the manuscript as titled above. All pertinent details regarding the data source and considerations that should be noted are discussed in the manuscript. 

## Referencing this dataset
Danica Pollard & John Grewar (2020) Equestrian road safety in the United Kingdom: factors associated with collisions and horse fatalities \[Dataset]\. British Horse Society. DOI URL to be inserted here

## STATA code for descriptive, univariable and multivariable modelling  
The descriptive and modelling analysis for the manuscript was performed using [STATA](https://www.stata.com/). The associated code is available in the *stata_manuscript_code.do* file. 

## Datasets  
### Model and descriptive files  
-  **_maindata.xlsx_** is a Microsoft Excel file containing all data used for these analyses. Missing data have NULL values.
    -  `id_incident` is the unique identifier per incident
    -  `reporter_id` is the unique identifier per reporter 
    -  `incident_day` is the day of the month the incident occured
    -  `incident_month` is the month the incident occured
    -  `incident_year` is the year the incident occured
    -  `incident_hour` is the hour the incident occured
    -  `incident_min` is the minute the incident occured
    -  `incident_region` is the region the incident occured
    -  `incident_latitude` is the latitude the incident occured
    -  `incident_longitude` is the longitude the incident occured
    -  `police_reported` is whether the incident was also reported to the police
    -  `liability_insurance` is whether the reporter had public liability insurance
    -  `bhs_member` is whether the reporter was a membmer of the BHS
    -  `incident_involvement` is the reporter's involvement in the incident
    -  `road_type` is the type of road the incident occured on
    -  `area_type` is the area the road incident occured in
    -  `speed_limit_mph` is the speed limit of the road the incident occured on
    -  `weather_cond` is the weather conditions at the time the incident occured
    -  `road_surface` is the condition of the road surface at the location where the incident occured
    -  `visibility_cond` is the visibility conditions at the time the incident occured
    -  `road_rage` is whether road rage by the vehicle driver and directed at the equestrian occured at the time of the incident
    -  `control_loss` is whether the vehicle driver lost control of the vehicle at the time of the incident
    -  `vehicle_speed` is whether the vehicle drives was exceeding the speed limit at the time of the incident
    -  `vehicle_close` is whether the vehicle driver passed the horse too closely at the time of the incident
    -  `horse_control` is whether the equestrian lost control of the horse at the time of the incident
    -  `age_main_horse` is the age of the main horse involved in the incident
    -  `road_frequency` is the average weekly frequency of road use by the main horse involved in the incident
    -  `horse_use` is the use or status of the horse at the time of the incident
    -  `horse_fall` is whether the horse lost its footing at the time of the incident
    -  `horses_injured` is the severity of injury sustained by the horse as a result of the incident
    -  `vet_assistance` is whether the horse received veterinary assistance as a result of the incident
    -  `vehicle_collision` is whether the vehicle came into physical contact with the horse or human handler at the time of the incident
    -  `horse_area_struck` is the point of impact on the horse if a collsion did occur at the time of the incident
    -  `rider_handler_exp` is the main equestrian's total years of experience with handling horses on roads
    -  `bhs_riding_test` is whether the main equestrian had ever passed the BHS Riding and Road Safety Test
    -  `rider_handler_age` is the age of the main equestrian involved in the incident
    -  `rider_handler_gender` is the gender of the main equestrian involved in the incident
    -  `rider_fall` is whether the equestrian became unseated during the incident
    -  `injury_severity` is the severity of injury sustained by the main equestrian as a result of the incident
    -  `medical_help` is the type of medical assistance, if any, received by the equestrian as a result of the incident
    -  `hiviz` is whether the equestrian and/or horse were wearing high visibility clothing at the time of the incident
    -  `hat_worn` is whether the equestrian wore a riding helmet at the time of the incident
    -  `body_protector_worn` is whether the equestrian wore a body protector at the time of the incident

### Cluster analysis files
These data files are formatted for use in SaTScan's software and used to detect potential clusters of incidents in space and time.  
SaTScan can be downloaded at [https://www.satscan.org/](https://www.satscan.org/) and information regarding parameters used for the anlaysis can be found in the **Materials and Methods** of the associated manuscript with this dataset available here (future paper DOI to be inserted). The model used was a Retrospective Space-Time Permutation Model.

-  **_satscan_geo.xlsx_** is a Microsoft Excel file for the **coordinates** (lat/long) detail for input into SatScan's Data Input tab
    -  `id_incident` is the unique identifier per location
    -  `latitude` is the latitude for the location (EPSG 4326)
    -  `longitude` is the longitude for the location (EPSG 4326)

-  **_satscan_cas.xlsx_** is a Microsoft Excel file for the **case** detail for input into SatScan's Data Input tab
    -  `id_incident` is the unique identifier per case (incident)
    -  `cases` is the number of cases for each incident and is always 1
    -  `incident_date` is the date (format dd/mm/yyyy) for each incident

### GIS (Spatial) datasets in /gis folder
-  **_ukhex.shp_** is a hexagon grid file used for choropleth mapping. The European Petroleum Survey Group (EPSG) coordinate system code for this dataset is 3035 (i.e. LAEA Europe).  
