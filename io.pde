void mousePressed() {
  onPressed = true;
  if (showInstruction) {
    background(255);
    showInstruction = false;
  }
}

void mouseReleased() {
  onPressed = false;
}

void keyPressed() {
  if (key == 'c') {
    for (int i = pts.size()-1; i>-1; i--) {
      Particle p = pts.get(i);
      pts.remove(i);
    }
    background(255);
  }
  if (key == 's') saveFrame("massinhaDeCor######.png"); 
}
