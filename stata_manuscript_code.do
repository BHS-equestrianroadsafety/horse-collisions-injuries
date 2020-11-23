*Analysis of BHS road incident dataset*
*Last modified 19/11/2020*

tab incident_month

gen season = 1 if incident_month == 1
replace season = 1 if incident_month == 2
replace season = 2 if incident_month == 3
replace season = 2 if incident_month == 4
replace season = 2 if incident_month == 5
replace season = 3 if incident_month == 6
replace season = 3 if incident_month == 7
replace season = 3 if incident_month == 8
replace season = 4 if incident_month == 9
replace season = 4 if incident_month == 10
replace season = 4 if incident_month == 11
replace season = 1 if incident_month == 12

label define label200 1 "Dec-Feb" 2 "Mar-May" 3 "Jun-Aug" 4 "Sep-Nov"
label values season label200

tab season


tab incident_hour

tab incident_region

gen incident_region1 = 1 if incident_region == "East"
replace incident_region1 = 2 if incident_region == "East Midlands"
replace incident_region1 = 3 if incident_region == "Isle of Man"
replace incident_region1 = 4 if incident_region == "London"
replace incident_region1 = 5 if incident_region == "North East"
replace incident_region1 = 6 if incident_region == "North West"
replace incident_region1 = 7 if incident_region == "Northern Ireland"
replace incident_region1 = 8 if incident_region == "Scotland"
replace incident_region1 = 9 if incident_region == "South East"
replace incident_region1 = 10 if incident_region == "South West"
replace incident_region1 = 11 if incident_region == "Wales"
replace incident_region1 = 12 if incident_region == "West Midlands"
replace incident_region1 = 13 if incident_region == "Yorkshire & Humber"


label define label250 1 "East" 2 "East Midlands" 3 "Isle of Man" 4 "London" 5 "North East" 6 "North West" 7 "Northern Ireland" 8 "Scotland" 9 "South East" 10 "South West" 11 "Wales" 12 "West Midlands" 13 "Yorkshire & Humber"
label values incident_region1 label250

tab incident_region1


tab police_reported

gen police_reported1 = 1 if police_reported == "Yes"
replace police_reported1 = 0 if police_reported == "No"

label define label1 0 "No" 1 "Yes"
label values police_reported1 label1

tab police_reported1


tab liability_insurance

gen liability_insurance1 = 1 if liability_insurance == "Yes"
replace liability_insurance1 = 0 if liability_insurance == "No"

label values liability_insurance1 label1

tab liability_insurance1



tab bhs_member

gen bhs_member1 = 1 if bhs_member == "Yes"
replace bhs_member1 = 0 if bhs_member == "No"

label values bhs_member1 label1

tab bhs_member1


tab incident_involvement

gen incident_involvement1 = 1 if incident_involvement == "Friend"
replace incident_involvement1 = 2 if incident_involvement == "Motorist"
replace incident_involvement1 = 3 if incident_involvement == "Police"
replace incident_involvement1 = 4 if incident_involvement == "Rider"
replace incident_involvement1 = 4 if incident_involvement == "Handler"
replace incident_involvement1 = 5 if incident_involvement == "Witness"
replace incident_involvement1 = 6 if incident_involvement == "Other"


label define label3 1 "Friend" 2 "Motorist" 3 "Police" 4 "Rider/handler" 5 "Witness" 6 "Other"
label values incident_involvement1 label3

tab incident_involvement1


tab road_type

gen road_type1 = 1 if road_type == "Main"
replace road_type1 = 2 if road_type == "Secondary"
replace road_type1 = 3 if road_type == "Trunk"
replace road_type1 = 4 if road_type == "Minor"
replace road_type1 = 5 if road_type == "Other"
replace road_type1 = 6 if road_type == "Unknown"


label define label4 1 "Main" 2 "Secondary" 3 "Trunk" 4 "Minor" 5 "Other" 6 "Unknown"
label values road_type1 label4

tab road_type1


tab area_type

gen area_type1 = 1 if area_type == "Urban"
replace area_type1 = 2 if area_type == "Suburban"
replace area_type1 = 3 if area_type == "Rural"
replace area_type1 = 4 if area_type == "Wooded"
replace area_type1 = 5 if area_type == "Other"

label define label5 1 "Urban" 2 "Suburban" 3 "Rural" 4 "Wooded" 5 "Other"
label values area_type1 label5

tab area_type1


tab speed_limit_mph

