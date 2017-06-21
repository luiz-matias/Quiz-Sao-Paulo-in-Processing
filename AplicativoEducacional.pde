import processing.video.*;
import processing.sound.*;

Movie myMovie;
SoundFile musica;
int [][] Quiz = new int [10][5]; //dez perguntas com cinco alternativas cada

int [][] Gabarito = {  {0,0,0,0,1},// E
                       {0,0,1,0,0},// C
                       {0,0,1,0,0},// C
                       {0,0,0,1,0},// D
                       {0,1,0,0,0},// B
                       {0,0,0,1,0},// D
                       {0,0,0,1,0},// D
                       {1,0,0,0,0},// A
                       {0,0,0,1,0},// D
                       {0,0,1,0,0} // C
                                    };
int acertos = 0;
float AlturaPadrao;
String texto;
boolean primeiroacesso = true;
PImage imagem, ampliaricon, fecharicon;
PFont fontTitle, fontSubTitle, fontText;
float largura, altura;
int telaAtual, telaorigem;

void setup() {
  size(1280, 720);
  background(255);
  frameRate(30);
  noStroke();
  musica = new SoundFile(this, "cheiademanias.mp3");
  musica.loop();
  AlturaPadrao = width*0.8;
  ampliaricon = loadImage("ampliarwithtext.png");
  fecharicon = loadImage("close.png");
  telaAtual = 1;
  fontTitle = createFont("Aller_Rg.ttf", 72);
  fontSubTitle = createFont("Aller_Lt.ttf", 48);
  fontText = createFont("Aller_Lt.ttf", 16);
  
}

void draw() { 
  switch(telaAtual){
    case 1:
      tela1();
    break;
    case 2:
      tela2();
    break;
    case 3:
      tela3();
    break;
    case 4:
      tela4();
    break;
    case 5:
      tela5();
    break;
    case 6:
      tela6();
    break;
    case 7:
      tela7();
    break;
    case 8:
      tela8();
    break;
    case 9:
      tela9();
    break;
    case 10:
      tela10();
    break;
    case 11:
      tela11();
    break;
    case 12:
      tela12();
    break;
    case 13:
      tela13();
    break;
    case 14:
      tela14();
    break;
    case 15:
      tela15();
    break;
    case 16:
      tela16();
    break;
    case 17:
      tela17();
    break;
    case 18:
      tela18();
    break;
  }
}

// Chamada para executar vídeos
void movieEvent(Movie m) {
  m.read();
}

