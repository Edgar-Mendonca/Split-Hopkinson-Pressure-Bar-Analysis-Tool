# Split-Hopkinson-Pressure-Bar-Analysis-Tool
SHPB PROCESSING / Split Hopkinson Pressure Bar Analysis Tool application is used for data interpretation of the signals obtained from experiments conducted on a Split Hopkinson Pressure Bar setup for high velocity impact tests.


### Voltage to Strain for the example data
#### (Vo/Vi)=(e*Gain*BF*GF)/4

Vo = Output voltages from gauge/bridge (Variable term)
Vi = Input voltage to the bridge = 5V
Gain = set in the voltage amplifier, multiplication factor to the output voltage = 100
BF = Bridge factor; Longitudinal gauge=1; Lateral gauge=Poisson's ratio=0.3;
GF= Gauge factor; based on the gauges used and given by the manufacturer = 2;
e = Output stain

##### e = (Vo*4)/(Vi*Gain*GF*BF)
##### e = 1.53e-3*Vo

# Version: 2.0 
Last updated: **11/11/2021**
Total version: **2**