gen speed_limit_mph1 = 1 if speed_limit_mph == "20"
replace speed_limit_mph1 = 2 if speed_limit_mph == "30"
replace speed_limit_mph1 = 3 if speed_limit_mph == "40"
replace speed_limit_mph1 = 4 if speed_limit_mph == "50"
replace speed_limit_mph1 = 5 if speed_limit_mph == "60"
replace speed_limit_mph1 = 6 if speed_limit_mph == "70"
replace speed_limit_mph1 = 7 if speed_limit_mph == "Unknown"

label define label225 1 "20" 2 "30" 3 "40" 4 "50" 5 "60" 6 "70" 7 "Unknown"
label values speed_limit_mph1 label225

tab speed_limit_mph1



tab weather_cond

gen weather_cond1 = 1 if weather_cond == "Bright"
replace weather_cond1 = 2 if weather_cond == "Dry"
replace weather_cond1 = 3 if weather_cond == "Fog"
replace weather_cond1 = 4 if weather_cond == "Icy"
replace weather_cond1 = 5 if weather_cond == "Snowy"
replace weather_cond1 = 6 if weather_cond == "Wet"

label define label6 1 "Bright" 2 "Dry" 3 "Fog" 4 "Icy" 5 "Snowy" 6 "Wet"
label values weather_cond1 label6 

tab weather_cond1

gen weather_cond2 = 1 if weather_cond1 == 1
replace weather_cond2 = 2 if weather_cond1 == 2
replace weather_cond2 = 3 if weather_cond1 == 3
replace weather_cond2 = 3 if weather_cond1 == 4
replace weather_cond2 = 3 if weather_cond1 == 5
replace weather_cond2 = 4 if weather_cond1 == 6

label define label122 1 "Bright" 2 "Dry" 3 "Fog/Ice/Snow" 4 "Wet"
label values weather_cond2 label122

tab weather_cond2


tab road_surface

gen road_surface1 = 1 if road_surface == "Damaged"
replace road_surface1 = 2 if road_surface == "New"
replace road_surface1 = 3 if road_surface == "Worn"

label define label7 1 "Damaged" 2 "New" 3 "Worn"
label values road_surface1 label7 

tab road_surface1


tab visibility_cond

gen visibility_cond1 = 1 if visibility_cond == "Good"
replace visibility_cond1 = 2 if visibility_cond == "Fair"
replace visibility_cond1 = 3 if visibility_cond == "Poor"

label define label8 1 "Good" 2 "Fair" 3 "Poor"
label values visibility_cond1 label8 

tab visibility_cond1


tab road_rage

gen road_rage1 = 1 if road_rage == "Yes"
replace road_rage1 = 0 if road_rage == "No"

label values road_rage1 label1

tab road_rage1


tab control_loss

gen control_loss1 = 1 if control_loss == "Yes"
replace control_loss1 = 0 if control_loss == "No"

label values control_loss1 label1

tab control_loss1


tab vehicle_speed

gen vehicle_speed1 = 1 if vehicle_speed == "Yes"
replace vehicle_speed1 = 0 if vehicle_speed == "No"

label values vehicle_speed1 label1

tab vehicle_speed1



tab vehicle_close

gen vehicle_close1 = 1 if vehicle_close == "Yes"
replace vehicle_close1 = 0 if vehicle_close == "No"

label values vehicle_close1 label1

tab vehicle_close1


tab horse_control

gen horse_control1 = 1 if horse_control == "Yes"
replace horse_control1 = 0 if horse_control == "No"

label values horse_control1 label1

tab horse_control1


tab age_main_horse

tabstat age_main_horse, s(mean median sd var count range min max)
summarize age_main_horse, detail 
hist age_main_horse

gen age_horse_cat = age_main_horse
recode age_horse_cat min/7=1 7/11=2 11/15=3 15/max=4

label define label113 1 "up to 7 years" 2 "7-11 years" 3 "11-15 years" 4 ">15 years"
label values age_horse_cat label113

tab age_horse_cat


tab road_frequency

gen road_frequency1 = 1 if road_frequency == "More than once per week"
replace road_frequency1 = 2 if road_frequency == "Weekly"
replace road_frequency1 = 3 if road_frequency == "Monthly"
replace road_frequency1 = 4 if road_frequency == "Other"

label define label12 1 "More than once per week" 2 "Weekly" 3 "Monthly" 4 "Other"
label values road_frequency1 label12

tab road_frequency1


tab horse_use

