import netP5.*;
import oscP5.*;

  
OscP5 oscP5;
NetAddress myRemoteLocation;

void setup() {
  size(100,100);
  background(0,0,0);
  oscP5 = new OscP5(this,12000);
   
  //launch("/Users/damnub/Desktop/left.app");
    
  myRemoteLocation = new NetAddress("127.0.0.1",12000);

}

void draw() {

}

void oscEvent(OscMessage theOscMessage) {
  /* print the address pattern and the typetag of the received OscMessage */
 // print("### received an osc message.");
 // print(" addrpattern: "+theOscMessage.addrPattern());
 // println(" typetag: "+theOscMessage.typetag());
 println(theOscMessage.addrPattern() + " " + theOscMessage.typetag());
 //println(theOscMessage.get(0));
 
  if (theOscMessage.checkAddrPattern("/wek/outputs") == true) {
    println(theOscMessage.get(0).floatValue());
    
    switch( (int) theOscMessage.get(0).floatValue()) {
    case 1: 
        launch("/Users/damnub/Desktop/gestures/left.app");
    break;
    case 2:
        launch("/Users/damnub/Desktop/gestures/right2.app");
    break;
    case 3:
        launch("/Users/damnub/Desktop/gestures/soundlow.app");
    break;
    case 4:
        launch("/Users/damnub/Desktop/gestures/soundhigh.app");
    break;
    }
  }
}

void keyPressed() {
  if (key == CODED) {
    if (keyCode == UP) {
      launch("/Users/damnub/Desktop/gestures/soundhigh.app");
    } else if (keyCode == DOWN) {
       launch("/Users/damnub/Desktop/gestures/soundlow.app");
    } else if (keyCode == LEFT) {
       launch("/Users/damnub/Desktop/gestures/left.app");
    } else if (keyCode == RIGHT) {
       launch("/Users/damnub/Desktop/gestures/right2.app");
    } 
  }
}