# Split-Hopkinson-Pressure-Bar-Analysis-Tool
SHPB PROCESSING / Split Hopkinson Pressure Bar Analysis Tool application is used for data interpretation of the signals obtained from experiments conducted on a Split Hopkinson Pressure Bar setup for high velocity impact tests.


### Voltage to Strain factor conversion
#### (Vo/Vi)=(e* Gain* BF* GF)/4

Vo = Output voltages from gauge/bridge (Variable term)<br/>
Vi = Input voltage to the bridge (Fixed from voltage supply)<br/>
Gain = set in the voltage amplifier, multiplication factor to the output voltage(Fixed resistor)<br/>
BF = Bridge factor; Longitudinal gauge=1; Lateral gauge=Poisson's ratio (Based on)<br/>
GF= Gauge factor; based on the gauges used and given by the manufacturer = 2<br/>
e = Output stain <br/>

##### e = (Vo* 4)/(Vi* Gain* BF* GF)

#### Example Calculation (for the amplifier design mentioned)
Vi=5V <br/>
Gain=100 <br/>
BF=2.6 <br/>
GF=2 <br/>
##### e = 1.53e-3 *Vo
 (Use the appropriate values of inputs based on the design of strain gauge amplifier and the gauges used)<br/>
 (Note: The following values were obtained based on the strain gauge amplifier design and the full bridge configuration of the strain gauges mounted on the bars)<br/>
 (Find the amplifier design: https://sites.google.com/view/edgarmendonca/projects/multi-channel-dynamic-strain-gauge-amplifier)<br/>
 (Find the Hopkinson Bar Design and Setup:https://sites.google.com/view/edgarmendonca/research/split-hopkinson-pressure-bar-design-testing-and-applications)<br/>
 (Find the 3D model of the setup:"https://myhub.autodesk360.com/ue2b1d0d2/shares/public/SH9285eQTcf875d3c5394ac0d8acc0fc1a51?mode=embed" )<br/>
 

# Version: 3.0 
Last updated: **03/01/2022**
Total version: **3**

# Setup
![image](https://user-images.githubusercontent.com/67676399/149070512-d66e211e-7239-4d64-bd10-58723fddadab.png)
![image](https://user-images.githubusercontent.com/67676399/147903996-0052e50b-d00f-45ed-9f1b-28779ef1a72a.png)