gen horse_use1 = 1 if horse_use == "Ridden"
replace horse_use1 = 2 if horse_use == "Driven"
replace horse_use1 = 3 if horse_use == "Leading"
replace horse_use1 = 4 if horse_use == "Loose"

label define label13 1 "Ridden" 2 "Driven" 3 "Leading" 4 "Loose"
label values horse_use1 label13

tab horse_use1


tab horse_fall

gen horse_fall1 = 1 if horse_fall == "Yes"
replace horse_fall1 = 0 if horse_fall == "No"

label values horse_fall1 label1

tab horse_fall1


tab horses_injured

gen horses_injured1 = 1 if horses_injured == "None"
replace horses_injured1 = 2 if horses_injured == "Mild"
replace horses_injured1 = 3 if horses_injured == "Moderate"
replace horses_injured1 = 4 if horses_injured == "Severe"
replace horses_injured1 = 5 if horses_injured == "Fatal"

label define label14 1 "None" 2 "Mild" 3 "Moderate" 4 "Severe" 5 "Fatal"
label values horses_injured1 label14

tab horses_injured1


tab vet_assistance

gen vet_assistance1 = 1 if vet_assistance == "Yes"
replace vet_assistance1 = 0 if vet_assistance == "No"

label values vet_assistance1 label1

tab vet_assistance1


tab vehicle_collision

gen vehicle_collision1 = 1 if vehicle_collision == "Yes"
replace vehicle_collision1 = 0 if vehicle_collision == "No"

label values vehicle_collision1 label1

tab vehicle_collision1


tab horse_area_struck

gen horse_area_struck1 = 1 if horse_area_struck == "Front"
replace horse_area_struck1 = 2 if horse_area_struck == "Rear"
replace horse_area_struck1 = 3 if horse_area_struck == "Side"

label define label15 1 "Front" 2 "Rear" 3 "Side"
label values horse_area_struck1 label15

tab horse_area_struck1


tab rider_handler_exp

gen rider_handler_exp1 = 1 if rider_handler_exp == "0-5 years"
replace rider_handler_exp1 = 2 if rider_handler_exp == "5-10 years"
replace rider_handler_exp1 = 3 if rider_handler_exp == "10-15 years"
replace rider_handler_exp1 = 4 if rider_handler_exp == "15 years +"

label define label16 1 "0-5 years" 2 "5-10 years" 3 "10-15 years" 4 "15 years +"
label values rider_handler_exp1 label16

tab rider_handler_exp1


tab bhs_riding_test

gen bhs_riding_test1 = 1 if bhs_riding_test == "Yes"
replace bhs_riding_test1 = 0 if bhs_riding_test == "No"

label values bhs_riding_test1 label1

tab bhs_riding_test1


tab rider_handler_age

tabstat rider_handler_age, s(mean median sd var count range min max)
summarize rider_handler_age, detail 
hist rider_handler_age

gen rider_age_cat = rider_handler_age
recode rider_age_cat min/27=1 27/40=2 40/50=3 50/max=4

label define label114 1 "up to 27 years" 2 "27-40 years" 3 "40-50 years" 4 ">50 years"
label values rider_age_cat label114

tab rider_age_cat


gen rider_age_cat1 = rider_handler_age
recode rider_age_cat1 min/25=1 25/35=2 35/45=3 45/55=4 55/max=5

label define label115 1 "up to 25 years" 2 "25-35 years" 3 "35-45 years" 4 "45-55 years" 5 ">55 years"
label values rider_age_cat1 label115

tab rider_age_cat1



tab rider_handler_gender

gen rider_handler_gender1 = 1 if rider_handler_gender == "Female"
replace rider_handler_gender1 = 2 if rider_handler_gender == "Male"
replace rider_handler_gender1 = 3 if rider_handler_gender == "Unknown"

label define label17 1 "Female" 2 "Male" 3 "Unknown"
label values rider_handler_gender1 label17

tab rider_handler_gender1



tab rider_fall

gen rider_fall1 = 1 if rider_fall == "Yes"
replace rider_fall1 = 0 if rider_fall == "No"

label values rider_fall1 label1

tab rider_fall1



tab injury_severity

gen injury_severity1 = 1 if injury_severity == "None"
replace injury_severity1 = 2 if injury_severity == "Mild"
replace injury_severity1 = 3 if injury_severity == "Moderate"
replace injury_severity1 = 4 if injury_severity == "Severe"
replace injury_severity1 = 5 if injury_severity == "Fatal"

