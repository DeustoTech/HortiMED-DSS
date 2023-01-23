# HortiMED-DSS
This repository is entitled to develop the Descision Support System of HortiMED

The final objective of this first work plan is the exploration, design, and validation of a Decision Support System (DSS) for a greenhouse. The DSS is conceived as a decision support system for the greenhouse operators of the HORTIMED project. This system will be realized using the MATLAB & Simulink sublibrary previously designed by Jesús Oroya whose schematic is shown in Figure 1.
In horticulture, the DSS will be a tool that will suggest to the greenhouse operator what actions to take to carry out the tomato production cycle under optimization criteria. Such optimization will be done using data on climate, soil, amount of hydrates in the plants, growth patterns, energy consumption and other relevant factors to improve crop production and maximize profitability.

Objective:
To design a decision support system for greenhouse operators that serves to optimise the production of the facility (Meñaca).
Scope:
The DSS, based on the data recorded in real time and the results of the platform's simulation, will support the operator in establishing the daily instructions for action to guarantee the survival of the plants and with production optimisation criteria.
This system will not be invasive or intrusive for the operator, who will be autonomous as to which of the recommended actions to implement. 

Internal variables and states
Internal temperature
Ambient humidity
Illuminance
Mass of hydrates in plant (?)
Mass of ripe fruit at the end of the cycle
...
Disturbances 
External temperature
Irradiance at external surface
Wind speed
Outdoor ambient humidity
...
Control signals 
The control signals that affect the system, according to the available actuators are:
Heating power supplied by the Heater
Degree of opening of the windows
Position of the shading screens
Water supplied by the irrigation system
Artificial lighting
...

Description of the control strategy
Considering that the prediction horizon is a period of one year (or the time corresponding to a harvest), and the short-term objectives are one day, the control problem is approached with a predictive type strategy.
On the one hand, the margins of the internal conditions (states) of the installation that guarantee the survival of the living elements (plants and animals, if any) will be established. Mainly, the following will be considered:
Internal temperature
Ambient humidity level
Secondly, a reference trajectory shall be established, initially with operational criteria based on experience, for the controllable states, 
Internal temperature
Ambient humidity
Illuminance
...
Design of reference setpoints
The daily values of the measurable system states, internal temperature and ambient humidity, are updated with the actual measurements and the corresponding reference trajectories are corrected.
The value of the non-measurable states will be updated with the simulation model and, similarly, new reference setpoints will be generated for them.
Design of action setpoints
First of all, the actuators and their possibilities must be identified:
Heater-heating system
Shade screen - shading screens
Artificial lighting - artificial lighting
Windows - windows
Irrigation pumps (?)
For each one of them, some setpoints will be parameterised according to their operation, for example, if the heater has only two positions, on and off, its setpoint will be a set of on-off pulses of a certain duration and power.
Design of simulation scenarios
In a first approximation, simulation scenarios will be generated semi-automatically using all possible combinations of the setpoints and simulated with the model. It is expected to be able to discard a good number of combinations that take the "survival" variables, i.e. temperature and humidity, out of the margins.
Definition of the cost function
With the results of the simulations, based on a sensitivity analysis between control variables and internal variables, a cost function will be defined based on maximising production (measured in mass of ripe tomatoes) and minimising operating costs (fuel, water, etc.) and environmental impact.
Approach to a control strategy
It is expected to be able to define an "optimal" setpoint for the long-term internal variables to be corrected each day according to the measured and estimated data, and the short-term control loops will be defined to establish the daily action setpoints to bring the variables to their reference setpoints. 