// Chamada em toda ação de click
void mouseClicked(){
  switch(telaAtual){
    case 1: //tela 1
      if((mouseX > 0 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 2;
        myMovie.stop();
        primeiroacesso = true;
      }
    break;
    case 2: //tela 2
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual= 3;
        primeiroacesso= true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 1;
        primeiroacesso = true;
      }
      if((mouseX > ((width*0.85)-150) && mouseX < ((width*0.85)+150)) && ((mouseY > (height/3)-150) && (mouseY < (height/3)+150))){
        primeiroacesso = true;
        ampliarimagem("saopaulowallpaper.jpg", 2);
      }
    break;
    case 3: //tela 3
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual= 4;
        primeiroacesso= true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 2;
        primeiroacesso = true;
      }
    break;
    case 4: //tela 4
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual= 5;
        primeiroacesso= true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 3;
        primeiroacesso = true;
      }
    break;
    case 5: //tela 5
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual= 6;
        primeiroacesso= true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 4;
        primeiroacesso = true;
      }
    break;
    case 6: //tela 6
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual= 7; //ir pra tela 7 quando criar
        primeiroacesso= true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 5;
        primeiroacesso = true;
      }
    break;
    case 7:
      if((mouseX > 0 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 8;
        primeiroacesso = true;
        myMovie.stop();
      }
    break;
    case 8: //tela 8 -- questão 1
      if((mouseX > 0 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 9;
        primeiroacesso = true;
      }
      
      
      if((mouseX > 0 && mouseX < width*0.2) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[0][0] = 1;
        Quiz[0][1] = 0;
        Quiz[0][2] = 0;
        Quiz[0][3] = 0;
        Quiz[0][4] = 0;
      }
      if((mouseX > width*0.2 && mouseX < width*0.4) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[0][0] = 0;
        Quiz[0][1] = 1;
        Quiz[0][2] = 0;
        Quiz[0][3] = 0;
        Quiz[0][4] = 0;
      }
      if((mouseX > width*0.4 && mouseX < width*0.6) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[0][0] = 0;
        Quiz[0][1] = 0;
        Quiz[0][2] = 1;
        Quiz[0][3] = 0;
        Quiz[0][4] = 0;
      }
      if((mouseX > width*0.6 && mouseX < width*0.8) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[0][0] = 0;
        Quiz[0][1] = 0;
        Quiz[0][2] = 0;
        Quiz[0][3] = 1;
        Quiz[0][4] = 0;
      }
      if((mouseX > width*0.8 && mouseX < width) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[0][0] = 0;
        Quiz[0][1] = 0;
        Quiz[0][2] = 0;
        Quiz[0][3] = 0;
        Quiz[0][4] = 1;
      }
      
    break;
    case 9: //tela 9 -- questão 2
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 10;
        primeiroacesso = true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 8;
        primeiroacesso = true;
      }
      
      
      if((mouseX > 0 && mouseX < width*0.2) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[1][0] = 1;
        Quiz[1][1] = 0;
        Quiz[1][2] = 0;
        Quiz[1][3] = 0;
        Quiz[1][4] = 0;
      }
      if((mouseX > width*0.2 && mouseX < width*0.4) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[1][0] = 0;
        Quiz[1][1] = 1;
        Quiz[1][2] = 0;
        Quiz[1][3] = 0;
        Quiz[1][4] = 0;
      }
      if((mouseX > width*0.4 && mouseX < width*0.6) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[1][0] = 0;
        Quiz[1][1] = 0;
        Quiz[1][2] = 1;
        Quiz[1][3] = 0;
        Quiz[1][4] = 0;
      }
      if((mouseX > width*0.6 && mouseX < width*0.8) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[1][0] = 0;
        Quiz[1][1] = 0;
        Quiz[1][2] = 0;
        Quiz[1][3] = 1;
        Quiz[1][4] = 0;
      }
      if((mouseX > width*0.8 && mouseX < width) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[1][0] = 0;
        Quiz[1][1] = 0;
        Quiz[1][2] = 0;
        Quiz[1][3] = 0;
        Quiz[1][4] = 1;
      }
      
    break;
    case 10: //tela 10 -- questão 3
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 11;
        primeiroacesso = true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 9;
        primeiroacesso = true;
      }
      
      
      if((mouseX > 0 && mouseX < width*0.2) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[2][0] = 1;
        Quiz[2][1] = 0;
        Quiz[2][2] = 0;
        Quiz[2][3] = 0;
        Quiz[2][4] = 0;
      }
      if((mouseX > width*0.2 && mouseX < width*0.4) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[2][0] = 0;
        Quiz[2][1] = 1;
        Quiz[2][2] = 0;
        Quiz[2][3] = 0;
        Quiz[2][4] = 0;
      }
      if((mouseX > width*0.4 && mouseX < width*0.6) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[2][0] = 0;
        Quiz[2][1] = 0;
        Quiz[2][2] = 1;
        Quiz[2][3] = 0;
        Quiz[2][4] = 0;
      }
      if((mouseX > width*0.6 && mouseX < width*0.8) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[2][0] = 0;
        Quiz[2][1] = 0;
        Quiz[2][2] = 0;
        Quiz[2][3] = 1;
        Quiz[2][4] = 0;
      }
      if((mouseX > width*0.8 && mouseX < width) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[2][0] = 0;
        Quiz[2][1] = 0;
        Quiz[2][2] = 0;
        Quiz[2][3] = 0;
        Quiz[2][4] = 1;
      }
      
    break;
    case 11: //tela 11 -- questão 4
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 12;
        primeiroacesso = true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 10;
        primeiroacesso = true;
      }
      
      
      if((mouseX > 0 && mouseX < width*0.2) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[3][0] = 1;
        Quiz[3][1] = 0;
        Quiz[3][2] = 0;
        Quiz[3][3] = 0;
        Quiz[3][4] = 0;
      }
      if((mouseX > width*0.2 && mouseX < width*0.4) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[3][0] = 0;
        Quiz[3][1] = 1;
        Quiz[3][2] = 0;
        Quiz[3][3] = 0;
        Quiz[3][4] = 0;
      }
      if((mouseX > width*0.4 && mouseX < width*0.6) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[3][0] = 0;
        Quiz[3][1] = 0;
        Quiz[3][2] = 1;
        Quiz[3][3] = 0;
        Quiz[3][4] = 0;
      }
      if((mouseX > width*0.6 && mouseX < width*0.8) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[3][0] = 0;
        Quiz[3][1] = 0;
        Quiz[3][2] = 0;
        Quiz[3][3] = 1;
        Quiz[3][4] = 0;
      }
      if((mouseX > width*0.8 && mouseX < width) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[3][0] = 0;
        Quiz[3][1] = 0;
        Quiz[3][2] = 0;
        Quiz[3][3] = 0;
        Quiz[3][4] = 1;
      }
      
    break;
    case 12: //tela 12 -- questão 5
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 13;
        primeiroacesso = true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 11;
        primeiroacesso = true;
      }
      
      
      if((mouseX > 0 && mouseX < width*0.2) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[4][0] = 1;
        Quiz[4][1] = 0;
        Quiz[4][2] = 0;
        Quiz[4][3] = 0;
        Quiz[4][4] = 0;
      }
      if((mouseX > width*0.2 && mouseX < width*0.4) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[4][0] = 0;
        Quiz[4][1] = 1;
        Quiz[4][2] = 0;
        Quiz[4][3] = 0;
        Quiz[4][4] = 0;
      }
      if((mouseX > width*0.4 && mouseX < width*0.6) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[4][0] = 0;
        Quiz[4][1] = 0;
        Quiz[4][2] = 1;
        Quiz[4][3] = 0;
        Quiz[4][4] = 0;
      }
      if((mouseX > width*0.6 && mouseX < width*0.8) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[4][0] = 0;
        Quiz[4][1] = 0;
        Quiz[4][2] = 0;
        Quiz[4][3] = 1;
        Quiz[4][4] = 0;
      }
      if((mouseX > width*0.8 && mouseX < width) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[4][0] = 0;
        Quiz[4][1] = 0;
        Quiz[4][2] = 0;
        Quiz[4][3] = 0;
        Quiz[4][4] = 1;
      }
      
    break;
    case 13: //tela 13 -- questão 6
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 14;
        primeiroacesso = true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 12;
        primeiroacesso = true;
      }
      
      
      if((mouseX > 0 && mouseX < width*0.2) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[5][0] = 1;
        Quiz[5][1] = 0;
        Quiz[5][2] = 0;
        Quiz[5][3] = 0;
        Quiz[5][4] = 0;
      }
      if((mouseX > width*0.2 && mouseX < width*0.4) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[5][0] = 0;
        Quiz[5][1] = 1;
        Quiz[5][2] = 0;
        Quiz[5][3] = 0;
        Quiz[5][4] = 0;
      }
      if((mouseX > width*0.4 && mouseX < width*0.6) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[5][0] = 0;
        Quiz[5][1] = 0;
        Quiz[5][2] = 1;
        Quiz[5][3] = 0;
        Quiz[5][4] = 0;
      }
      if((mouseX > width*0.6 && mouseX < width*0.8) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[5][0] = 0;
        Quiz[5][1] = 0;
        Quiz[5][2] = 0;
        Quiz[5][3] = 1;
        Quiz[5][4] = 0;
      }
      if((mouseX > width*0.8 && mouseX < width) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[5][0] = 0;
        Quiz[5][1] = 0;
        Quiz[5][2] = 0;
        Quiz[5][3] = 0;
        Quiz[5][4] = 1;
      }
      
    break;
    case 14: //tela 14 -- questão 7
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 15;
        primeiroacesso = true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 13;
        primeiroacesso = true;
      }
      
      
      if((mouseX > 0 && mouseX < width*0.2) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[6][0] = 1;
        Quiz[6][1] = 0;
        Quiz[6][2] = 0;
        Quiz[6][3] = 0;
        Quiz[6][4] = 0;
      }
      if((mouseX > width*0.2 && mouseX < width*0.4) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[6][0] = 0;
        Quiz[6][1] = 1;
        Quiz[6][2] = 0;
        Quiz[6][3] = 0;
        Quiz[6][4] = 0;
      }
      if((mouseX > width*0.4 && mouseX < width*0.6) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[6][0] = 0;
        Quiz[6][1] = 0;
        Quiz[6][2] = 1;
        Quiz[6][3] = 0;
        Quiz[6][4] = 0;
      }
      if((mouseX > width*0.6 && mouseX < width*0.8) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[6][0] = 0;
        Quiz[6][1] = 0;
        Quiz[6][2] = 0;
        Quiz[6][3] = 1;
        Quiz[6][4] = 0;
      }
      if((mouseX > width*0.8 && mouseX < width) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[6][0] = 0;
        Quiz[6][1] = 0;
        Quiz[6][2] = 0;
        Quiz[6][3] = 0;
        Quiz[6][4] = 1;
      }
      
    break;
    case 15: //tela 15 -- questão 8
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 16;
        primeiroacesso = true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 14;
        primeiroacesso = true;
      }
      
      
      if((mouseX > 0 && mouseX < width*0.2) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[7][0] = 1;
        Quiz[7][1] = 0;
        Quiz[7][2] = 0;
        Quiz[7][3] = 0;
        Quiz[7][4] = 0;
      }
      if((mouseX > width*0.2 && mouseX < width*0.4) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[7][0] = 0;
        Quiz[7][1] = 1;
        Quiz[7][2] = 0;
        Quiz[7][3] = 0;
        Quiz[7][4] = 0;
      }
      if((mouseX > width*0.4 && mouseX < width*0.6) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[7][0] = 0;
        Quiz[7][1] = 0;
        Quiz[7][2] = 1;
        Quiz[7][3] = 0;
        Quiz[7][4] = 0;
      }
      if((mouseX > width*0.6 && mouseX < width*0.8) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[7][0] = 0;
        Quiz[7][1] = 0;
        Quiz[7][2] = 0;
        Quiz[7][3] = 1;
        Quiz[7][4] = 0;
      }
      if((mouseX > width*0.8 && mouseX < width) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[7][0] = 0;
        Quiz[7][1] = 0;
        Quiz[7][2] = 0;
        Quiz[7][3] = 0;
        Quiz[7][4] = 1;
      }
      
    break;
    case 16: //tela 16 -- questão 9
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 17;
        primeiroacesso = true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 15;
        primeiroacesso = true;
      }
      
      
      if((mouseX > 0 && mouseX < width*0.2) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[8][0] = 1;
        Quiz[8][1] = 0;
        Quiz[8][2] = 0;
        Quiz[8][3] = 0;
        Quiz[8][4] = 0;
      }
      if((mouseX > width*0.2 && mouseX < width*0.4) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[8][0] = 0;
        Quiz[8][1] = 1;
        Quiz[8][2] = 0;
        Quiz[8][3] = 0;
        Quiz[8][4] = 0;
      }
      if((mouseX > width*0.4 && mouseX < width*0.6) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[8][0] = 0;
        Quiz[8][1] = 0;
        Quiz[8][2] = 1;
        Quiz[8][3] = 0;
        Quiz[8][4] = 0;
      }
      if((mouseX > width*0.6 && mouseX < width*0.8) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[8][0] = 0;
        Quiz[8][1] = 0;
        Quiz[8][2] = 0;
        Quiz[8][3] = 1;
        Quiz[8][4] = 0;
      }
      if((mouseX > width*0.8 && mouseX < width) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[8][0] = 0;
        Quiz[8][1] = 0;
        Quiz[8][2] = 0;
        Quiz[8][3] = 0;
        Quiz[8][4] = 1;
      }
      
    break;
    case 17: //tela 17 -- questão 10
    
    if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 18;
        primeiroacesso = true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 16;
        primeiroacesso = true;
      }
      
      if((mouseX > 0 && mouseX < width*0.2) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[9][0] = 1;
        Quiz[9][1] = 0;
        Quiz[9][2] = 0;
        Quiz[9][3] = 0;
        Quiz[9][4] = 0;
      }
      if((mouseX > width*0.2 && mouseX < width*0.4) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[9][0] = 0;
        Quiz[9][1] = 1;
        Quiz[9][2] = 0;
        Quiz[9][3] = 0;
        Quiz[9][4] = 0;
      }
      if((mouseX > width*0.4 && mouseX < width*0.6) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[9][0] = 0;
        Quiz[9][1] = 0;
        Quiz[9][2] = 1;
        Quiz[9][3] = 0;
        Quiz[9][4] = 0;
      }
      if((mouseX > width*0.6 && mouseX < width*0.8) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[9][0] = 0;
        Quiz[9][1] = 0;
        Quiz[9][2] = 0;
        Quiz[9][3] = 1;
        Quiz[9][4] = 0;
      }
      if((mouseX > width*0.8 && mouseX < width) && (mouseY > (0.7*height) && mouseY < 0.84*height)){
        Quiz[9][0] = 0;
        Quiz[9][1] = 0;
        Quiz[9][2] = 0;
        Quiz[9][3] = 0;
        Quiz[9][4] = 1;
      }
      
    break;
    
    case 18: //tela 18 -- final do QUIZ
    if((mouseX > 0 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){
      for(int i=0; i<10; i++){
        for(int j=0; j<5; j++){
          Quiz[i][j] = 0;
        }
      }  
      telaAtual = 1;
      myMovie.stop();
      primeiroacesso = true;
      }
    break;
    
    case 99: //tela com uma imagem ampliada
    
      if( (mouseX > ((width/2)+(AlturaPadrao/2))-50 &&  mouseX < ((width/2)+(AlturaPadrao/2))+50 ) && (mouseY > ((height/2)-((AlturaPadrao/(largura/altura))/2))-50 && mouseY < ((height/2)-((AlturaPadrao/(largura/altura))/2))+50)){
        telaAtual= telaorigem;
        primeiroacesso= true;
      }
      
    break;
  }
}