label define label9 1 "None" 2 "Mild" 3 "Moderate" 4 "Severe" 5 "Fatal"
label values injury_severity1 label9

tab injury_severity1



tab medical_help

gen medical_help1 = 1 if medical_help == "None"
replace medical_help1 = 2 if medical_help == "A and E"
replace medical_help1 = 3 if medical_help == "Road Ambulance"
replace medical_help1 = 4 if medical_help == "Air Ambulance"
replace medical_help1 = 5 if medical_help == "GP"

label define label10 1 "None" 2 "A & E" 3 "Road Ambulance" 4 "Air Ambulance" 5 "GP"
label values medical_help1 label10

tab medical_help1


tab hiviz

gen hiviz1 = 1 if hiviz == "Yes"
replace hiviz1 = 0 if hiviz == "No"

label values hiviz1 label1

tab hiviz1


tab hat_worn

gen hat_worn1 = 1 if hat_worn == "Yes"
replace hat_worn1 = 0 if hat_worn == "No"

label values hat_worn1 label1

tab hat_worn1


tab body_protector_worn

gen body_protector_worn1 = 1 if body_protector_worn == "Yes"
replace body_protector_worn1 = 0 if body_protector_worn == "No"

label values body_protector_worn1 label1

tab body_protector_worn1


tab vehicle_speed1

tab vehicle_close1

gen vehicle_speed_close = 1 if vehicle_speed1 == 1 & vehicle_close1 == 1
replace vehicle_speed_close = 2 if vehicle_speed1 ==1 & vehicle_close1 == 0
replace vehicle_speed_close = 3 if vehicle_speed1 ==0 & vehicle_close1 == 1
replace vehicle_speed_close = 4 if vehicle_speed1 ==0 & vehicle_close1 == 0

label define label201 1 "Both speeding & too close" 2 "Speeding only" 3 "Too close only" 4 "Neither"
label values vehicle_speed_close label201

tab vehicle_speed_close



* Vehicle collision as outcome *

tab vehicle_collision1


tab incident_month vehicle_collision1, row chi

xtlogit vehicle_collision1 ib7.incident_month, i(report_id) re or


tab season vehicle_collision1, row chi

xtlogit vehicle_collision1 ib3.season, i(report_id) re or


tab incident_year vehicle_collision1, row chi

xtlogit vehicle_collision1 ib2019.incident_year, i(report_id) re or


gen incident_year2 = incident_year
recode incident_year2 min/2015=1 2016/max=2

label define label111 1 "2010-2015" 2 "2016-2020"
label values incident_year2 label111

tab incident_year2

tab incident_year2 vehicle_collision1, row chi

xtlogit vehicle_collision1 ib2.incident_year2, i(report_id) re or



tab incident_region1 vehicle_collision1, row chi

xtlogit vehicle_collision1 ib6.incident_region1, i(report_id) re or



gen incident_hour1 = incident_hour
recode incident_hour1 0/5=1 20/22=1 6/9=2 10/14=3 15/19=4 

label define label124 1 "8pm-5am" 2 "6-9am" 3 "10am-2pm" 4 "3-7pm"
label values incident_hour1 label124

tab incident_hour1


tab incident_hour1 vehicle_collision1, row chi

xtlogit vehicle_collision1 ib3.incident_hour1, i(report_id) re or



tab road_type1 vehicle_collision1, row chi

xtlogit vehicle_collision1 i.road_type1, i(report_id) re or


tab area_type1 vehicle_collision1, row chi

xtlogit vehicle_collision1 ib2.area_type1, i(report_id) re or


tab speed_limit_mph1 vehicle_collision1, row chi

xtlogit vehicle_collision1 ib5.speed_limit_mph1, i(report_id) re or


tab weather_cond1 vehicle_collision1, row chi

xtlogit vehicle_collision1 i.weather_cond1, i(report_id) re or



tab weather_cond2 vehicle_collision1, row chi

xtlogit vehicle_collision1 ib2.weather_cond2, i(report_id) re or


tab road_surface1 vehicle_collision1, row chi

xtlogit vehicle_collision1 ib3.road_surface1, i(report_id) re or



tab visibility_cond1 vehicle_collision1, row chi

xtlogit vehicle_collision1 i.visibility_cond1, i(report_id) re or


tab road_rage1 vehicle_collision1, row chi

xtlogit vehicle_collision1 i.road_rage1, i(report_id) re or


tab control_loss1 vehicle_collision1, row chi

xtlogit vehicle_collision1 i.control_loss1, i(report_id) re or


