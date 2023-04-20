/* =========================================================
 * ====                   WARNING                        ===
 * =========================================================
 * The code in this tab has been generated from the GUI form
 * designer and care should be taken when editing this file.
 * Only add/edit code inside the event handlers i.e. only
 * use lines between the matching comment tags. e.g.

 void myBtnEvents(GButton button) { //_CODE_:button1:12356:
     // It is safe to enter your event code here  
 } //_CODE_:button1:12356:
 
 * Do not rename this tab!
 * =========================================================
 */

public void knob1_turn2(GKnob source, GEvent event) { //_CODE_:knob:613067:
  String knobData = "1:" + knob.getValueI();
  println(knobData);
  connection.write(knobData);
} //_CODE_:knob:613067:

public void button1_click1(GButton source, GEvent event) { //_CODE_:button1:223142:
  connection.write("2:0");
} //_CODE_:button1:223142:



// Create all the GUI controls. 
// autogenerated do not edit
public void createGUI(){
  G4P.messagesEnabled(false);
  G4P.setGlobalColorScheme(GCScheme.BLUE_SCHEME);
  G4P.setMouseOverEnabled(false);
  surface.setTitle("Sketch Window");
  knob = new GKnob(this, 15, 75, 60, 60, 0.8);
  knob.setTurnRange(110, 70);
  knob.setTurnMode(GKnob.CTRL_HORIZONTAL);
  knob.setSensitivity(1);
  knob.setShowArcOnly(false);
  knob.setOverArcOnly(false);
  knob.setIncludeOverBezel(false);
  knob.setShowTrack(true);
  knob.setLimits(100.0, 0.0, 254.0);
  knob.setShowTicks(true);
  knob.setOpaque(false);
  knob.addEventHandler(this, "knob1_turn2");
  R = new GLabel(this, 8, 54, 80, 20);
  R.setTextAlign(GAlign.CENTER, GAlign.MIDDLE);
  R.setText("RESPONSE");
  R.setOpaque(false);
  button1 = new GButton(this, 7, 10, 80, 30);
  button1.setText("POWER");
  button1.addEventHandler(this, "button1_click1");
}

// Variable declarations 
// autogenerated do not edit
GKnob knob; 
GLabel R; 
GButton button1; 