import netP5.*;
import oscP5.*;
import processing.serial.*;

OscP5 oscp5;
NetAddress dest;

int OSC_SEND_TO = 6448 ;
String destination = "127.0.0.1";

Serial myPort;  // Create object from Serial class
String val;      // Data received from the serial port
String[] vars = {"","","","","",""};

void setup() 
{

  println(Serial.list());
  String portName = Serial.list()[2];
  myPort = new Serial(this, portName, 9600); 
  
  oscp5 = new OscP5(this, 54321);
  dest = new NetAddress(destination, OSC_SEND_TO);
}

void draw()
{
  if ( myPort.available() > 0) {
    val = myPort.readString();         
  }
  vars = split(val, ",");
  println(vars);
  
    OscMessage msg = new OscMessage("/wek/inputs");
    
    msg.add(float(vars[0])); 
    msg.add(float(vars[1]));
    msg.add(float(vars[2]));
    msg.add(float(vars[3]));
    msg.add(float(vars[4]));
    msg.add(float(vars[5]));
    
    //msg.add(Integer.parseInt(vars[0])); 
    //msg.add(Integer.parseInt(vars[1]));
    //msg.add(Integer.parseInt(vars[2]));
    //msg.add(Integer.parseInt(vars[3]));
    //msg.add(Integer.parseInt(vars[4]));
    //msg.add(Integer.parseInt(vars[5]));
    
    oscp5.send(msg, dest);
}