tab vehicle_speed1 vehicle_collision1, row chi

xtlogit vehicle_collision1 i.vehicle_speed1, i(report_id) re or


tab vehicle_close1 vehicle_collision1, row chi

xtlogit vehicle_collision1 i.vehicle_close1, i(report_id) re or


tab horse_control1 vehicle_collision1, row chi

xtlogit vehicle_collision1 i.horse_control1, i(report_id) re or


ranksum age_main_horse, by(vehicle_collision1)
bysort vehicle_collision1: summarize age_main_horse, detail

grstyle init
grstyle set plain
grstyle set legend 4, nobox
grstyle set color hue, n(5)
grstyle set symbolsize large

graph box age_main_horse, over(vehicle_collision1, label(labsize(small))) ytitle(Main horse age) box(1, lcolor(black))

xtlogit vehicle_collision1 age_main_horse, i(report_id) re or


tab age_horse_cat vehicle_collision1, row chi

xtlogit vehicle_collision1 ib4.age_horse_cat, i(report_id) re or



tab road_frequency1 vehicle_collision1, row chi

xtlogit vehicle_collision1 i.road_frequency1, i(report_id) re or


tab horse_use1 vehicle_collision1, row chi

xtlogit vehicle_collision1 i.horse_use1, i(report_id) re or


tab rider_handler_exp1 vehicle_collision1, row chi

xtlogit vehicle_collision1 ib4.rider_handler_exp1, i(report_id) re or


ranksum rider_handler_age, by(vehicle_collision1)
bysort vehicle_collision1: summarize rider_handler_age, detail

grstyle init
grstyle set plain
grstyle set legend 4, nobox
grstyle set color hue, n(5)
grstyle set symbolsize large

graph box rider_handler_age, over(vehicle_collision1, label(labsize(small))) ytitle(Rider/handler age) box(1, lcolor(black))

xtlogit vehicle_collision1 rider_handler_age, i(report_id) re or


tab rider_age_cat vehicle_collision1, row chi

xtlogit vehicle_collision1 ib4.rider_age_cat, i(report_id) re or



tab rider_age_cat1 vehicle_collision1, row chi

xtlogit vehicle_collision1 ib5.rider_age_cat1, i(report_id) re or


tab rider_handler_gender1 vehicle_collision1, row chi

xtlogit vehicle_collision1 i.rider_handler_gender1, i(report_id) re or


tab hiviz1 vehicle_collision1, row chi

xtlogit vehicle_collision1 i.hiviz1, i(report_id) re or


tab vehicle_speed_close vehicle_collision1, row chi

xtlogit vehicle_collision1 ib2.vehicle_speed_close, i(report_id) re or



xtlogit vehicle_collision1 i.hiviz1 i.road_rage1 ib2.incident_year2 rider_handler_age ib2.vehicle_speed_close ib6.incident_region1 ib3.incident_hour1 ib5.speed_limit_mph1 if e(sample), i(report_id) re or
est store m1
xtlogit vehicle_collision1 i.hiviz1 i.road_rage1 ib2.incident_year2 rider_handler_age ib2.vehicle_speed_close ib6.incident_region1 ib3.incident_hour1 if e(sample), i(report_id) re or
est store m2
lrtest m2 m1, stats

*speed limit p=0.0019*

xtlogit vehicle_collision1 i.hiviz1 i.road_rage1 ib2.incident_year2 rider_handler_age ib2.vehicle_speed_close ib6.incident_region1 ib3.incident_hour1 ib5.speed_limit_mph1 if e(sample), i(report_id) re or
est store m1
xtlogit vehicle_collision1 i.hiviz1 i.road_rage1 ib2.incident_year2 rider_handler_age ib2.vehicle_speed_close ib6.incident_region1 ib5.speed_limit_mph1 if e(sample), i(report_id) re or
est store m2
lrtest m2 m1, stats

*incident hour p=0.0448*

xtlogit vehicle_collision1 i.hiviz1 i.road_rage1 ib2.incident_year2 rider_handler_age ib2.vehicle_speed_close ib6.incident_region1 ib3.incident_hour1 ib5.speed_limit_mph1 if e(sample), i(report_id) re or
est store m1
xtlogit vehicle_collision1 i.hiviz1 i.road_rage1 ib2.incident_year2 rider_handler_age ib2.vehicle_speed_close ib3.incident_hour1 ib5.speed_limit_mph1 if e(sample), i(report_id) re or
est store m2
lrtest m2 m1, stats

*incident region p=0.0419*


