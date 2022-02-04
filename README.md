# Split-Hopkinson-Pressure-Bar-Analysis-Tool
SHPB PROCESSING / Split Hopkinson Pressure Bar Analysis Tool application is used for data interpretation of the signals obtained from experiments conducted on a Split Hopkinson Pressure Bar setup for high velocity impact tests.


### Voltage to Strain factor conversion
#### (Vo/Vi)=(e* Gain* BF* GF)/4

Vo = Output voltages from gauge/bridge (Variable term)<br/>
Vi = Input voltage to the bridge (Fixed from voltage supply)<br/>
Gain = set in the voltage amplifier, multiplication factor to the output voltage(Based on amplifier setup)<br/>
BF = Bridge factor; Longitudinal gauge=1; Lateral gauge=Poisson's ratio (Based on bars and gauge orientation)<br/>
GF= Gauge factor; based on the gauges used and given by the manufacturer = 2 ()<br/>
e = Output stain <br/>

##### e = (Vo* 4)/(Vi* Gain* BF* GF)

### Example Calculation (for the amplifier design mentioned)
Vi=5V; Gain=100; BF=2.6; GF=2;
#### e = 1.53e-3 *Vo
 (Use the appropriate values of inputs based on the design of strain gauge amplifier and the gauges used)<br/>
 (Note: The following values were obtained based on the strain gauge amplifier design and the full bridge configuration of the strain gauges mounted on the bars)<br/>
 (Find the amplifier design: https://sites.google.com/view/edgarmendonca/projects/multi-channel-dynamic-strain-gauge-amplifier)<br/>
 (Find the Hopkinson Bar Design and Setup:https://sites.google.com/view/edgarmendonca/research/split-hopkinson-pressure-bar-design-testing-and-applications)<br/>
 (Find the 3D model of the setup:"https://myhub.autodesk360.com/ue2b1d0d2/shares/public/SH9285eQTcf875d3c5394ac0d8acc0fc1a51?mode=embed" )<br/>

# Setup
![image](https://user-images.githubusercontent.com/67676399/149070512-d66e211e-7239-4d64-bd10-58723fddadab.png)
![SHPB SETUP](https://user-images.githubusercontent.com/67676399/149882290-ee686e5f-2beb-47e4-aec5-9b008c2a28cd.png)

# Tutorial
https://youtu.be/0fWdUWLbv9A


# Version: 3.1 
Last updated: **04/02/2022** <br/>
Total version: **4**
