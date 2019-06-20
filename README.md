#  3 dollar Leap Motion

### These are the plans to build a 3 dollar leap motion

The circuit are based on a striped down arduino. that sends an encoded string of 6 datapoints from the light sensors(LDR) over serial. Data is read and analysed by wekinator and send through processing to convert gestures into computer commands. (autohotkey for PC and Applescript for MAC)

Alot of the prices are based on bulk prices on aliexpress. which means its gonna take some searching to find it this cheap, but it is definitely possible. (maybe even cheaper!)

| Name   |      Price      |
|----------|-------------|
| ATMEGA328P |  €1.07 | 
| 16.000MHZ | €0.04 | 
| 2 x 22pF | €0.08 |  
| USB -> TTL | €0.47 | 
| 6X  LDR  | €0.12 |  
| 7X RESISTOR  | €0.03 | 
| BUTTON  | €0.01 |  
| WIRE  | €0.10 |  
|  -  |  - |  
|  **casing**  |  - |  
| PETG  | €0.30 |  
| standoffs   | €0.20 |  
| screws   |  €0.24 |  
| - | - |
| GRAND TOTAL    |  €2.66  (3 $) |  

### How to install
1. Solder the circuit as shown on the schematic.
2. Connect it to your computer and upload the 'SENSORTOSERIAL.ino' file.
3. You can check with the serial monitor if everything is soldered correctly.
4. Open processing and run 'sendserialosc.pde'.
5. This will convert the serial data into osc that gets send to wekinator.
6. Open wekinator inputhelper so and open '10framebuffer.inputproj' this will make it look at a burst instead of 1 moment in time. wekinator input helper sends osc data to port 6449
7. Open 60inputs1output in Wekinator with port 6449. 
8. Use wekinator to teach the leap gestures.
9. Open 'osctoapplescript.pde' with processing. This will convert the taught gestures into a openable applescript program.
10. The setup should work now.