xtlogit vehicle_collision1 i.hiviz1 i.road_rage1 ib2.incident_year2 rider_handler_age ib2.vehicle_speed_close ib6.incident_region1 ib3.incident_hour1 ib5.speed_limit_mph1 if e(sample), i(report_id) re or
est store m1
xtlogit vehicle_collision1 i.hiviz1 i.road_rage1 ib2.incident_year2 rider_handler_age ib6.incident_region1 ib3.incident_hour1 ib5.speed_limit_mph1 if e(sample), i(report_id) re or
est store m2
lrtest m2 m1, stats

*speed and passing p<0.001*

xtlogit vehicle_collision1 i.hiviz1 i.road_rage1 ib2.incident_year2 rider_handler_age ib2.vehicle_speed_close ib6.incident_region1 ib3.incident_hour1 ib5.speed_limit_mph1 if e(sample), i(report_id) re or
est store m1
xtlogit vehicle_collision1 i.hiviz1 i.road_rage1 ib2.incident_year2 ib2.vehicle_speed_close ib6.incident_region1 ib3.incident_hour1 ib5.speed_limit_mph1 if e(sample), i(report_id) re or
est store m2
lrtest m2 m1, stats

*handler age p<0.0001*

xtlogit vehicle_collision1 i.hiviz1 i.road_rage1 ib2.incident_year2 rider_handler_age ib2.vehicle_speed_close ib6.incident_region1 ib3.incident_hour1 ib5.speed_limit_mph1 if e(sample), i(report_id) re or
est store m1
xtlogit vehicle_collision1 i.hiviz1 i.road_rage1 rider_handler_age ib2.vehicle_speed_close ib6.incident_region1 ib3.incident_hour1 ib5.speed_limit_mph1 if e(sample), i(report_id) re or
est store m2
lrtest m2 m1, stats

*incident year p<0.001*

xtlogit vehicle_collision1 i.hiviz1 i.road_rage1 ib2.incident_year2 rider_handler_age ib2.vehicle_speed_close ib6.incident_region1 ib3.incident_hour1 ib5.speed_limit_mph1 if e(sample), i(report_id) re or
est store m1
xtlogit vehicle_collision1 i.hiviz1 ib2.incident_year2 rider_handler_age ib2.vehicle_speed_close ib6.incident_region1 ib3.incident_hour1 ib5.speed_limit_mph1 if e(sample), i(report_id) re or
est store m2
lrtest m2 m1, stats

*road rage p<0.001*

xtlogit vehicle_collision1 i.hiviz1 i.road_rage1 ib2.incident_year2 rider_handler_age ib2.vehicle_speed_close ib6.incident_region1 ib3.incident_hour1 ib5.speed_limit_mph1 if e(sample), i(report_id) re or
est store m1
xtlogit vehicle_collision1 i.road_rage1 ib2.incident_year2 rider_handler_age ib2.vehicle_speed_close ib6.incident_region1 ib3.incident_hour1 ib5.speed_limit_mph1 if e(sample), i(report_id) re or
est store m2
lrtest m2 m1, stats

*hi viz p<0.001*

*FINAL MODEL*
xtlogit vehicle_collision1 i.hiviz1 i.road_rage1 ib2.incident_year2 rider_handler_age ib2.vehicle_speed_close ib6.incident_region1 ib3.incident_hour1 ib5.speed_limit_mph1, i(report_id) re or


logistic vehicle_collision1 i.hiviz1 i.road_rage1 ib2.incident_year2 rider_handler_age ib2.vehicle_speed_close ib6.incident_region1 ib3.incident_hour1 ib5.speed_limit_mph1
lfit, group(6) table

logistic vehicle_collision1 i.hiviz1 i.road_rage1 ib2.incident_year2 rider_handler_age ib2.vehicle_speed_close ib6.incident_region1 ib3.incident_hour1 ib5.speed_limit_mph1
lroc


* Horse fatality as outcome *

tab horses_injured

tab horses_injured1

gen horses_injured2 = 0 if horses_injured == "None"
replace horses_injured2 = 0 if horses_injured == "Mild"
replace horses_injured2 = 0 if horses_injured == "Moderate"
replace horses_injured2 = 0 if horses_injured == "Severe"
replace horses_injured2 = 1 if horses_injured == "Fatal"

label define label20 0 "Non-fatal" 1 "Fatal"
label values horses_injured2 label20

tab horses_injured2


tab incident_month horses_injured2, row chi