void ampliarimagem(String imagem, int telaorigem){
  if(primeiroacesso){
    this.imagem = loadImage(imagem);
    primeiroacesso=false;
  }
  
  this.telaorigem = telaorigem;
  fill(0, 200);
  rect(0, 0, width, height);
  telaAtual = 99;
  imageMode(CENTER);
  largura = this.imagem.width;
  altura = this.imagem.height;
  this.imagem.resize(Math.round(AlturaPadrao), Math.round(AlturaPadrao/(largura/altura)));
  image(this.imagem, width/2, height/2);
  fecharicon.resize(100,100);
  image(fecharicon, (width/2)+(AlturaPadrao/2),(height/2)-((AlturaPadrao/(largura/altura))/2)); 
}


void tela1(){ //TELA INICIAL DO QUIZ
  telaAtual = 1;
  if (primeiroacesso){ //referencia e instancia o objeto MyMovie, esse if serve de controlador para o programa realizar esta ação apenas uma vez
    myMovie = new Movie(this, "SaoPauloCinematic.mp4"); //vídeo de fundo da tela inicial
    myMovie.loop();
    myMovie.volume(0);
    primeiroacesso = false;
  }
  imageMode(CORNER);
  image(myMovie, 0, 0, width, height); //reproduz o vídeo em tela cheia
  fill(0, 170); //adiciona opacidade de 80% no vídeo (204 de 255)
  rect(0, 0, width, height); //cria um retângulo para aplicar efeito de opacidade
  textFont(fontTitle);
  fill(255);
  textAlign(CENTER);
  text("São Paulo x Tecnologia", width/2, height/4); //texto de título
  textFont(fontSubTitle);
  text("Desenvolvido por: Luiz Matias e João Henrique\nCurso: Bacharelado em Ciência da Computação", width/2, height/2); //texto de subtítulo
  
  if((mouseX > 0 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){fill(#43bdcc);}else{fill(#35939e);}
  
  rect(0, 0.85*height, width, height);
  fill(255);
  textAlign(CENTER);
  text("Avançar", width/2, 0.925*height*1.02);
}

void tela2(){ //TELA DE INTRODUÇÃO SOBRE SÃO PAULO
  telaAtual = 2;
  if(primeiroacesso){
    imagem = loadImage("saopaulowallpaper.jpg");
    imagem.resize(300,300);
    primeiroacesso=false;
  }
  
  fill(255);
  rect(0,0,width,height);
  imageMode(CENTER);
  image(imagem, width*0.85, height/3);
  if((mouseX > ((width*0.85)-150) && mouseX < ((width*0.85)+150)) && ((mouseY > (height/3)-150) && (mouseY < (height/3)+150))){
    ampliaricon.resize(300,300);
    image(ampliaricon, width*0.85, height/3);
  }
  imageMode(CORNER);
  textFont(fontTitle);
  textAlign(LEFT);
  fill(0);
  text("Introdução", width/100, height/10);
  textFont(fontText);
  //text("Aenean placerat. In vulputate urna eu arcu. Aliquam erat volutpat. Suspendisse potenti. Morbi mattis felis at nunc. Duis viverra diam non justo. In nisl. Nullam sit amet magna\nin magna gravida vehicula. Mauris tincidunt sem sed arcu. Nunc posuere. Nullam lectus justo, vulputate eget, mollis sed, tempor sed, magna. Cum sociis natoque penatibus et\nmagnis dis parturient montes, nascetur ridiculus mus. Etiam neque. Curabitur ligula sapien, pulvinar a, vestibulum quis, facilisis vel, sapien. Nullam eget nisl. Donec vitae arcu.\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Morbi gravida libero nec velit. Morbi scelerisque luctus velit. Etiam dui sem, fermentum vitae, sagittis id, malesuada\nin,quam. Proin mattis lacinia justo. Vestibulum facilisis auctor urna. Aliquam in lorem sit amet leo accumsan lacinia. Integer rutrum, orci vestibulum ullamcorper ultricies, lacus\nquam ultricies odio, vitae placerat pede sem sit amet enim. Phasellus et lorem id felis nonummy placerat. Fusce dui leo, imperdiet in, aliquam sit amet, feugiat eu, orci. Aenean\nvel massa quis mauris vehicula lacinia. Quisque tincidunt scelerisque libero. Maecenas libero. Etiam dictum tincidunt diam. Donec ipsum massa, ullamcorper in, auctor et,\nscelerisque sed, est. Suspendisse nisl. Sed convallis magna eu sem. Cras pede libero, dapibus nec, pretium sit amet, tempor quis, urna.\nLorem ipsum dolor sit amet, consectetuer adipiscing elit. Nullam feugiat, turpis at pulvinar vulputate, erat libero tristique tellus, nec bibendum odio risus sit amet ante. Aliquam\nerat volutpat. Nunc auctor. Mauris pretium quam et urna. Fusce nibh. Duis risus. Curabitur sagittis hendrerit ante. Aliquam erat volutpat. Vestibulum erat nulla, ullamcorper nec, rutrum non, nonummy ac, erat. Duis condimentum augue id magna semper rutrum. Nullam justo enim, consectetuer nec, ullamcorper ac, vestibulum in, elit. Proin pede metus, vulputate nec, fermentum fringilla, vehicula vitae, justo. Fusce consectetuer risus a nunc. Aliquam ornare wisi eu metus. Integer pellentesque quam vel velit.", width/50, height/7); 
  if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){fill(#43bdcc);}else{fill(#35939e);}
  
  rect(width/2, 0.85*height, width, height);
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avançar", 0.75*width, 0.925*height*1.02);
  
  if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){fill(#fc4141);}else{fill(#c43333);}
  
  rect(0, 0.85*height, width/2, height);
  fill(255);
  textFont(fontSubTitle);
  text("Voltar", 0.25*width, 0.925*height*1.02);
  
  
}

void tela3(){ // TELA SOBRE SÃO PAULO E SUAS TECNOLOGIAS
  telaAtual = 3;
  fill(255);
  rect(0,0,width,height);
  textFont(fontTitle);
  textAlign(CENTER);
  fill(0);
  text("Tela 3\nTO DO: Tecnologia de São Paulo", width/2, height/2);
  
  if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){fill(#43bdcc);}else{fill(#35939e);}
  
  rect(width/2, 0.85*height, width, height);
  fill(255);
  textFont(fontSubTitle);
  text("Avançar", 0.75*width, 0.925*height*1.02);
  
  if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){fill(#fc4141);}else{fill(#c43333);}
  
  rect(0, 0.85*height, width/2, height);
  fill(255);
  textFont(fontSubTitle);
  text("Voltar", 0.25*width, 0.925*height*1.02);
}

void tela4(){ // TELA SOBRE STARTUPS DE SÃO PAULO
  telaAtual = 4;
  fill(255);
  rect(0,0,width,height);
  textFont(fontTitle);
  textAlign(CENTER);
  fill(0);
  text("Tela 4\nTO DO: Startups", width/2, height/2);
  
  if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){fill(#43bdcc);}else{fill(#35939e);}
  
  rect(width/2, 0.85*height, width, height);
  fill(255);
  textFont(fontSubTitle);
  text("Avançar", 0.75*width, 0.925*height*1.02);
  
  if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){fill(#fc4141);}else{fill(#c43333);}
  
  rect(0, 0.85*height, width/2, height);
  fill(255);
  textFont(fontSubTitle);
  text("Voltar", 0.25*width, 0.925*height*1.02);
}

void tela5(){ // TELA SOBRE ESTUDO DE CASO DE UMA STARTUP
  telaAtual = 5;
  fill(255);
  rect(0,0,width,height);
  textFont(fontTitle);
  textAlign(CENTER);
  fill(0);
  text("Tela 5\nTO DO: Estudo de caso\nde uma startup", width/2, height/2);
  
  if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){fill(#43bdcc);}else{fill(#35939e);}
  
  rect(width/2, 0.85*height, width, height);
  fill(255);
  textFont(fontSubTitle);
  text("Avançar", 0.75*width, 0.925*height*1.02);
  
  if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){fill(#fc4141);}else{fill(#c43333);}
  
  rect(0, 0.85*height, width/2, height);
  fill(255);
  textFont(fontSubTitle);
  text("Voltar", 0.25*width, 0.925*height*1.02);
}


void tela6(){ // TELA CONCLUINDO SOBRE SÃO PAULO
  telaAtual = 6;
  fill(255);
  rect(0,0,width,height);
  textFont(fontTitle);
  textAlign(CENTER);
  fill(0);
  text("Tela 6\nTO DO: Conclusão sobre São Paulo", width/2, height/2);
  
  if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){fill(#43bdcc);}else{fill(#35939e);}
  
  rect(width/2, 0.85*height, width, height);
  fill(255);
  textFont(fontSubTitle);
  text("Avançar", 0.75*width, 0.925*height*1.02);
  
  if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){fill(#fc4141);}else{fill(#c43333);}
  
  rect(0, 0.85*height, width/2, height);
  fill(255);
  textFont(fontSubTitle);
  text("Voltar", 0.25*width, 0.925*height*1.02);
}


void tela7(){ //TELA DE INÍCIO DO QUIZ
  telaAtual = 7;
  if (primeiroacesso){ //referencia e instancia o objeto MyMovie, esse if serve de controlador para o programa realizar esta ação apenas uma vez
    myMovie = new Movie(this, "SaoPauloCinematic.mp4"); //vídeo de fundo da tela inicial
    myMovie.loop();
    myMovie.volume(0);
    primeiroacesso = false;
  }
  imageMode(CORNER);
  image(myMovie, 0, 0, width, height); //reproduz o vídeo em tela cheia
  fill(0, 170); //adiciona opacidade de 80% no vídeo (204 de 255)
  rect(0, 0, width, height); //cria um retângulo para aplicar efeito de opacidade
  textFont(fontTitle);
  fill(255);
  textAlign(CENTER);
  text("Início do Quiz", width/2, height/4); //texto de título
  textFont(fontSubTitle);
  text("Hora de testar seus conhecimentos\nsobre o que aprendeu aqui :)", width/2, height/2); //texto de subtítulo
  
  if((mouseX > 0 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){fill(#43bdcc);}else{fill(#35939e);}
  
  rect(0, 0.85*height, width, height);
  fill(255);
  textAlign(CENTER);
  text("Avançar", width/2, 0.925*height*1.02);
}

void tela8(){ //Questão quiz
  telaAtual = 8;
  
  fill(255);
  rect(0,0,width,height);
  imageMode(CORNER);
  fill(0);
  textFont(fontTitle);
  textAlign(CENTER);
  text("Questão 1", width/2, height/10);
  textFont(fontSubTitle);
  textSize(28);
  
  text("Complete a frase: São _____\n\nA. Lourenço\nB. Lorenzo/Coxinha\nC. Peperonni\nD. Kostinha\nE. Paulo", width/2, height/4);
  
  //Botões das afirmativas
  fill(200);
  stroke(0);
  textFont(fontTitle);
  if((mouseX > 0 && mouseX < width*0.2) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  
  if(Quiz[0][0] == 1){
    fill(#707070);
    rect(0        , 0.7*height, width*0.2, 0.84*height);
    fill(255);
    text("A", width*0.1, height*0.81);
  }else{
    rect(0        , 0.7*height, width*0.2, 0.84*height);
    fill(0);
    text("A", width*0.1, height*0.81);
  }
  
  if((mouseX > width*0.2 && mouseX < width*0.4) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  
  if(Quiz[0][1] == 1){
    fill(#707070);
    rect(width*0.2, 0.7*height, width*0.4, 0.84*height);
    fill(255);
    text("B", width*0.3, height*0.81);
  }else{
    rect(width*0.2, 0.7*height, width*0.4, 0.84*height);
    fill(0);
    text("B", width*0.3, height*0.81);
  }
  
  if((mouseX > width*0.4 && mouseX < width*0.6) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  if(Quiz[0][2] == 1){
    fill(#707070);
    rect(width*0.4, 0.7*height, width*0.6, 0.84*height);
    fill(255);
    text("C", width*0.5, height*0.81);
  }else{
    rect(width*0.4, 0.7*height, width*0.6, 0.84*height);
    fill(0);
    text("C", width*0.5, height*0.81);
  }
  
  if((mouseX > width*0.6 && mouseX < width*0.8) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  if(Quiz[0][3] == 1){
    fill(#707070);
    rect(width*0.6, 0.7*height, width*0.8, 0.84*height);
    fill(255);
    text("D", width*0.7, height*0.81);
  }else{
    rect(width*0.6, 0.7*height, width*0.8, 0.84*height);
    fill(0);
    text("D", width*0.7, height*0.81);
  }
  
  if((mouseX > width*0.8 && mouseX < width) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  if(Quiz[0][4] == 1){
    fill(#707070);
    rect(width*0.8, 0.7*height, width, 0.84*height);
    fill(255);
    text("E", width*0.9, height*0.81);
  }else{
    rect(width*0.8, 0.7*height, width, 0.84*height);
    fill(0);
    text("E", width*0.9, height*0.81);
  }
  noStroke();
  
  if((mouseX > 0 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){fill(#43bdcc);}else{fill(#35939e);}
  
  rect(0, 0.85*height, width, height);
  
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avançar", 0.5*width, 0.925*height*1.02);
}

void tela9(){ //Questão quiz 2
  telaAtual = 9;
  
  fill(255);
  rect(0,0,width,height);
  imageMode(CORNER);
  fill(0);
  textFont(fontTitle);
  textAlign(CENTER);
  text("Questão 2", width/2, height/10);
  textFont(fontSubTitle);
  textSize(28);
  
  text("Complete a frase: São _____\n\nA. Lourenço\nB. Lorenzo/Coxinha\nC. Peperonni\nD. Kostinha\nE. Paulo", width/2, height/4);
  
  //Botões das afirmativas
  fill(200);
  stroke(0);
  textFont(fontTitle);
  if((mouseX > 0 && mouseX < width*0.2) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  
  if(Quiz[1][0] == 1){
    fill(#707070);
    rect(0        , 0.7*height, width*0.2, 0.84*height);
    fill(255);
    text("A", width*0.1, height*0.81);
  }else{
    rect(0        , 0.7*height, width*0.2, 0.84*height);
    fill(0);
    text("A", width*0.1, height*0.81);
  }
  
  if((mouseX > width*0.2 && mouseX < width*0.4) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  
  if(Quiz[1][1] == 1){
    fill(#707070);
    rect(width*0.2, 0.7*height, width*0.4, 0.84*height);
    fill(255);
    text("B", width*0.3, height*0.81);
  }else{
    rect(width*0.2, 0.7*height, width*0.4, 0.84*height);
    fill(0);
    text("B", width*0.3, height*0.81);
  }
  
  if((mouseX > width*0.4 && mouseX < width*0.6) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  if(Quiz[1][2] == 1){
    fill(#707070);
    rect(width*0.4, 0.7*height, width*0.6, 0.84*height);
    fill(255);
    text("C", width*0.5, height*0.81);
  }else{
    rect(width*0.4, 0.7*height, width*0.6, 0.84*height);
    fill(0);
    text("C", width*0.5, height*0.81);
  }
  
  if((mouseX > width*0.6 && mouseX < width*0.8) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  if(Quiz[1][3] == 1){
    fill(#707070);
    rect(width*0.6, 0.7*height, width*0.8, 0.84*height);
    fill(255);
    text("D", width*0.7, height*0.81);
  }else{
    rect(width*0.6, 0.7*height, width*0.8, 0.84*height);
    fill(0);
    text("D", width*0.7, height*0.81);
  }
  
  if((mouseX > width*0.8 && mouseX < width) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  if(Quiz[1][4] == 1){
    fill(#707070);
    rect(width*0.8, 0.7*height, width, 0.84*height);
    fill(255);
    text("E", width*0.9, height*0.81);
  }else{
    rect(width*0.8, 0.7*height, width, 0.84*height);
    fill(0);
    text("E", width*0.9, height*0.81);
  }
  noStroke();
  
  if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){fill(#43bdcc);}else{fill(#35939e);}
  
  rect(width/2, 0.85*height, width, height);
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avançar", 0.75*width, 0.925*height*1.02);
  
  if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){fill(#fc4141);}else{fill(#c43333);}
  
  rect(0, 0.85*height, width/2, height);
  
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avançar", 0.75*width, 0.925*height*1.02);
  fill(255);
  textFont(fontSubTitle);
  text("Voltar", 0.25*width, 0.925*height*1.02);
}

void tela10(){ //Questão quiz 3
  telaAtual = 10;
  
  fill(255);
  rect(0,0,width,height);
  imageMode(CORNER);
  fill(0);
  textFont(fontTitle);
  textAlign(CENTER);
  text("Questão 3", width/2, height/10);
  textFont(fontSubTitle);
  textSize(28);
  
  text("Complete a frase: São _____\n\nA. Lourenço\nB. Lorenzo/Coxinha\nC. Peperonni\nD. Kostinha\nE. Paulo", width/2, height/4);
  
  //Botões das afirmativas
  fill(200);
  stroke(0);
  textFont(fontTitle);
  if((mouseX > 0 && mouseX < width*0.2) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  
  if(Quiz[2][0] == 1){
    fill(#707070);
    rect(0        , 0.7*height, width*0.2, 0.84*height);
    fill(255);
    text("A", width*0.1, height*0.81);
  }else{
    rect(0        , 0.7*height, width*0.2, 0.84*height);
    fill(0);
    text("A", width*0.1, height*0.81);
  }
  
  if((mouseX > width*0.2 && mouseX < width*0.4) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  
  if(Quiz[2][1] == 1){
    fill(#707070);
    rect(width*0.2, 0.7*height, width*0.4, 0.84*height);
    fill(255);
    text("B", width*0.3, height*0.81);
  }else{
    rect(width*0.2, 0.7*height, width*0.4, 0.84*height);
    fill(0);
    text("B", width*0.3, height*0.81);
  }
  
  if((mouseX > width*0.4 && mouseX < width*0.6) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  if(Quiz[2][2] == 1){
    fill(#707070);
    rect(width*0.4, 0.7*height, width*0.6, 0.84*height);
    fill(255);
    text("C", width*0.5, height*0.81);
  }else{
    rect(width*0.4, 0.7*height, width*0.6, 0.84*height);
    fill(0);
    text("C", width*0.5, height*0.81);
  }
  
  if((mouseX > width*0.6 && mouseX < width*0.8) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  if(Quiz[2][3] == 1){
    fill(#707070);
    rect(width*0.6, 0.7*height, width*0.8, 0.84*height);
    fill(255);
    text("D", width*0.7, height*0.81);
  }else{
    rect(width*0.6, 0.7*height, width*0.8, 0.84*height);
    fill(0);
    text("D", width*0.7, height*0.81);
  }
  
  if((mouseX > width*0.8 && mouseX < width) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  if(Quiz[2][4] == 1){
    fill(#707070);
    rect(width*0.8, 0.7*height, width, 0.84*height);
    fill(255);
    text("E", width*0.9, height*0.81);
  }else{
    rect(width*0.8, 0.7*height, width, 0.84*height);
    fill(0);
    text("E", width*0.9, height*0.81);
  }
  noStroke();
  
  if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){fill(#43bdcc);}else{fill(#35939e);}
  
  rect(width/2, 0.85*height, width, height);
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avançar", 0.75*width, 0.925*height*1.02);
  
  if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){fill(#fc4141);}else{fill(#c43333);}
  
  rect(0, 0.85*height, width/2, height);
  
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avançar", 0.75*width, 0.925*height*1.02);
  fill(255);
  textFont(fontSubTitle);
  text("Voltar", 0.25*width, 0.925*height*1.02);
}

void tela11(){ //Questão quiz 4
  telaAtual = 11;
  
  fill(255);
  rect(0,0,width,height);
  imageMode(CORNER);
  fill(0);
  textFont(fontTitle);
  textAlign(CENTER);
  text("Questão 4", width/2, height/10);
  textFont(fontSubTitle);
  textSize(28);
  
  text("Complete a frase: São _____\n\nA. Lourenço\nB. Lorenzo/Coxinha\nC. Peperonni\nD. Kostinha\nE. Paulo", width/2, height/4);
  
  //Botões das afirmativas
  fill(200);
  stroke(0);
  textFont(fontTitle);
  if((mouseX > 0 && mouseX < width*0.2) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  
  if(Quiz[3][0] == 1){
    fill(#707070);
    rect(0        , 0.7*height, width*0.2, 0.84*height);
    fill(255);
    text("A", width*0.1, height*0.81);
  }else{
    rect(0        , 0.7*height, width*0.2, 0.84*height);
    fill(0);
    text("A", width*0.1, height*0.81);
  }
  
  if((mouseX > width*0.2 && mouseX < width*0.4) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  
  if(Quiz[3][1] == 1){
    fill(#707070);
    rect(width*0.2, 0.7*height, width*0.4, 0.84*height);
    fill(255);
    text("B", width*0.3, height*0.81);
  }else{
    rect(width*0.2, 0.7*height, width*0.4, 0.84*height);
    fill(0);
    text("B", width*0.3, height*0.81);
  }
  
  if((mouseX > width*0.4 && mouseX < width*0.6) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  if(Quiz[3][2] == 1){
    fill(#707070);
    rect(width*0.4, 0.7*height, width*0.6, 0.84*height);
    fill(255);
    text("C", width*0.5, height*0.81);
  }else{
    rect(width*0.4, 0.7*height, width*0.6, 0.84*height);
    fill(0);
    text("C", width*0.5, height*0.81);
  }
  
  if((mouseX > width*0.6 && mouseX < width*0.8) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  if(Quiz[3][3] == 1){
    fill(#707070);
    rect(width*0.6, 0.7*height, width*0.8, 0.84*height);
    fill(255);
    text("D", width*0.7, height*0.81);
  }else{
    rect(width*0.6, 0.7*height, width*0.8, 0.84*height);
    fill(0);
    text("D", width*0.7, height*0.81);
  }
  
  if((mouseX > width*0.8 && mouseX < width) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  if(Quiz[3][4] == 1){
    fill(#707070);
    rect(width*0.8, 0.7*height, width, 0.84*height);
    fill(255);
    text("E", width*0.9, height*0.81);
  }else{
    rect(width*0.8, 0.7*height, width, 0.84*height);
    fill(0);
    text("E", width*0.9, height*0.81);
  }
  noStroke();
  
  if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){fill(#43bdcc);}else{fill(#35939e);}
  
  rect(width/2, 0.85*height, width, height);
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avançar", 0.75*width, 0.925*height*1.02);
  
  if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){fill(#fc4141);}else{fill(#c43333);}
  
  rect(0, 0.85*height, width/2, height);
  
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avançar", 0.75*width, 0.925*height*1.02);
  fill(255);
  textFont(fontSubTitle);
  text("Voltar", 0.25*width, 0.925*height*1.02);
}

void tela12(){ //Questão quiz 5
  telaAtual = 12;
  
  fill(255);
  rect(0,0,width,height);
  imageMode(CORNER);
  fill(0);
  textFont(fontTitle);
  textAlign(CENTER);
  text("Questão 5", width/2, height/10);
  textFont(fontSubTitle);
  textSize(28);
  
  text("Complete a frase: São _____\n\nA. Lourenço\nB. Lorenzo/Coxinha\nC. Peperonni\nD. Kostinha\nE. Paulo", width/2, height/4);
  
  //Botões das afirmativas
  fill(200);
  stroke(0);
  textFont(fontTitle);
  if((mouseX > 0 && mouseX < width*0.2) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  
  if(Quiz[4][0] == 1){
    fill(#707070);
    rect(0        , 0.7*height, width*0.2, 0.84*height);
    fill(255);
    text("A", width*0.1, height*0.81);
  }else{
    rect(0        , 0.7*height, width*0.2, 0.84*height);
    fill(0);
    text("A", width*0.1, height*0.81);
  }
  
  if((mouseX > width*0.2 && mouseX < width*0.4) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  
  if(Quiz[4][1] == 1){
    fill(#707070);
    rect(width*0.2, 0.7*height, width*0.4, 0.84*height);
    fill(255);
    text("B", width*0.3, height*0.81);
  }else{
    rect(width*0.2, 0.7*height, width*0.4, 0.84*height);
    fill(0);
    text("B", width*0.3, height*0.81);
  }
  
  if((mouseX > width*0.4 && mouseX < width*0.6) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  if(Quiz[4][2] == 1){
    fill(#707070);
    rect(width*0.4, 0.7*height, width*0.6, 0.84*height);
    fill(255);
    text("C", width*0.5, height*0.81);
  }else{
    rect(width*0.4, 0.7*height, width*0.6, 0.84*height);
    fill(0);
    text("C", width*0.5, height*0.81);
  }
  
  if((mouseX > width*0.6 && mouseX < width*0.8) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  if(Quiz[4][3] == 1){
    fill(#707070);
    rect(width*0.6, 0.7*height, width*0.8, 0.84*height);
    fill(255);
    text("D", width*0.7, height*0.81);
  }else{
    rect(width*0.6, 0.7*height, width*0.8, 0.84*height);
    fill(0);
    text("D", width*0.7, height*0.81);
  }
  
  if((mouseX > width*0.8 && mouseX < width) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  if(Quiz[4][4] == 1){
    fill(#707070);
    rect(width*0.8, 0.7*height, width, 0.84*height);
    fill(255);
    text("E", width*0.9, height*0.81);
  }else{
    rect(width*0.8, 0.7*height, width, 0.84*height);
    fill(0);
    text("E", width*0.9, height*0.81);
  }
  noStroke();
  
  if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){fill(#43bdcc);}else{fill(#35939e);}
  
  rect(width/2, 0.85*height, width, height);
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avançar", 0.75*width, 0.925*height*1.02);
  
  if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){fill(#fc4141);}else{fill(#c43333);}
  
  rect(0, 0.85*height, width/2, height);
  
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avançar", 0.75*width, 0.925*height*1.02);
  fill(255);
  textFont(fontSubTitle);
  text("Voltar", 0.25*width, 0.925*height*1.02);
}

void tela13(){ //Questão quiz 6
  telaAtual = 13;
  
  fill(255);
  rect(0,0,width,height);
  imageMode(CORNER);
  fill(0);
  textFont(fontTitle);
  textAlign(CENTER);
  text("Questão 6", width/2, height/10);
  textFont(fontSubTitle);
  textSize(28);
  
  text("Complete a frase: São _____\n\nA. Lourenço\nB. Lorenzo/Coxinha\nC. Peperonni\nD. Kostinha\nE. Paulo", width/2, height/4);
  
  //Botões das afirmativas
  fill(200);
  stroke(0);
  textFont(fontTitle);
  if((mouseX > 0 && mouseX < width*0.2) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  
  if(Quiz[5][0] == 1){
    fill(#707070);
    rect(0        , 0.7*height, width*0.2, 0.84*height);
    fill(255);
    text("A", width*0.1, height*0.81);
  }else{
    rect(0        , 0.7*height, width*0.2, 0.84*height);
    fill(0);
    text("A", width*0.1, height*0.81);
  }
  
  if((mouseX > width*0.2 && mouseX < width*0.4) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  
  if(Quiz[5][1] == 1){
    fill(#707070);
    rect(width*0.2, 0.7*height, width*0.4, 0.84*height);
    fill(255);
    text("B", width*0.3, height*0.81);
  }else{
    rect(width*0.2, 0.7*height, width*0.4, 0.84*height);
    fill(0);
    text("B", width*0.3, height*0.81);
  }
  
  if((mouseX > width*0.4 && mouseX < width*0.6) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  if(Quiz[5][2] == 1){
    fill(#707070);
    rect(width*0.4, 0.7*height, width*0.6, 0.84*height);
    fill(255);
    text("C", width*0.5, height*0.81);
  }else{
    rect(width*0.4, 0.7*height, width*0.6, 0.84*height);
    fill(0);
    text("C", width*0.5, height*0.81);
  }
  
  if((mouseX > width*0.6 && mouseX < width*0.8) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  if(Quiz[5][3] == 1){
    fill(#707070);
    rect(width*0.6, 0.7*height, width*0.8, 0.84*height);
    fill(255);
    text("D", width*0.7, height*0.81);
  }else{
    rect(width*0.6, 0.7*height, width*0.8, 0.84*height);
    fill(0);
    text("D", width*0.7, height*0.81);
  }
  
  if((mouseX > width*0.8 && mouseX < width) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  if(Quiz[5][4] == 1){
    fill(#707070);
    rect(width*0.8, 0.7*height, width, 0.84*height);
    fill(255);
    text("E", width*0.9, height*0.81);
  }else{
    rect(width*0.8, 0.7*height, width, 0.84*height);
    fill(0);
    text("E", width*0.9, height*0.81);
  }
  noStroke();
  
  if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){fill(#43bdcc);}else{fill(#35939e);}
  
  rect(width/2, 0.85*height, width, height);
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avançar", 0.75*width, 0.925*height*1.02);
  
  if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){fill(#fc4141);}else{fill(#c43333);}
  
  rect(0, 0.85*height, width/2, height);
  
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avançar", 0.75*width, 0.925*height*1.02);
  fill(255);
  textFont(fontSubTitle);
  text("Voltar", 0.25*width, 0.925*height*1.02);
}

void tela14(){ //Questão quiz 7
  telaAtual = 14;
  
  fill(255);
  rect(0,0,width,height);
  imageMode(CORNER);
  fill(0);
  textFont(fontTitle);
  textAlign(CENTER);
  text("Questão 7", width/2, height/10);
  textFont(fontSubTitle);
  textSize(28);
  
  text("Complete a frase: São _____\n\nA. Lourenço\nB. Lorenzo/Coxinha\nC. Peperonni\nD. Kostinha\nE. Paulo", width/2, height/4);
  
  //Botões das afirmativas
  fill(200);
  stroke(0);
  textFont(fontTitle);
  if((mouseX > 0 && mouseX < width*0.2) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  
  if(Quiz[6][0] == 1){
    fill(#707070);
    rect(0        , 0.7*height, width*0.2, 0.84*height);
    fill(255);
    text("A", width*0.1, height*0.81);
  }else{
    rect(0        , 0.7*height, width*0.2, 0.84*height);
    fill(0);
    text("A", width*0.1, height*0.81);
  }
  
  if((mouseX > width*0.2 && mouseX < width*0.4) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  
  if(Quiz[6][1] == 1){
    fill(#707070);
    rect(width*0.2, 0.7*height, width*0.4, 0.84*height);
    fill(255);
    text("B", width*0.3, height*0.81);
  }else{
    rect(width*0.2, 0.7*height, width*0.4, 0.84*height);
    fill(0);
    text("B", width*0.3, height*0.81);
  }
  
  if((mouseX > width*0.4 && mouseX < width*0.6) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  if(Quiz[6][2] == 1){
    fill(#707070);
    rect(width*0.4, 0.7*height, width*0.6, 0.84*height);
    fill(255);
    text("C", width*0.5, height*0.81);
  }else{
    rect(width*0.4, 0.7*height, width*0.6, 0.84*height);
    fill(0);
    text("C", width*0.5, height*0.81);
  }
  
  if((mouseX > width*0.6 && mouseX < width*0.8) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  if(Quiz[6][3] == 1){
    fill(#707070);
    rect(width*0.6, 0.7*height, width*0.8, 0.84*height);
    fill(255);
    text("D", width*0.7, height*0.81);
  }else{
    rect(width*0.6, 0.7*height, width*0.8, 0.84*height);
    fill(0);
    text("D", width*0.7, height*0.81);
  }
  
  if((mouseX > width*0.8 && mouseX < width) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  if(Quiz[6][4] == 1){
    fill(#707070);
    rect(width*0.8, 0.7*height, width, 0.84*height);
    fill(255);
    text("E", width*0.9, height*0.81);
  }else{
    rect(width*0.8, 0.7*height, width, 0.84*height);
    fill(0);
    text("E", width*0.9, height*0.81);
  }
  noStroke();
  
  if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){fill(#43bdcc);}else{fill(#35939e);}
  
  rect(width/2, 0.85*height, width, height);
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avançar", 0.75*width, 0.925*height*1.02);
  
  if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){fill(#fc4141);}else{fill(#c43333);}
  
  rect(0, 0.85*height, width/2, height);
  
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avançar", 0.75*width, 0.925*height*1.02);
  fill(255);
  textFont(fontSubTitle);
  text("Voltar", 0.25*width, 0.925*height*1.02);
}

void tela15(){ //Questão quiz 8
  telaAtual = 15;
  
  fill(255);
  rect(0,0,width,height);
  imageMode(CORNER);
  fill(0);
  textFont(fontTitle);
  textAlign(CENTER);
  text("Questão 8", width/2, height/10);
  textFont(fontSubTitle);
  textSize(28);
  
  text("Complete a frase: São _____\n\nA. Lourenço\nB. Lorenzo/Coxinha\nC. Peperonni\nD. Kostinha\nE. Paulo", width/2, height/4);
  
  //Botões das afirmativas
  fill(200);
  stroke(0);
  textFont(fontTitle);
  if((mouseX > 0 && mouseX < width*0.2) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  
  if(Quiz[7][0] == 1){
    fill(#707070);
    rect(0        , 0.7*height, width*0.2, 0.84*height);
    fill(255);
    text("A", width*0.1, height*0.81);
  }else{
    rect(0        , 0.7*height, width*0.2, 0.84*height);
    fill(0);
    text("A", width*0.1, height*0.81);
  }
  
  if((mouseX > width*0.2 && mouseX < width*0.4) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  
  if(Quiz[7][1] == 1){
    fill(#707070);
    rect(width*0.2, 0.7*height, width*0.4, 0.84*height);
    fill(255);
    text("B", width*0.3, height*0.81);
  }else{
    rect(width*0.2, 0.7*height, width*0.4, 0.84*height);
    fill(0);
    text("B", width*0.3, height*0.81);
  }
  
  if((mouseX > width*0.4 && mouseX < width*0.6) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  if(Quiz[7][2] == 1){
    fill(#707070);
    rect(width*0.4, 0.7*height, width*0.6, 0.84*height);
    fill(255);
    text("C", width*0.5, height*0.81);
  }else{
    rect(width*0.4, 0.7*height, width*0.6, 0.84*height);
    fill(0);
    text("C", width*0.5, height*0.81);
  }
  
  if((mouseX > width*0.6 && mouseX < width*0.8) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  if(Quiz[7][3] == 1){
    fill(#707070);
    rect(width*0.6, 0.7*height, width*0.8, 0.84*height);
    fill(255);
    text("D", width*0.7, height*0.81);
  }else{
    rect(width*0.6, 0.7*height, width*0.8, 0.84*height);
    fill(0);
    text("D", width*0.7, height*0.81);
  }
  
  if((mouseX > width*0.8 && mouseX < width) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  if(Quiz[7][4] == 1){
    fill(#707070);
    rect(width*0.8, 0.7*height, width, 0.84*height);
    fill(255);
    text("E", width*0.9, height*0.81);
  }else{
    rect(width*0.8, 0.7*height, width, 0.84*height);
    fill(0);
    text("E", width*0.9, height*0.81);
  }
  noStroke();
  
  if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){fill(#43bdcc);}else{fill(#35939e);}
  
  rect(width/2, 0.85*height, width, height);
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avançar", 0.75*width, 0.925*height*1.02);
  
  if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){fill(#fc4141);}else{fill(#c43333);}
  
  rect(0, 0.85*height, width/2, height);
  
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avançar", 0.75*width, 0.925*height*1.02);
  fill(255);
  textFont(fontSubTitle);
  text("Voltar", 0.25*width, 0.925*height*1.02);
}

void tela16(){ //Questão quiz 9
  telaAtual = 16;
  
  fill(255);
  rect(0,0,width,height);
  imageMode(CORNER);
  fill(0);
  textFont(fontTitle);
  textAlign(CENTER);
  text("Questão 9", width/2, height/10);
  textFont(fontSubTitle);
  textSize(28);
  
  text("Complete a frase: São _____\n\nA. Lourenço\nB. Lorenzo/Coxinha\nC. Peperonni\nD. Kostinha\nE. Paulo", width/2, height/4);
  
  //Botões das afirmativas
  fill(200);
  stroke(0);
  textFont(fontTitle);
  if((mouseX > 0 && mouseX < width*0.2) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  
  if(Quiz[8][0] == 1){
    fill(#707070);
    rect(0        , 0.7*height, width*0.2, 0.84*height);
    fill(255);
    text("A", width*0.1, height*0.81);
  }else{
    rect(0        , 0.7*height, width*0.2, 0.84*height);
    fill(0);
    text("A", width*0.1, height*0.81);
  }
  
  if((mouseX > width*0.2 && mouseX < width*0.4) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  
  if(Quiz[8][1] == 1){
    fill(#707070);
    rect(width*0.2, 0.7*height, width*0.4, 0.84*height);
    fill(255);
    text("B", width*0.3, height*0.81);
  }else{
    rect(width*0.2, 0.7*height, width*0.4, 0.84*height);
    fill(0);
    text("B", width*0.3, height*0.81);
  }
  
  if((mouseX > width*0.4 && mouseX < width*0.6) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  if(Quiz[8][2] == 1){
    fill(#707070);
    rect(width*0.4, 0.7*height, width*0.6, 0.84*height);
    fill(255);
    text("C", width*0.5, height*0.81);
  }else{
    rect(width*0.4, 0.7*height, width*0.6, 0.84*height);
    fill(0);
    text("C", width*0.5, height*0.81);
  }
  
  if((mouseX > width*0.6 && mouseX < width*0.8) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  if(Quiz[8][3] == 1){
    fill(#707070);
    rect(width*0.6, 0.7*height, width*0.8, 0.84*height);
    fill(255);
    text("D", width*0.7, height*0.81);
  }else{
    rect(width*0.6, 0.7*height, width*0.8, 0.84*height);
    fill(0);
    text("D", width*0.7, height*0.81);
  }
  
  if((mouseX > width*0.8 && mouseX < width) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  if(Quiz[8][4] == 1){
    fill(#707070);
    rect(width*0.8, 0.7*height, width, 0.84*height);
    fill(255);
    text("E", width*0.9, height*0.81);
  }else{
    rect(width*0.8, 0.7*height, width, 0.84*height);
    fill(0);
    text("E", width*0.9, height*0.81);
  }
  noStroke();
  
  if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){fill(#43bdcc);}else{fill(#35939e);}
  
  rect(width/2, 0.85*height, width, height);
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avançar", 0.75*width, 0.925*height*1.02);
  
  if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){fill(#fc4141);}else{fill(#c43333);}
  
  rect(0, 0.85*height, width/2, height);
  
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avançar", 0.75*width, 0.925*height*1.02);
  fill(255);
  textFont(fontSubTitle);
  text("Voltar", 0.25*width, 0.925*height*1.02);
}

void tela17(){ //Questão quiz 10
  telaAtual = 17;
  
  fill(255);
  rect(0,0,width,height);
  imageMode(CORNER);
  fill(0);
  textFont(fontTitle);
  textAlign(CENTER);
  text("Questão 10", width/2, height/10);
  textFont(fontSubTitle);
  textSize(28);
  
  text("Complete a frase: São _____\n\nA. Lourenço\nB. Lorenzo/Coxinha\nC. Peperonni\nD. Kostinha\nE. Paulo", width/2, height/4);
  
  //Botões das afirmativas
  fill(200);
  stroke(0);
  textFont(fontTitle);
  if((mouseX > 0 && mouseX < width*0.2) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  
  if(Quiz[9][0] == 1){
    fill(#707070);
    rect(0        , 0.7*height, width*0.2, 0.84*height);
    fill(255);
    text("A", width*0.1, height*0.81);
  }else{
    rect(0        , 0.7*height, width*0.2, 0.84*height);
    fill(0);
    text("A", width*0.1, height*0.81);
  }
  
  if((mouseX > width*0.2 && mouseX < width*0.4) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  
  if(Quiz[9][1] == 1){
    fill(#707070);
    rect(width*0.2, 0.7*height, width*0.4, 0.84*height);
    fill(255);
    text("B", width*0.3, height*0.81);
  }else{
    rect(width*0.2, 0.7*height, width*0.4, 0.84*height);
    fill(0);
    text("B", width*0.3, height*0.81);
  }
  
  if((mouseX > width*0.4 && mouseX < width*0.6) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  if(Quiz[9][2] == 1){
    fill(#707070);
    rect(width*0.4, 0.7*height, width*0.6, 0.84*height);
    fill(255);
    text("C", width*0.5, height*0.81);
  }else{
    rect(width*0.4, 0.7*height, width*0.6, 0.84*height);
    fill(0);
    text("C", width*0.5, height*0.81);
  }
  
  if((mouseX > width*0.6 && mouseX < width*0.8) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  if(Quiz[9][3] == 1){
    fill(#707070);
    rect(width*0.6, 0.7*height, width*0.8, 0.84*height);
    fill(255);
    text("D", width*0.7, height*0.81);
  }else{
    rect(width*0.6, 0.7*height, width*0.8, 0.84*height);
    fill(0);
    text("D", width*0.7, height*0.81);
  }
  
  if((mouseX > width*0.8 && mouseX < width) && (mouseY > (0.7*height) && mouseY < 0.84*height)){fill(#eaeaea);}else{fill(#cecece);}
  if(Quiz[9][4] == 1){
    fill(#707070);
    rect(width*0.8, 0.7*height, width, 0.84*height);
    fill(255);
    text("E", width*0.9, height*0.81);
  }else{
    rect(width*0.8, 0.7*height, width, 0.84*height);
    fill(0);
    text("E", width*0.9, height*0.81);
  }
  noStroke();
  
  if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){fill(#43bdcc);}else{fill(#35939e);}
  
  rect(width/2, 0.85*height, width, height);
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avançar", 0.75*width, 0.925*height*1.02);
  
  if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){fill(#fc4141);}else{fill(#c43333);}
  
  rect(0, 0.85*height, width/2, height);
  
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avançar", 0.75*width, 0.925*height*1.02);
  fill(255);
  textFont(fontSubTitle);
  text("Voltar", 0.25*width, 0.925*height*1.02);
}

void tela18(){ //TELA FINAL DO QUIZ
  telaAtual = 18;
  if (primeiroacesso){ //referencia e instancia o objeto MyMovie, esse if serve de controlador para o programa realizar esta ação apenas uma vez
    myMovie = new Movie(this, "SaoPauloCinematic.mp4"); //vídeo de fundo da tela inicial
    myMovie.loop();
    myMovie.volume(0);
    acertos = 0;
    for(int i=0; i<10; i++){
      for(int j=0; j<5; j++){
        if(Quiz[i][j] == Gabarito[i][j] && Quiz[i][j] == 1){
          acertos++;
        }
      }
    }
    println("Quiz x Gabarito");
    for(int i=0; i<10; i++){
      println("Questão "+(i+1)+":");
      for(int j=0; j<5; j++){
          println("Quiz= "+Quiz[i][j]+" Gabarito= "+Gabarito[i][j]); 
        }
      }
    primeiroacesso = false;
  }
  imageMode(CORNER);
  image(myMovie, 0, 0, width, height); //reproduz o vídeo em tela cheia
  fill(0, 170); //adiciona opacidade de 80% no vídeo (204 de 255)
  rect(0, 0, width, height); //cria um retângulo para aplicar efeito de opacidade
  textFont(fontTitle);
  fill(255);
  textAlign(CENTER);
  text("Fim do quiz!", width/2, height/4); //texto de título
  textFont(fontSubTitle);
  
  text("Seu resultado final foi:\n"+acertos+" de 10 questões.", width/2, height/2); //texto de subtítulo
  
  if((mouseX > 0 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){fill(#43bdcc);}else{fill(#35939e);}
  
  rect(0, 0.85*height, width, height);
  fill(255);
  textAlign(CENTER);
  text("Retornar ao início", width/2, 0.925*height*1.02);
}