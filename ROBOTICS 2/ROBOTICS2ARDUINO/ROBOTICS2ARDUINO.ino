#include <MCP4151.h>
#include <Servo.h>

Servo myServo;

#define CS     10
#define MOSI   11
#define MISO   12
#define SCK    13
#define SERVO_PIN 7

MCP4151 pot(CS, MOSI, MISO, SCK);
String action;
int resistance = 50; 
char separator = ':';
char* strtokIndx; // this is used by strtok() as an index

void setup() {
  pot.writeValue(0);
  Serial.begin(9600);
  myServo.attach(SERVO_PIN);
  myServo.write(0); // set initial angle to 0 degrees
}

void loop() {
  if (Serial.available() > 0)
  {
    //GET INPUT DATA
    action = Serial.read();
    char charArray[action.length()+1];
    action.toCharArray(charArray, action.length()+1);

    // get the first token
    strtokIndx = strtok(charArray, &separator);

    // assign the first token to variable a
    String newAction = strtokIndx;

    // get the second token
    strtokIndx = strtok(NULL, &separator);

    // assign the second token to variable b
    String value = strtokIndx;

    //USE INPUT DATA
    if(newAction.toInt() == 1)
    {
      Serial.println(newAction);
      Serial.println(value);
      pot.writeValue(value.toInt());
    }
    if(newAction.toInt() == 2)
    {
      Serial.println(newAction);
      Serial.println(value);
      // myServo.write(180); // set angle to 180 degrees
      // delay(1000); // wait for 1 second
      // myServo.write(0); // set angle back to 0 degrees
      // delay(1000); // wait for 1 second
    }
    
    Serial.println(pot.getCurValue());
    delay(100);
  }
}