logistic horses_injured2 ib4.incident_month


tab season horses_injured2, row chi

logistic horses_injured2 ib2.season


tab incident_year horses_injured2, row chi

logistic horses_injured2 ib2019.incident_year


tab incident_year2 horses_injured2, row chi

logistic horses_injured2 ib2.incident_year2


tab incident_region1 horses_injured2, row chi

logistic horses_injured2 ib13.incident_region1


tab incident_hour1 horses_injured2, row chi

logistic horses_injured2 ib3.incident_hour1


tab road_type1 horses_injured2, row chi

logistic horses_injured2 ib4.road_type1


tab area_type1 horses_injured2, row chi

logistic horses_injured2 i.area_type1


tab speed_limit_mph1 horses_injured2, row chi

logistic horses_injured2 i.speed_limit_mph1



tab weather_cond2 horses_injured2, row chi

logistic horses_injured2 ib2.weather_cond2


tab visibility_cond1 horses_injured2, row chi

logistic horses_injured2 i.visibility_cond1


tab road_rage1 horses_injured2, row chi

logistic horses_injured2 i.road_rage1


tab control_loss1 horses_injured2, row chi

logistic horses_injured2 i.control_loss1


tab vehicle_speed1 horses_injured2, row chi

logistic horses_injured2 i.vehicle_speed1


tab vehicle_close1 horses_injured2, row chi

logistic horses_injured2 i.vehicle_close1


tab horse_control1 horses_injured2, row chi

logistic horses_injured2 i.horse_control1


ranksum age_main_horse, by(horses_injured2)
bysort horses_injured2: summarize age_main_horse, detail

logistic horses_injured2 age_main_horse


tab age_horse_cat horses_injured2, row chi

logistic horses_injured2 ib4.age_horse_cat


tab road_frequency1 horses_injured2, row chi

logistic horses_injured2 i.road_frequency1


tab horse_use1 horses_injured2, row chi

logistic horses_injured2 i.horse_use1


tab horse_fall1 horses_injured2, row chi

logistic horses_injured2 i.horse_fall1


tab vehicle_collision1 horses_injured2, row chi

logistic horses_injured2 i.vehicle_collision1


tab rider_handler_exp1 horses_injured2, row chi

logistic horses_injured2 ib4.rider_handler_exp1


tab bhs_riding_test1 horses_injured2, row chi

logistic horses_injured2 i.bhs_riding_test1


ranksum rider_handler_age, by(horses_injured2)
bysort horses_injured2: summarize rider_handler_age, detail

logistic horses_injured2 rider_handler_age


tab rider_age_cat horses_injured2, row chi

logistic horses_injured2 ib4.rider_age_cat


tab rider_age_cat1 horses_injured2, row chi

logistic horses_injured2 ib5.rider_age_cat1


tab rider_handler_gender1 horses_injured2, row chi

logistic horses_injured2 i.rider_handler_gender1


tab rider_fall1 horses_injured2, row chi

logistic horses_injured2 i.rider_fall1


tab injury_severity1 horses_injured2, row chi

logistic horses_injured2 i.injury_severity1


tab hiviz1 horses_injured2, row chi

logistic horses_injured2 i.hiviz1



logistic horses_injured2 i.road_rage1 i.horse_fall1 i.vehicle_collision1 i.injury_severity3 i.hiviz1 ib3.vehicle_speed_close i.horse_use2



logistic horses_injured2 i.road_rage1 i.horse_fall1 i.vehicle_collision1 i.injury_severity3 i.horse_use2 ib2019.incident_year i.vehicle_speed1 i.hiviz1 if e(sample)
est store m1
logistic horses_injured2 i.road_rage1 i.horse_fall1 i.vehicle_collision1 i.injury_severity3 i.horse_use2 ib2019.incident_year i.vehicle_speed1 if e(sample)
est store m2
lrtest m2 m1, stats


tab injury_severity

gen injury_severity3 = 0 if injury_severity == "None"
replace injury_severity3 = 1 if injury_severity == "Mild"
replace injury_severity3 = 2 if injury_severity == "Moderate"
replace injury_severity3 = 3 if injury_severity == "Severe"
replace injury_severity3 = 3 if injury_severity == "Fatal"

label define label25 0 "None" 1 "Mild" 2 "Moderate" 3 "Severe-Fatal"
label values injury_severity3 label25

tab injury_severity3

tab injury_severity3 horses_injured2, row chi

logistic horses_injured2 i.injury_severity3


tab horse_use1

