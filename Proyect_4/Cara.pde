class cara{
  
  cara(){
  }
  
  void c(){
  opencv.loadImage(cam);
  image(cam, 0, 0);
  opencv.loadCascade(OpenCV.CASCADE_FRONTALFACE);  
  faces = opencv.detect();
  }
  
  void dibujo(){
    switch(key){
    case '1':
    for (int o = 0; o < faces.length; o++) {
      if(faces[o].x < width && faces[o].y < height){
          cam.read();
          cam.loadPixels();
          int num = 0;
          for (int j = 0; j < PY; j++) {
            for (int i = 0; i < PX; i++) {
              C[num] = cam.get(i*P, j*P);
              num++;
            }
          }
        }
        
        background(255);
        for (int j = 0; j < PY; j++) {
          for (int i = 0; i < PX; i++) {
            fill(C[j*PX + i]);
            text("1",i*P, j*P);
          }
        }
      }
      break;
      
    case '2':
    for (int o = 0; o < faces.length; o++) {
      if(faces[o].x < width && faces[o].y < height){
          cam.read();
          cam.loadPixels();
          int num = 0;
          for (int j = 0; j < PY; j++) {
            for (int i = 0; i < PX; i++) {
              C[num] = cam.get(i*P, j*P);
              num++;
            }
          }
        }
        
        background(255);
        for (int j = 0; j < PY; j++) {
          for (int i = 0; i < PX; i++) {
            fill(C[j*PX + i]);
            text("2",i*P, j*P);
          }
        }
      }
      break;
      
    case '3':
    for (int o = 0; o < faces.length; o++) {
      if(faces[o].x < width && faces[o].y < height){
          cam.read();
          cam.loadPixels();
          int num = 0;
          for (int j = 0; j < PY; j++) {
            for (int i = 0; i < PX; i++) {
              C[num] = cam.get(i*P, j*P);
              num++;
            }
          }
        }
        
        background(255);
        for (int j = 0; j < PY; j++) {
          for (int i = 0; i < PX; i++) {
            fill(C[j*PX + i]);
            text("3",i*P, j*P);
          }
        }
      }
      break;
      
    case 't':
    float N = random(0,3);
    for (int o = 0; o < faces.length; o++) {
      if(faces[o].x < width && faces[o].y < height){
          cam.read();
          cam.loadPixels();
          int num = 0;
          for (int j = 0; j < PY; j++) {
            for (int i = 0; i < PX; i++) {
              C[num] = cam.get(i*P, j*P);
              num++;
            }
          }
        }
        
        background(255);
        for (int j = 0; j < PY; j++) {
          for (int i = 0; i < PX; i++) {
            fill(C[j*PX + i]);
            text(random(N),i*P, j*P);
          }
        }
      }
      break;
      
      case 'i':
      
    for (int i = 0; i < faces.length; i++) {
      if(faces[i].x < width && faces[i].y < height){
          cam.read();
          cam.loadPixels();
          pushMatrix();
          scale(0.8);
          image(imagen,faces[i].x, faces[i].y);
          popMatrix();
        }
      }
      break;
    }
    }
  }
