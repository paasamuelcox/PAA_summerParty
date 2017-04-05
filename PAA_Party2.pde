import processing.serial.*;
import ddf.minim.*;

Serial myPort;  // Create object from Serial class
int val;     // Data received from the serial port

PFont myFont;

float step;
float angle;

int textW = 1550;

Minim minim;

AudioPlayer audio;

float x_sec, x_min, x_heu;
float y_sec, y_min, y_heu;
float incr_60 = -TWO_PI/60;
float incr_24 = -TWO_PI/12;
color col = #2F3440;

boolean spinner = true;

int counter;

int startTime;   // time when this interval started
int dMins, dSecs, Log;
int displayTime;   // value to display on the clock face
int accumTime;   // total time accumulated in previous intervals

PImage wheel, background;

int WCRSdMinsR, WCRSdSecsR, WCRSLogR, WCRSaccumTimeR, WCRSstartTimeR, WCRSdisplayTimeR;
boolean WCRSrunning = false;

int PartnersdMinsR, PartnersdSecsR, PartnersLogR, PartnersaccumTimeR, PartnersstartTimeR, PartnersdisplayTimeR;
boolean Partnersrunning = false;

int MHPdMinsR, MHPdSecsR, MHPLogR, MHPaccumTimeR, MHPstartTimeR, MHPdisplayTimeR;
boolean MHPrunning = false;

int FueldMinsR, FueldSecsR, FuelLogR, FuelaccumTimeR, FuelstartTimeR, FueldisplayTimeR;
boolean Fuelrunning = false;

int TransformdMinsR, TransformdSecsR, TransformLogR, TransformaccumTimeR, TransformstartTimeR, TransformdisplayTimeR;
boolean Transformrunning = false;

int SlicedMinsR, SlicedSecsR, SliceLogR, SliceaccumTimeR, SlicestartTimeR, SlicedisplayTimeR;
boolean Slicerunning = false;

int CBdMinsR, CBdSecsR, CBLogR, CBaccumTimeR, CBstartTimeR, CBdisplayTimeR;
boolean CBrunning = false;

int DFdMinsR, DFdSecsR, DFLogR, DFaccumTimeR, DFstartTimeR, DFdisplayTimeR;
boolean DFrunning = false;

int SynergydMinsR, SynergydSecsR, SynergyLogR, SynergyaccumTimeR, SynergystartTimeR, SynergydisplayTimeR;
boolean Synergyrunning = false;

int TPdMinsR, TPdSecsR, TPLogR, TPaccumTimeR, TPstartTimeR, TPdisplayTimeR;
boolean TPrunning = false;

int MischiefdMinsR, MischiefdSecsR, MischiefLogR, MischiefaccumTimeR, MischiefstartTimeR, MischiefdisplayTimeR;
boolean Mischiefrunning = false;

int ORCdMinsR, ORCdSecsR, ORCLogR, ORCaccumTimeR, ORCstartTimeR, ORCdisplayTimeR;
boolean ORCrunning = false;

////

//int dMinsR, dSecsR, LogR, accumTimeR, startTimeR,displayTimeR;
//boolean running = false;

////
void setup() {

  String portName = Serial.list()[1]; //change the 0 to a 1 or 2 etc. to match your port
  myPort = new Serial(this, portName, 9600); 

  // size(1100, 440);
  fullScreen(1);
  smooth();
  frameRate(30);

  textSize(50);

  fill(172, 49, 36);

  wheel = loadImage("wheel_small.png");
  background = loadImage("background2.jpg");
  step = 1;
  minim = new Minim(this);
  audio = minim.loadFile("audio.mp3");
  myFont = createFont("font.ttf", 70);
  textFont(myFont);
}