gen horse_use2 = 1 if horse_use1 == 1
replace horse_use2 = 1 if horse_use1 == 2
replace horse_use2 = 2 if horse_use1 == 3
replace horse_use2 = 3 if horse_use1 == 4

label define label27 1 "Ridden/driven" 2 "Leading" 3 "Loose"
label values horse_use2 label27

tab horse_use2


tab horse_use2 horses_injured2, row chi

logistic horses_injured2 i.horse_use2


logistic horses_injured2 i.road_rage1 i.horse_fall1 i.vehicle_collision1 i.injury_severity3 i.vehicle_speed1 i.horse_use2 ib2019.incident_year if e(sample)
est store m1
logistic horses_injured2 i.road_rage1 i.horse_fall1 i.vehicle_collision1 i.injury_severity3 i.vehicle_speed1 i.horse_use2 if e(sample)
est store m2
lrtest m2 m1, stats

*incident year p= 0.0022*

logistic horses_injured2 i.road_rage1 i.horse_fall1 i.vehicle_collision1 i.injury_severity3 i.vehicle_speed1 i.horse_use2 ib2019.incident_year if e(sample)
est store m1
logistic horses_injured2 i.road_rage1 i.horse_fall1 i.vehicle_collision1 i.injury_severity3 i.vehicle_speed1 ib2019.incident_year if e(sample)
est store m2
lrtest m2 m1, stats

*horse use p<0.00001*

logistic horses_injured2 i.road_rage1 i.horse_fall1 i.vehicle_collision1 i.injury_severity3 i.vehicle_speed1 i.horse_use2 ib2019.incident_year if e(sample)
est store m1
logistic horses_injured2 i.road_rage1 i.horse_fall1 i.vehicle_collision1 i.injury_severity3 i.horse_use2 ib2019.incident_year if e(sample)
est store m2
lrtest m2 m1, stats

*vehicle speeding p=0.0130 *

logistic horses_injured2 i.road_rage1 i.horse_fall1 i.vehicle_collision1 i.injury_severity3 i.vehicle_speed1 i.horse_use2 ib2019.incident_year if e(sample)
est store m1
logistic horses_injured2 i.road_rage1 i.horse_fall1 i.vehicle_collision1 i.vehicle_speed1 i.horse_use2 ib2019.incident_year if e(sample)
est store m2
lrtest m2 m1, stats

*rider/handler injury severity p<0.00001 *

logistic horses_injured2 i.road_rage1 i.horse_fall1 i.vehicle_collision1 i.injury_severity3 i.vehicle_speed1 i.horse_use2 ib2019.incident_year if e(sample)
est store m1
logistic horses_injured2 i.road_rage1 i.horse_fall1 i.injury_severity3 i.vehicle_speed1 i.horse_use2 ib2019.incident_year if e(sample)
est store m2
lrtest m2 m1, stats

*colission with vehicle p<0.00001 *

logistic horses_injured2 i.road_rage1 i.horse_fall1 i.vehicle_collision1 i.injury_severity3 i.vehicle_speed1 i.horse_use2 ib2019.incident_year if e(sample)
est store m1
logistic horses_injured2 i.road_rage1 i.vehicle_collision1 i.injury_severity3 i.vehicle_speed1 i.horse_use2 ib2019.incident_year if e(sample)
est store m2
lrtest m2 m1, stats

*horse fall p<0.00001 *

logistic horses_injured2 i.road_rage1 i.horse_fall1 i.vehicle_collision1 i.injury_severity3 i.vehicle_speed1 i.horse_use2 ib2019.incident_year if e(sample)
est store m1
logistic horses_injured2 i.horse_fall1 i.vehicle_collision1 i.injury_severity3 i.vehicle_speed1 i.horse_use2 ib2019.incident_year if e(sample)
est store m2
lrtest m2 m1, stats

*road rage p=0.0011 *


*FINAL MODEL*

logistic horses_injured2 i.road_rage1 i.horse_fall1 i.vehicle_collision1 i.injury_severity3 i.vehicle_speed1 i.horse_use2 ib2019.incident_year


logistic horses_injured2 i.road_rage1 i.horse_fall1 i.vehicle_collision1 i.injury_severity3 i.vehicle_speed1 i.horse_use2 ib2019.incident_year
lfit, group(6) table

logistic horses_injured2 i.road_rage1 i.horse_fall1 i.vehicle_collision1 i.injury_severity3 i.vehicle_speed1 i.horse_use2 ib2019.incident_year
lroc








