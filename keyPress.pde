void keypressed() {

  //if (keyPressed) {
  println(val);
  if (val == 49) {
    if (WCRSrunning == false) {
      startTime = millis();
      WCRSstartTimeR = millis();
      WCRSrunning = true;
      step = 1;
      spinner = true;
      audio.play();
    }
  }

  if (val == 50) {
    if (WCRSrunning == true) {
      WCRSrunning = false;
      WCRSaccumTimeR = WCRSaccumTimeR + millis() - WCRSstartTimeR;
      spinner = false;
      counter = 0;
      step = 400; 
      audio.rewind();
      audio.pause();
    }
  }

  if (val == 51) {
    // println("im 3");
    if (Partnersrunning == false) {
      startTime = millis();
      PartnersstartTimeR = millis();
      Partnersrunning = true;
      audio.play();
      step = 1;
    }
  }

  if (val == 52) {
    println("im 4");
    if ( Partnersrunning == true) {
      Partnersrunning = false;
      PartnersaccumTimeR = PartnersaccumTimeR + millis() - PartnersstartTimeR;
       audio.rewind();
      audio.pause();
      step = 400;
    }
  }

  if (val == 53) {
    if (MHPrunning == false) {
      startTime = millis();
      MHPstartTimeR = millis();
      MHPrunning = true;
      audio.play();
      step = 1;
    }
  }

  if (val == 54) {
    if ( MHPrunning == true) {
      MHPrunning = false;
      MHPaccumTimeR = MHPaccumTimeR + millis() - MHPstartTimeR;
       audio.rewind();
      audio.pause();
      step = 400;
    }
  }

  if (val == 55) {
    if (Fuelrunning == false) {
      startTime = millis();
      FuelstartTimeR = millis();
      Fuelrunning = true;
      audio.play();
      step = 1;
    }
  }

  if (val == 56) {
    if ( Fuelrunning == true) {
      Fuelrunning = false;
      FuelaccumTimeR = FuelaccumTimeR + millis() - FuelstartTimeR;
        audio.rewind();
      audio.pause();
      step = 400;
    }
  }

  if (val == 57) {
    if (Transformrunning == false) {
      startTime = millis();
      TransformstartTimeR = millis();
      Transformrunning = true;
      audio.play();
      step = 1;
    }
  }

  if (val == 97) {
    if ( Transformrunning == true) {
      Transformrunning = false;
      TransformaccumTimeR = TransformaccumTimeR + millis() - TransformstartTimeR;
       audio.rewind();
      audio.pause();
      step = 400;
    }
  }

  if (val == 98) {
    if (Slicerunning == false) {
      startTime = millis();
      SlicestartTimeR = millis();
      Slicerunning = true;
      audio.play();
      step = 1;
    }
  }

  if (val == 99) {
    if ( Slicerunning == true) {
      Slicerunning = false;
      SliceaccumTimeR = SliceaccumTimeR + millis() - SlicestartTimeR;
     audio.rewind();
      audio.pause();
      step = 400;
    }
  }

  if (val == 100) {
    if (CBrunning == false) {
      startTime = millis();
      CBstartTimeR = millis();
      CBrunning = true;
      audio.play();
      step = 1;
    }
  }

  if (val == 101) {
    if ( CBrunning == true) {
      CBrunning = false;
      CBaccumTimeR = CBaccumTimeR + millis() - CBstartTimeR;
       audio.rewind();
      audio.pause();
      step = 400;
    }
  }

  if (val == 102) {
    if (DFrunning == false) {
      startTime = millis();
      DFstartTimeR = millis();
      DFrunning = true;
      audio.play();
      step = 1;
    }
  }

  if (val == 103) {
    if (DFrunning == true) {
      DFrunning = false;
      DFaccumTimeR = DFaccumTimeR + millis() - DFstartTimeR;
        audio.rewind();
      audio.pause();
      step = 400;
    }
  }

  if (val == 104) {
    if (Synergyrunning == false) {
      startTime = millis();
      SynergystartTimeR = millis();
      Synergyrunning = true;
      audio.play();
      step = 1;
    }
  }

  if (val == 105) {
    if ( Synergyrunning == true) {
      Synergyrunning = false;
      SynergyaccumTimeR = SynergyaccumTimeR + millis() - SynergystartTimeR;
        audio.rewind();
      audio.pause();
      step = 400;
    }
  }

  if (val == 106) {
    if (TPrunning == false) {
      startTime = millis();
      TPstartTimeR = millis();
      TPrunning = true;
      audio.play();
      step = 1;
    }
  }

  if (val == 107) {
    if ( TPrunning == true) {
      TPrunning = false;
      TPaccumTimeR =TPaccumTimeR + millis() -TPstartTimeR;
        audio.rewind();
      audio.pause();
      step = 400;
    }
  }

  if (val == 108) {
    if (Mischiefrunning == false) {
      startTime = millis();
      MischiefstartTimeR = millis();
      Mischiefrunning = true;
      audio.play();
      step = 1;
    }
  }

  if (val == 109) {
    if (Mischiefrunning == true) {
      Mischiefrunning = false;
      MischiefaccumTimeR =MischiefaccumTimeR + millis() -MischiefstartTimeR;
        audio.rewind();
      audio.pause();
      step = 400;
    }
  }

  if (val == 110) {
    if (ORCrunning == false) {
      startTime = millis();
      ORCstartTimeR = millis();
      ORCrunning = true;
      audio.play();
      step = 1;
    }
  }

  if (val == 111) {
    if (ORCrunning == true) {
      ORCrunning = false;
      ORCaccumTimeR = ORCaccumTimeR + millis() - ORCstartTimeR;
        audio.rewind();
      audio.pause();
      step = 400;
    }
  }

  //if ((key == 'm')) {
  //  startTime = millis();
  //  ORCstartTimeR = millis();
  //  ORCrunning = true;
  //  ORCa.play();
  //}
}
//}