int sensorPin0 = A0;
int sensorPin1 = A1;
int sensorPin2 = A2;
int sensorPin3 = A3;
int sensorPin4 = A4;
int sensorPin5 = A5;

int sensorValue0 = 0;
int sensorValue1 = 0;
int sensorValue2 = 0;
int sensorValue3 = 0;
int sensorValue4 = 0;
int sensorValue5 = 0;


void setup() {
  Serial.begin(9600);
}
void loop() {
  sensorValue0 = analogRead(sensorPin0);
  sensorValue1 = analogRead(sensorPin1);
  sensorValue2 = analogRead(sensorPin2);
  sensorValue3 = analogRead(sensorPin3);
  sensorValue4 = analogRead(sensorPin4);
  sensorValue5 = analogRead(sensorPin5);
  
  Serial.print(String(sensorValue0 + "," + sensorValue1 + "," + sensorValue2 + "," + sensorvalue3 + "," + sensorvalue4 + "," + sensorvalue5));

  Serial.println("--");
  
  delay(100);
}
