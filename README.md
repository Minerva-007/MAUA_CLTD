# MAUA_CLTD
MAUA_CLTD is a cooling load calculator designed and submitted for the completion of the course ME-311 (HVAC). The objective is to design a user-friendly GUI for the facilitation in calculating the cooling load of a residential building. 
## Details
- Technology used: MATLAB (App Designer).
- Methodology of cooling load calculation: CLTD+SCL as per recommendations of McQuiston et. al. 1992.
- Supported regions: **Pakistan**:
  •	Karachi
  •	Lahore
  •	Jacobabad
  •	Islamabad
  •	Gwadar
- Maximum load determination criteria: Heuristics based.
- Data gap interpolation technique: polynomial curve fitting

## Screenshots
![Main Menu](https://user-images.githubusercontent.com/64977439/161422515-d1c055f5-d0b3-42cf-93b1-abd5e843d9d3.png)
![Electrical Load](https://user-images.githubusercontent.com/64977439/161422766-ed9dfa91-d93d-4fcf-bac2-0fdb5d31649c.png)


## Technical details
### City data
![City Data](https://user-images.githubusercontent.com/64977439/161422839-f4f57cea-6dab-4161-b14a-d8889adc660c.png)
### Methodology used for particular cooling loads
-	Equipment load (McQuiston 1992 CLF method)
-	Human load (McQuiston 1992 CLF method)
-	Ventilation load (ASHRAE 1997)
-	Infiltration load (ASHRAE 1997)
-	Cooling load for walls (McQuiston 1992 CLTD method)
-	Transmission load for windows (McQuiston 1992 CLTD method)
-	Solar load for windows (McQuiston 1992 SCL method)
### Comparison of results for a particular building
![Table](https://user-images.githubusercontent.com/64977439/161422746-bbd81a1b-f829-4e3a-b155-aaaa0cad05cf.png)
