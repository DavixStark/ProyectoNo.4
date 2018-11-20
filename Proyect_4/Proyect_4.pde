import gab.opencv.*;
import processing.video.*;
import java.awt.Rectangle;

OpenCV opencv;
Rectangle[] faces;
Capture cam;
cara cara;

int PX, PY, P=10;
int pantalla;
color C[];
PImage imagen;

void setup() {
  size(640,480);
  cam = new Capture(this, 640, 480);
  cam.start();
  opencv = new OpenCV(this, cam);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  
  faces = opencv.detect();
  cara = new cara();
  PX = width/P;
  PY = height/P;
  C = new color[PX * PY];
  imagen = loadImage("568CA941-325E-4470-946A-B61E4895FEDD.png");
}

void draw() {
  instrucciones();
}

void captureEvent(Capture c) {
  c.read();
}
