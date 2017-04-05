
#include "Keyboard.h"

int x = 200;

int lastButtonState1 = LOW;   // the previous reading from the input pin
int buttonState1;

int SecondbuttonState1 = HIGH;         // the current state of the output pin

long lastDebounceTime = 0;  // the last time the output pin was toggled
long debounceDelay = 50;    // the debounce time; increase if the output flickers




const int button1 = 1;          // input pin for pushbutton
const int button2 = 2;          // input pin for pushbutton
const int button3 = 3;          // input pin for pushbutton
const int button4 = 4;          // input pin for pushbutton
const int button5 = 5;          // input pin for pushbutton
const int button6 = 6;          // input pin for pushbutton
const int button7 = 7;          // input pin for pushbutton
const int button8 = 8;          // input pin for pushbutton
const int button9 = 9;          // input pin for pushbutton
const int button10 = 10;          // input pin for pushbutton
const int button11 = 11;          // input pin for pushbutton
const int button12 = 12;          // input pin for pushbutton
const int button13 = 13;          // input pin for pushbutton


int previousButtonState1 = HIGH;   // for checking the state of a pushButton
int previousButtonState2 = HIGH;   // for checking the state of a pushButton
int previousButtonState3 = HIGH;   // for checking the state of a pushButton
int previousButtonState4 = HIGH;   // for checking the state of a pushButton
int previousButtonState5 = HIGH;   // for checking the state of a pushButton
int previousButtonState6 = HIGH;   // for checking the state of a pushButton
int previousButtonState7 = HIGH;   // for checking the state of a pushButton
int previousButtonState8 = HIGH;   // for checking the state of a pushButton
int previousButtonState9 = HIGH;   // for checking the state of a pushButton
int previousButtonState10 = HIGH;   // for checking the state of a pushButton
int previousButtonState11 = HIGH;   // for checking the state of a pushButton
int previousButtonState12 = HIGH;   // for checking the state of a pushButton
int previousButtonState13 = HIGH;   // for checking the state of a pushButton



void setup() {
  // make the pushButton pin an input:
  pinMode(button1, INPUT_PULLUP);
  pinMode(button2, INPUT_PULLUP);
  pinMode(button3, INPUT_PULLUP);
  pinMode(button4, INPUT_PULLUP);
  pinMode(button5, INPUT_PULLUP);
  pinMode(button6, INPUT_PULLUP);
  pinMode(button7, INPUT_PULLUP);
  pinMode(button8, INPUT_PULLUP);
  pinMode(button9, INPUT_PULLUP);
  pinMode(button10, INPUT_PULLUP);
  pinMode(button11, INPUT_PULLUP);
  pinMode(button12, INPUT_PULLUP);
  pinMode(button13, INPUT_PULLUP);

  // initialize control over the keyboard:
  Keyboard.begin();
}

void loop() {
  // read the pushbutton:
  int reading1 = digitalRead(button1);
  int reading2 = digitalRead(button2);
  int reading3 = digitalRead(button3);
  int reading4 = digitalRead(button4);
  int reading5 = digitalRead(button5);
  int reading6 = digitalRead(button6);
  int reading7 = digitalRead(button7);
  int reading8 = digitalRead(button8);
  int reading9 = digitalRead(button9);
  int reading10 = digitalRead(button10);
  int reading11 = digitalRead(button11);
  int reading12 = digitalRead(button12);
  int reading13 = digitalRead(button13);


  if (reading1 != lastButtonState1) {
    // reset the debouncing timer
    lastDebounceTime = millis();
      if (buttonState1 == HIGH) {
      SecondbuttonState1 = !SecondbuttonState1;
    }
  }
  if ((millis() - lastDebounceTime) > debounceDelay) {
    buttonState1 = reading1;
  }
if(SecondbuttonState1 == 1){
  Serial.println("one");
}

else{
Serial.println("two");
}


//  if ((buttonState2 != previousButtonState2)
//      && (buttonState2 == HIGH)) {
//    Keyboard.println("3");
//    delay(x);
//    Keyboard.println("4");
//  }
//
//  if ((buttonState3 != previousButtonState3)
//      && (buttonState3 == HIGH)) {
//    Keyboard.println("5");
//    delay(x);
//    Keyboard.println("6");
//  }
//
//  if ((buttonState4 != previousButtonState4)
//      && (buttonState4 == HIGH)) {
//    Keyboard.println("7");
//    delay(x);
//    Keyboard.println("8");
//  }
//
//  if ((buttonState5 != previousButtonState5)
//      && (buttonState5 == HIGH)) {
//    Keyboard.println("9");
//    delay(x);
//    Keyboard.println("q");
//  }
//
//  if ((buttonState6 != previousButtonState6)
//      && (buttonState6 == HIGH)) {
//    Keyboard.println("w");
//    delay(x);
//    Keyboard.println("e");
//  }
//
//  if ((buttonState7 != previousButtonState7)
//      && (buttonState7 == HIGH)) {
//    Keyboard.println("r");
//    delay(x);
//    Keyboard.println("t");
//  }
//
//  if ((buttonState8 != previousButtonState8)
//      && (buttonState8 == HIGH)) {
//    Keyboard.println("y");
//    delay(x);
//    Keyboard.println("u");
//  }
//
//  if ((buttonState9 != previousButtonState9)
//      && (buttonState9 == HIGH)) {
//    Keyboard.println("i");
//    delay(x);
//    Keyboard.println("o");
//  }
//
//  if ((buttonState10 != previousButtonState10)
//      && (buttonState10 == HIGH)) {
//    Keyboard.println("p");
//    delay(x);
//    Keyboard.println("a");
//  }
//
//  if ((buttonState11 != previousButtonState11)
//      && (buttonState11 == HIGH)) {
//    Keyboard.println("s");
//    delay(x);
//    Keyboard.println("d");
//  }
//
// 
// if ((buttonState12 != previousButtonState12)
//      && (buttonState12 == HIGH) && !but12) {
//    Keyboard.println("g");
//    delay(2000);
//    but12 = true;
//  }
//
//  
//  if ((buttonState12 != previousButtonState12)
//      && (buttonState12 == HIGH) && but12) {
//    Keyboard.println("f");
//    delay(2000);
//    but12 = false;
//  }

  //  if ((buttonState13 != previousButtonState13)
  //      && (buttonState13 == HIGH)) {

  previousButtonState1 = reading1;
  previousButtonState2 = reading2;
  previousButtonState3 = reading3;
  previousButtonState4 = reading4;
  previousButtonState5 = reading5;
  previousButtonState6 = reading6;
  previousButtonState7 = reading7;
  previousButtonState8 = reading8;
  previousButtonState9 = reading9;
  previousButtonState10 = reading10;
  previousButtonState11 = reading11;
  previousButtonState12 = reading12;
 // previousButtonState13 = buttonState13;

  // }
}