void draw() {

  image(background, 0, 0);

  if ( myPort.available() > 0) {  // If data is available,
    val = myPort.read();         // read it and store it in val
    println(val);
  }

  keypressed();

  //background(#2F3440);

  // println(accumTime);

  //gernaral timer

  dSecs = (displayTime / 1000) % 60;
  dMins = (displayTime / 1000 / 60) % 60;

  // WCRS

  if (WCRSrunning == true) {
    displayTime = accumTime + millis() - startTime;
    WCRSdisplayTimeR = WCRSaccumTimeR + millis() - WCRSstartTimeR;
    angle = angle+0.9/step;
  }

  WCRSdSecsR = (WCRSdisplayTimeR / 1000) % 60;
  WCRSdMinsR = (WCRSdisplayTimeR / 1000 / 60) % 60;

  // PAA


  if (Partnersrunning == true) {
    displayTime = accumTime + millis() - startTime;
    PartnersdisplayTimeR = PartnersaccumTimeR + millis() - PartnersstartTimeR;
    angle = angle+0.9/step;
  }

  PartnersdSecsR = (PartnersdisplayTimeR / 1000) % 60;
  PartnersdMinsR = (PartnersdisplayTimeR / 1000 / 60) % 60;

  //MHP

  if (MHPrunning == true) {
    displayTime = accumTime + millis() - startTime;
    MHPdisplayTimeR = MHPaccumTimeR + millis() - MHPstartTimeR;
    angle = angle+0.9/step;
  }

  MHPdSecsR = (MHPdisplayTimeR / 1000) % 60;
  MHPdMinsR = (MHPdisplayTimeR / 1000 / 60) % 60;


  //Fuel

  if (Fuelrunning == true) {
    displayTime = accumTime + millis() - startTime;
    FueldisplayTimeR = FuelaccumTimeR + millis() - FuelstartTimeR;
    angle = angle+0.9/step;
  }

  FueldSecsR = (FueldisplayTimeR / 1000) % 60;
  FueldMinsR = (FueldisplayTimeR / 1000 / 60) % 60;


  //Transform

  if (Transformrunning == true) {
    displayTime = accumTime + millis() - startTime;
    TransformdisplayTimeR = TransformaccumTimeR + millis() - TransformstartTimeR;
    angle = angle+0.9/step;
  }

  TransformdSecsR = (TransformdisplayTimeR / 1000) % 60;
  TransformdMinsR = (TransformdisplayTimeR / 1000 / 60) % 60;


  //Slice

  if (Slicerunning == true) {
    displayTime = accumTime + millis() - startTime;
    SlicedisplayTimeR = SliceaccumTimeR + millis() - SlicestartTimeR;
    angle = angle+0.9/step;
  }

  SlicedSecsR = (SlicedisplayTimeR / 1000) % 60;
  SlicedMinsR = (SlicedisplayTimeR / 1000 / 60) % 60;


  //DF

  if (DFrunning == true) {
    displayTime = accumTime + millis() - startTime;
    DFdisplayTimeR = DFaccumTimeR + millis() - DFstartTimeR;
    angle = angle+0.9/step;
  }

  DFdSecsR = (DFdisplayTimeR / 1000) % 60;
  DFdMinsR = (DFdisplayTimeR / 1000 / 60) % 60;


  //CB

  if (CBrunning == true) {
    displayTime = accumTime + millis() - startTime;
    CBdisplayTimeR = CBaccumTimeR + millis() - CBstartTimeR;
    angle = angle+0.9/step;
  }

  CBdSecsR = (CBdisplayTimeR / 1000) % 60;
  CBdMinsR = (CBdisplayTimeR / 1000 / 60) % 60;


  // Synergy

  if (Synergyrunning == true) {
    displayTime = accumTime + millis() - startTime;
    SynergydisplayTimeR = SynergyaccumTimeR + millis() - SynergystartTimeR;
    angle = angle+0.9/step;
  }

  SynergydSecsR = (SynergydisplayTimeR / 1000) % 60;
  SynergydMinsR = (SynergydisplayTimeR / 1000 / 60) % 60;


  //TP

  if (TPrunning == true) {
    displayTime = accumTime + millis() - startTime;
    TPdisplayTimeR = TPaccumTimeR + millis() - TPstartTimeR;
    angle = angle+0.9/step;
  }

  TPdSecsR = (TPdisplayTimeR / 1000) % 60;
  TPdMinsR = (TPdisplayTimeR / 1000 / 60) % 60;


  //Mischief

  if (Mischiefrunning == true) {
    displayTime = accumTime + millis() - startTime;
    MischiefdisplayTimeR = MischiefaccumTimeR + millis() - MischiefstartTimeR;
    angle = angle+0.9/step;
  }

  MischiefdSecsR = (MischiefdisplayTimeR / 1000) % 60;
  MischiefdMinsR = (MischiefdisplayTimeR / 1000 / 60) % 60;


  //ORC

  if (ORCrunning == true) {
    displayTime = accumTime + millis() - startTime;
    ORCdisplayTimeR = ORCaccumTimeR + millis() - ORCstartTimeR;
    angle = angle+0.9/step;
  }

  ORCdSecsR = (ORCdisplayTimeR / 1000) % 60;
  ORCdMinsR = (ORCdisplayTimeR / 1000 / 60) % 60;





  // textAlign(RIGHT);

  myFont = createFont("font.ttf", 200);
  textFont(myFont);  

  text(nf(dMins, 2) + ":" + nf(dSecs, 2), width/2.9, height/2);



  textAlign(LEFT);


  myFont = createFont("font.ttf", 70);
  textFont(myFont);  

  text(nf(WCRSdMinsR, 2) + ":" + nf(WCRSdSecsR, 2), textW, 900);


  text(nf(PartnersdMinsR, 2) + ":" + nf(PartnersdSecsR, 2), 
    textW, 750);


  text(nf(MHPdMinsR, 2) + ":" + nf(MHPdSecsR, 2), 
    textW, 445);

  //75 px

  text(nf(FueldMinsR, 2) + ":" + nf(FueldSecsR, 2), 
    textW, 370);


  text(nf(TransformdMinsR, 2) + ":" + nf(TransformdSecsR, 2), 
    textW, 675);


  text(nf(SlicedMinsR, 2) + ":" + nf(SlicedSecsR, 2), 
    textW, 600);


  text(nf(CBdMinsR, 2) + ":" + nf(CBdSecsR, 2), 
    textW, 140);


  text(nf(DFdMinsR, 2) + ":" + nf(DFdSecsR, 2), 
    textW, 290);


  text(nf(SynergydMinsR, 2) + ":" + nf(SynergydSecsR, 2), 
    textW, 825);


  text(nf(TPdMinsR, 2) + ":" + nf(TPdSecsR, 2), 
    textW, 215);


  text(nf(MischiefdMinsR, 2) + ":" + nf(MischiefdSecsR, 2), 
    textW, 525);



  text(nf(ORCdMinsR, 2) + ":" + nf(ORCdSecsR, 2), 
    textW, 980);

  //  translate(width/5.2, height/2.1);
  // int secondes = counter;

  //  if (spinner) {
  //    counter++;
  //    counter++;
  //  } else {
  //  }

  //  if (counter > 60) {
  //    counter = 0;
  //  }
  //translate(width/4, height/4);

  translate(300, 500);
  rotate(angle); 
  // image(wheel, -wheel.width/4, -wheel.height/, 400, 400);
  image(wheel, -wheel.width/2, -wheel.height/2);


  //for (int i = 0; i<60; i++) {
  //  strokeWeight(15);
  //  if (i == secondes) {
  //    //fill(0);
  //    stroke(col);
  //  } else {
  //    //fill(255);
  //    stroke(#F8CA4D);
  //  }
  //  x_sec = sin(PI+i*incr_60)*200;
  //  y_sec = cos(PI+i*incr_60)*200;
  //  point(x_sec, y_sec);
  //}
}