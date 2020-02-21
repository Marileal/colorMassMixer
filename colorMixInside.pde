//based on code by Raven Kwok
//ravenkwok.com

ArrayList<Particle> pts;
boolean onPressed, showInstruction = true;
PFont f;

void setup() {
  fullScreen();
  smooth();
  colorMode(HSB);
  rectMode(CENTER);
  noStroke();

  pts = new ArrayList<Particle>();

  f = createFont("Calibri", 24, true);

  background(255);
}

void draw() {
  if (showInstruction) drawInstruction();

  if (onPressed) {
    for (int i = 0; i < 2; i++) {
      Particle newP = new Particle(mouseX, mouseY, i + pts.size(), i + pts.size());
      pts.add(newP);
    }
  }

  for (int i=pts.size()-1; i>-1; i--) {
    Particle p = pts.get(i);
    if (p.dead) {
      pts.remove(i);
    }else{
      p.update();
   	  p.display();
    }
  }
}

void drawInstruction(){
  background(255);
  fill(128);
  textAlign(CENTER, CENTER);
  textFont(f);
  textLeading(36);
  text("Drag and draw." + "\n" +
       "Press 'c' to clear the stage." + "\n"
       ,width*0.5, height*0.5);
}
