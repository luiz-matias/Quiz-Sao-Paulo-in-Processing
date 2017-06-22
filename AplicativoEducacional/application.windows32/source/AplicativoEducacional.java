import processing.core.*; 
import processing.data.*; 
import processing.event.*; 
import processing.opengl.*; 

import processing.video.*; 
import processing.sound.*; 

import java.util.HashMap; 
import java.util.ArrayList; 
import java.io.File; 
import java.io.BufferedReader; 
import java.io.PrintWriter; 
import java.io.InputStream; 
import java.io.OutputStream; 
import java.io.IOException; 

public class AplicativoEducacional extends PApplet {

/*
                                  APLICATIVO EDUCACIONAL FEITO POR:
                                LUIZ AUGUSTO DE AZAMBUJA RAMOS MATIAS
                                  JO\u00c3O HENRIQUE CECCATTO DE CAMPOS

----------------------                                                               ----------------------
---------------                                                                             ---------------
--------------                                                                               --------------
-------------   ABA PRINCIPAL DO APLICATIVO, COM TODO O SETUP E ALGUMAS FUN\u00c7\u00d5ES CUSTOMIZADAS  -------------
--------------                                                                               --------------
---------------                                                                             ---------------
----------------------                                                               ----------------------
*/






Movie myMovie;
SoundFile musica;
int [][] Quiz = new int [10][5]; //dez perguntas com cinco alternativas cada

int [][] Gabarito = {  {1,0,0,0,0},// A ok
                       {0,0,0,1,0},// D ok
                       {0,1,0,0,0},// B ok
                       {1,0,0,0,0},// A ok 
                       {1,0,0,0,0},// A ok 
                       {0,0,0,0,1},// E ok 
                       {0,1,0,0,0},// B ok
                       {0,0,1,0,0},// C ok
                       {0,0,0,0,1},// E ok
                       {0,0,1,0,0} // C ok
                                    };
int acertos = 0;
float AlturaPadrao;
String texto;
boolean primeiroacesso = true;
PImage imagem, ampliaricon, fecharicon;
PFont fontTitle, fontSubTitle, fontText;
float largura, altura;
int telaAtual, telaorigem;
String smile= ")";

public void setup() {
   //Todo o quiz foi baseado nesta resolu\u00e7\u00e3o, mas foram tomados alguns cuidados para o design das telas se adaptar ao tamanho da tela.
                   //Por\u00e9m, \u00e9 recomendado utilizar a mesma (1280x720).
  background(255);
  frameRate(30);
  noStroke();
  
  musica = new SoundFile(this, "musicafundo.mp3");
  musica.loop();
  //musica.amp(0.1); Controlador de volume, desativado para apresenta\u00e7\u00e3o para todo mundo ouvir
  AlturaPadrao = width*0.8f;
  ampliaricon = loadImage("ampliarwithtext.png");
  fecharicon = loadImage("close.png");
  telaAtual = 1;
  fontTitle = createFont("Aller_Rg.ttf", 72);
  fontSubTitle = createFont("Aller_Lt.ttf", 48);
  fontText = createFont("Aller_Lt.ttf", 16);
  
}

public void draw() { 
  switch(telaAtual){ //Sele\u00e7\u00e3o de telas que inicia uma fun\u00e7\u00e3o da Aba Telas
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
    case 19:
      tela19();
    break;
    case 20:
      tela20();
    break;
    case 21:
      tela21();
    break;
    case 22:
      tela22();
    break;
  }
}

// Chamada para executar v\u00eddeos
public void movieEvent(Movie m) {
  m.read();
}

public void Respondidas(){ //fun\u00e7\u00e3o que mostra uma tabela das quest\u00f5es respondidas do usu\u00e1rio
  textFont(fontSubTitle);
  fill(0);
  text("Quest\u00f5es", width*0.8f+100, height/5-10);
  stroke(0);
  boolean fillValue = false;
  int heightRespostas = 300;
  for(int i=0; i<10; i++){
    
    if(fillValue){
      fill(200);
      fillValue = false;
    }else{
      fill(150);
      fillValue = true;
    }
    rect(width*0.8f, height/5, 200, heightRespostas);
    rect(width*0.8f, height/5, 100, heightRespostas);
    heightRespostas = heightRespostas - 30;
  }
  
  textSize(24);
  fill(0);
  heightRespostas = 24;
  int cont = 0;
  
  for(int i=0; i<10; i++){
    text(String.valueOf(i+1),  width*0.8f+50, height/5+heightRespostas);
    for(int j=0; j<5; j++){
      if(Quiz[i][j] == 1){
        switch(j){
          case 0:
              text("A",  (width*0.8f)+150, height/5+heightRespostas);
          break;
          case 1:
              text("B",  (width*0.8f)+150, height/5+heightRespostas);
          break;
          case 2:
              text("C",  (width*0.8f)+150, height/5+heightRespostas);
          break;
          case 3:
              text("D",  (width*0.8f)+150, height/5+heightRespostas);
          break;
          case 4:
              text("E",  (width*0.8f)+150, height/5+heightRespostas);
          break;
        }
      }else{
        cont++;
        if(cont == 5){
          text("-",  (width*0.8f)+150, height/5+heightRespostas);
        }
      }
    }
    cont = 0;
    heightRespostas = heightRespostas + 30;
  }
}
/* 
                                  APLICATIVO EDUCACIONAL FEITO POR:
                                LUIZ AUGUSTO DE AZAMBUJA RAMOS MATIAS
                                  JO\u00c3O HENRIQUE CECCATTO DE CAMPOS

----------------------                                                                      ----------------------
---------------                                                                                    ---------------
--------------                                                                                      --------------
-------------   ABA UTILIZADA PARA ADMINISTRAR TODAS AS A\u00c7\u00d5ES DE CLICKS COM O QUIZ (INTERATIVIDADE)  -------------
--------------                                                                                      --------------
---------------                                                                                    ---------------
----------------------                                                                      ----------------------
*/


// Chamada em toda a\u00e7\u00e3o de click
public void mouseClicked(){
  switch(telaAtual){
    case 1: //tela 1
      if((mouseX > 0 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual = 2;
        myMovie.stop();
        primeiroacesso = true;
      }
    break;
    case 2: //tela 2
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual= 3;
        primeiroacesso= true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual = 1;
        primeiroacesso = true;
      }
      if((mouseX > ((width*0.85f)-150) && mouseX < ((width*0.85f)+150)) && ((mouseY > (height/3)-150) && (mouseY < (height/3)+150))){
        primeiroacesso = true;
        ampliarimagem("saopaulowallpaper.jpg", 2);
      }
    break;
    case 3: //tela 3
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual= 4;
        primeiroacesso= true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual = 2;
        primeiroacesso = true;
      }
      if((mouseX > ((width*0.85f)-150) && mouseX < ((width*0.85f)+150)) && ((mouseY > (height/3)-150) && (mouseY < (height/3)+150))){
        primeiroacesso = true;
        ampliarimagem("saopaulowallpaper2.jpg", 3);
      }
    break;
    case 4: //tela 4
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual= 5;
        primeiroacesso= true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual = 3;
        primeiroacesso = true;
      }
    break;
    case 5: //tela 5
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual= 6;
        primeiroacesso= true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual = 4;
        primeiroacesso = true;
      }
    break;
    case 6: //tela 6
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual= 7; //ir pra tela 7 quando criar
        primeiroacesso= true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual = 5;
        primeiroacesso = true;
      }
    break;
    case 7: //tela 7
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual= 8; //ir pra tela 7 quando criar
        primeiroacesso= true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual = 6;
        primeiroacesso = true;
      }
    break;
    case 8: //tela 8
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual= 9; //ir pra tela 7 quando criar
        primeiroacesso= true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual = 7;
        primeiroacesso = true;
      }
    break;
    case 9: //tela 9
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual= 10; //ir pra tela 7 quando criar
        primeiroacesso= true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual = 8;
        primeiroacesso = true;
      }
    break;
    case 10: //tela 10
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual= 11; //ir pra tela 7 quando criar
        primeiroacesso= true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual = 9;
        primeiroacesso = true;
      }
    break;
    case 11:
      if((mouseX > 0 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual = 12;
        primeiroacesso = true;
        myMovie.stop();
      }
    break;
    case 12: //tela 12 -- quest\u00e3o 1
      if((mouseX > 0 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual = 13;
        primeiroacesso = true;
      }
      
      
      if((mouseX > 0 && mouseX < width*0.2f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[0][0] = 1;
        Quiz[0][1] = 0;
        Quiz[0][2] = 0;
        Quiz[0][3] = 0;
        Quiz[0][4] = 0;
      }
      if((mouseX > width*0.2f && mouseX < width*0.4f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[0][0] = 0;
        Quiz[0][1] = 1;
        Quiz[0][2] = 0;
        Quiz[0][3] = 0;
        Quiz[0][4] = 0;
      }
      if((mouseX > width*0.4f && mouseX < width*0.6f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[0][0] = 0;
        Quiz[0][1] = 0;
        Quiz[0][2] = 1;
        Quiz[0][3] = 0;
        Quiz[0][4] = 0;
      }
      if((mouseX > width*0.6f && mouseX < width*0.8f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[0][0] = 0;
        Quiz[0][1] = 0;
        Quiz[0][2] = 0;
        Quiz[0][3] = 1;
        Quiz[0][4] = 0;
      }
      if((mouseX > width*0.8f && mouseX < width) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[0][0] = 0;
        Quiz[0][1] = 0;
        Quiz[0][2] = 0;
        Quiz[0][3] = 0;
        Quiz[0][4] = 1;
      }
      
    break;
    case 13: //tela 13 -- quest\u00e3o 2
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual = 14;
        primeiroacesso = true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual = 12;
        primeiroacesso = true;
      }
      
      
      if((mouseX > 0 && mouseX < width*0.2f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[1][0] = 1;
        Quiz[1][1] = 0;
        Quiz[1][2] = 0;
        Quiz[1][3] = 0;
        Quiz[1][4] = 0;
      }
      if((mouseX > width*0.2f && mouseX < width*0.4f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[1][0] = 0;
        Quiz[1][1] = 1;
        Quiz[1][2] = 0;
        Quiz[1][3] = 0;
        Quiz[1][4] = 0;
      }
      if((mouseX > width*0.4f && mouseX < width*0.6f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[1][0] = 0;
        Quiz[1][1] = 0;
        Quiz[1][2] = 1;
        Quiz[1][3] = 0;
        Quiz[1][4] = 0;
      }
      if((mouseX > width*0.6f && mouseX < width*0.8f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[1][0] = 0;
        Quiz[1][1] = 0;
        Quiz[1][2] = 0;
        Quiz[1][3] = 1;
        Quiz[1][4] = 0;
      }
      if((mouseX > width*0.8f && mouseX < width) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[1][0] = 0;
        Quiz[1][1] = 0;
        Quiz[1][2] = 0;
        Quiz[1][3] = 0;
        Quiz[1][4] = 1;
      }
      
    break;
    case 14: //tela 14 -- quest\u00e3o 3
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual = 15;
        primeiroacesso = true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual = 13;
        primeiroacesso = true;
      }
      
      
      if((mouseX > 0 && mouseX < width*0.2f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[2][0] = 1;
        Quiz[2][1] = 0;
        Quiz[2][2] = 0;
        Quiz[2][3] = 0;
        Quiz[2][4] = 0;
      }
      if((mouseX > width*0.2f && mouseX < width*0.4f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[2][0] = 0;
        Quiz[2][1] = 1;
        Quiz[2][2] = 0;
        Quiz[2][3] = 0;
        Quiz[2][4] = 0;
      }
      if((mouseX > width*0.4f && mouseX < width*0.6f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[2][0] = 0;
        Quiz[2][1] = 0;
        Quiz[2][2] = 1;
        Quiz[2][3] = 0;
        Quiz[2][4] = 0;
      }
      if((mouseX > width*0.6f && mouseX < width*0.8f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[2][0] = 0;
        Quiz[2][1] = 0;
        Quiz[2][2] = 0;
        Quiz[2][3] = 1;
        Quiz[2][4] = 0;
      }
      if((mouseX > width*0.8f && mouseX < width) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[2][0] = 0;
        Quiz[2][1] = 0;
        Quiz[2][2] = 0;
        Quiz[2][3] = 0;
        Quiz[2][4] = 1;
      }
      
    break;
    case 15: //tela 15 -- quest\u00e3o 4
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual = 16;
        primeiroacesso = true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual = 14;
        primeiroacesso = true;
      }
      
      
      if((mouseX > 0 && mouseX < width*0.2f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[3][0] = 1;
        Quiz[3][1] = 0;
        Quiz[3][2] = 0;
        Quiz[3][3] = 0;
        Quiz[3][4] = 0;
      }
      if((mouseX > width*0.2f && mouseX < width*0.4f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[3][0] = 0;
        Quiz[3][1] = 1;
        Quiz[3][2] = 0;
        Quiz[3][3] = 0;
        Quiz[3][4] = 0;
      }
      if((mouseX > width*0.4f && mouseX < width*0.6f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[3][0] = 0;
        Quiz[3][1] = 0;
        Quiz[3][2] = 1;
        Quiz[3][3] = 0;
        Quiz[3][4] = 0;
      }
      if((mouseX > width*0.6f && mouseX < width*0.8f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[3][0] = 0;
        Quiz[3][1] = 0;
        Quiz[3][2] = 0;
        Quiz[3][3] = 1;
        Quiz[3][4] = 0;
      }
      if((mouseX > width*0.8f && mouseX < width) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[3][0] = 0;
        Quiz[3][1] = 0;
        Quiz[3][2] = 0;
        Quiz[3][3] = 0;
        Quiz[3][4] = 1;
      }
      
    break;
    case 16: //tela 16 -- quest\u00e3o 5
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual = 17;
        primeiroacesso = true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual = 15;
        primeiroacesso = true;
      }
      
      
      if((mouseX > 0 && mouseX < width*0.2f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[4][0] = 1;
        Quiz[4][1] = 0;
        Quiz[4][2] = 0;
        Quiz[4][3] = 0;
        Quiz[4][4] = 0;
      }
      if((mouseX > width*0.2f && mouseX < width*0.4f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[4][0] = 0;
        Quiz[4][1] = 1;
        Quiz[4][2] = 0;
        Quiz[4][3] = 0;
        Quiz[4][4] = 0;
      }
      if((mouseX > width*0.4f && mouseX < width*0.6f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[4][0] = 0;
        Quiz[4][1] = 0;
        Quiz[4][2] = 1;
        Quiz[4][3] = 0;
        Quiz[4][4] = 0;
      }
      if((mouseX > width*0.6f && mouseX < width*0.8f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[4][0] = 0;
        Quiz[4][1] = 0;
        Quiz[4][2] = 0;
        Quiz[4][3] = 1;
        Quiz[4][4] = 0;
      }
      if((mouseX > width*0.8f && mouseX < width) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[4][0] = 0;
        Quiz[4][1] = 0;
        Quiz[4][2] = 0;
        Quiz[4][3] = 0;
        Quiz[4][4] = 1;
      }
      
    break;
    case 17: //tela 17 -- quest\u00e3o 6
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual = 18;
        primeiroacesso = true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual = 16;
        primeiroacesso = true;
      }
      
      
      if((mouseX > 0 && mouseX < width*0.2f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[5][0] = 1;
        Quiz[5][1] = 0;
        Quiz[5][2] = 0;
        Quiz[5][3] = 0;
        Quiz[5][4] = 0;
      }
      if((mouseX > width*0.2f && mouseX < width*0.4f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[5][0] = 0;
        Quiz[5][1] = 1;
        Quiz[5][2] = 0;
        Quiz[5][3] = 0;
        Quiz[5][4] = 0;
      }
      if((mouseX > width*0.4f && mouseX < width*0.6f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[5][0] = 0;
        Quiz[5][1] = 0;
        Quiz[5][2] = 1;
        Quiz[5][3] = 0;
        Quiz[5][4] = 0;
      }
      if((mouseX > width*0.6f && mouseX < width*0.8f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[5][0] = 0;
        Quiz[5][1] = 0;
        Quiz[5][2] = 0;
        Quiz[5][3] = 1;
        Quiz[5][4] = 0;
      }
      if((mouseX > width*0.8f && mouseX < width) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[5][0] = 0;
        Quiz[5][1] = 0;
        Quiz[5][2] = 0;
        Quiz[5][3] = 0;
        Quiz[5][4] = 1;
      }
      
    break;
    case 18: //tela 18 -- quest\u00e3o 7
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual = 19;
        primeiroacesso = true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual = 17;
        primeiroacesso = true;
      }
      
      
      if((mouseX > 0 && mouseX < width*0.2f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[6][0] = 1;
        Quiz[6][1] = 0;
        Quiz[6][2] = 0;
        Quiz[6][3] = 0;
        Quiz[6][4] = 0;
      }
      if((mouseX > width*0.2f && mouseX < width*0.4f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[6][0] = 0;
        Quiz[6][1] = 1;
        Quiz[6][2] = 0;
        Quiz[6][3] = 0;
        Quiz[6][4] = 0;
      }
      if((mouseX > width*0.4f && mouseX < width*0.6f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[6][0] = 0;
        Quiz[6][1] = 0;
        Quiz[6][2] = 1;
        Quiz[6][3] = 0;
        Quiz[6][4] = 0;
      }
      if((mouseX > width*0.6f && mouseX < width*0.8f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[6][0] = 0;
        Quiz[6][1] = 0;
        Quiz[6][2] = 0;
        Quiz[6][3] = 1;
        Quiz[6][4] = 0;
      }
      if((mouseX > width*0.8f && mouseX < width) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[6][0] = 0;
        Quiz[6][1] = 0;
        Quiz[6][2] = 0;
        Quiz[6][3] = 0;
        Quiz[6][4] = 1;
      }
      
    break;
    case 19: //tela 19 -- quest\u00e3o 8
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual = 20;
        primeiroacesso = true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual = 18;
        primeiroacesso = true;
      }
      
      
      if((mouseX > 0 && mouseX < width*0.2f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[7][0] = 1;
        Quiz[7][1] = 0;
        Quiz[7][2] = 0;
        Quiz[7][3] = 0;
        Quiz[7][4] = 0;
      }
      if((mouseX > width*0.2f && mouseX < width*0.4f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[7][0] = 0;
        Quiz[7][1] = 1;
        Quiz[7][2] = 0;
        Quiz[7][3] = 0;
        Quiz[7][4] = 0;
      }
      if((mouseX > width*0.4f && mouseX < width*0.6f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[7][0] = 0;
        Quiz[7][1] = 0;
        Quiz[7][2] = 1;
        Quiz[7][3] = 0;
        Quiz[7][4] = 0;
      }
      if((mouseX > width*0.6f && mouseX < width*0.8f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[7][0] = 0;
        Quiz[7][1] = 0;
        Quiz[7][2] = 0;
        Quiz[7][3] = 1;
        Quiz[7][4] = 0;
      }
      if((mouseX > width*0.8f && mouseX < width) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[7][0] = 0;
        Quiz[7][1] = 0;
        Quiz[7][2] = 0;
        Quiz[7][3] = 0;
        Quiz[7][4] = 1;
      }
      
    break;
    case 20: //tela 20 -- quest\u00e3o 9
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual = 21;
        primeiroacesso = true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual = 19;
        primeiroacesso = true;
      }
      
      
      if((mouseX > 0 && mouseX < width*0.2f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[8][0] = 1;
        Quiz[8][1] = 0;
        Quiz[8][2] = 0;
        Quiz[8][3] = 0;
        Quiz[8][4] = 0;
      }
      if((mouseX > width*0.2f && mouseX < width*0.4f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[8][0] = 0;
        Quiz[8][1] = 1;
        Quiz[8][2] = 0;
        Quiz[8][3] = 0;
        Quiz[8][4] = 0;
      }
      if((mouseX > width*0.4f && mouseX < width*0.6f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[8][0] = 0;
        Quiz[8][1] = 0;
        Quiz[8][2] = 1;
        Quiz[8][3] = 0;
        Quiz[8][4] = 0;
      }
      if((mouseX > width*0.6f && mouseX < width*0.8f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[8][0] = 0;
        Quiz[8][1] = 0;
        Quiz[8][2] = 0;
        Quiz[8][3] = 1;
        Quiz[8][4] = 0;
      }
      if((mouseX > width*0.8f && mouseX < width) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[8][0] = 0;
        Quiz[8][1] = 0;
        Quiz[8][2] = 0;
        Quiz[8][3] = 0;
        Quiz[8][4] = 1;
      }
      
    break;
    case 21: //tela 21 -- quest\u00e3o 10
    
    if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual = 22;
        primeiroacesso = true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){
        telaAtual = 20;
        primeiroacesso = true;
      }
      
      if((mouseX > 0 && mouseX < width*0.2f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[9][0] = 1;
        Quiz[9][1] = 0;
        Quiz[9][2] = 0;
        Quiz[9][3] = 0;
        Quiz[9][4] = 0;
      }
      if((mouseX > width*0.2f && mouseX < width*0.4f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[9][0] = 0;
        Quiz[9][1] = 1;
        Quiz[9][2] = 0;
        Quiz[9][3] = 0;
        Quiz[9][4] = 0;
      }
      if((mouseX > width*0.4f && mouseX < width*0.6f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[9][0] = 0;
        Quiz[9][1] = 0;
        Quiz[9][2] = 1;
        Quiz[9][3] = 0;
        Quiz[9][4] = 0;
      }
      if((mouseX > width*0.6f && mouseX < width*0.8f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[9][0] = 0;
        Quiz[9][1] = 0;
        Quiz[9][2] = 0;
        Quiz[9][3] = 1;
        Quiz[9][4] = 0;
      }
      if((mouseX > width*0.8f && mouseX < width) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){
        Quiz[9][0] = 0;
        Quiz[9][1] = 0;
        Quiz[9][2] = 0;
        Quiz[9][3] = 0;
        Quiz[9][4] = 1;
      }
      
    break;
    
    case 22: //tela 22 -- final do QUIZ
    if((mouseX > 0 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){
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
/* 
                                  APLICATIVO EDUCACIONAL FEITO POR:
                                LUIZ AUGUSTO DE AZAMBUJA RAMOS MATIAS
                                  JO\u00c3O HENRIQUE CECCATTO DE CAMPOS

----------------------                                                          ----------------------
---------------                                                                        ---------------
--------------                                                                          --------------
-------------   ABA UTILIZADA PARA ADMINISTRAR TODA INTERFACE VISUAL DAS TELAS (DESIGN)  -------------
--------------                                                                          --------------
---------------                                                                        ---------------
----------------------                                                          ----------------------
*/


public void tela1(){ //TELA INICIAL DO QUIZ
  telaAtual = 1;
  if (primeiroacesso){ //referencia e instancia o objeto MyMovie, esse if serve de controlador para o programa realizar esta a\u00e7\u00e3o apenas uma vez
    myMovie = new Movie(this, "SaoPauloCinematic.mp4"); //v\u00eddeo de fundo da tela inicial
    myMovie.loop();
    myMovie.volume(0);
    primeiroacesso = false;
    thread("sorrisoMudando");
  }
  imageMode(CORNER);
  noStroke();
  image(myMovie, 0, 0, width, height); //reproduz o v\u00eddeo em tela cheia
  fill(0, 170); //adiciona opacidade de 80% no v\u00eddeo (204 de 255)
  rect(0, 0, width, height); //cria um ret\u00e2ngulo para aplicar efeito de opacidade
  textFont(fontTitle);
  fill(255);
  textAlign(CENTER);
  text("S\u00e3o Paulo x Tecnologia", width/2, height/4); //texto de t\u00edtulo
  textFont(fontSubTitle);
  textSize(26);
  text("S\u00e3o Paulo representa um dos 9 maiores polos tecnol\u00f3gicos do mundo, sendo refer\u00eancia em startups!\n\nQue tal aprender um pouco mais sobre?\n="+smile, width/2, height/2); //texto de subt\u00edtulo
  
  
  if((mouseX > 0 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xff43bdcc);}else{fill(0xff35939e);}
  textFont(fontSubTitle);
  rect(0, 0.85f*height, width, height);
  fill(255);
  textAlign(CENTER);
  text("Avan\u00e7ar", width/2, 0.925f*height*1.02f);
}

public void tela2(){ //TELA DE INTRODU\u00c7\u00c3O SOBRE S\u00c3O PAULO
  telaAtual = 2;
  if(primeiroacesso){
    imagem = loadImage("saopaulowallpaper.jpg");
    imagem.resize(300,300);
    primeiroacesso=false;
  }
  
  fill(255);
  rect(0,0,width,height);
  imageMode(CENTER);
  image(imagem, width*0.85f, height/3);
  if((mouseX > ((width*0.85f)-150) && mouseX < ((width*0.85f)+150)) && ((mouseY > (height/3)-150) && (mouseY < (height/3)+150))){
    ampliaricon.resize(300,300);
    image(ampliaricon, width*0.85f, height/3);
  }
  imageMode(CORNER);
  textFont(fontTitle);
  textAlign(LEFT);
  fill(0);
  text("Introdu\u00e7\u00e3o", width/100, height/10);
  textFont(fontText);
  textSize(20);
  //Texto da tela
  text("S\u00e3o Paulo est\u00e1 se tornando um dos principais polos tecnol\u00f3gicos do pa\u00eds: a maior cidade \u00e9 sede de\nin\u00fameros escrit\u00f3rios das maiores empresas de tecnologia do mundo, tem algumas das melhores\nuniversidades e \u00e9 o principal destino de imigra\u00e7\u00e3o.\n\nEstudos sobre ambientes de inova\u00e7\u00e3o dizem que \u00e9 preciso cinco vari\u00e1veis em uma cidade para que\nela possa florescer: acesso a talento, acesso a capital, cultura empreendedora, ambiente regulat\u00f3rio\ne densidade. Densidade significa que por mais que o mundo seja digital \u00e9 preciso um local f\u00edsico\n[ou v\u00e1rios] onde as pessoas se encontram e circulam para falar de tecnologia, inova\u00e7\u00e3o, novos mode-\nlos de neg\u00f3cio, formas de trabalhar e como mudar o mundo.\n\nA Prefeitura iniciou o programa Fab Lab Livre SP em 2015, uma iniciativa que d\u00e1 acesso a tecnologias avan\u00e7adas para a popula\u00e7\u00e3o. S\u00e3o 12\nespa\u00e7os espalhados pela cidade em que qualquer pessoa agenda um hor\u00e1rio para utilizar os equipamentos dispon\u00edveis. Impressoras 3D,\ncortadoras a laser, computadores com software de desenho digital, al\u00e9m de equipamentos e ferramentas de eletr\u00f4nica, rob\u00f3tica, marcena-\nria e mec\u00e2nica s\u00e3o alguns dos materiais dispon\u00edveis nesses Fab Labs p\u00fablicos.", width/50, height/6); 
  if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xff43bdcc);}else{fill(0xff35939e);}
  
  rect(width/2, 0.85f*height, width, height);
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avan\u00e7ar", 0.75f*width, 0.925f*height*1.02f);
  
  if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xfffc4141);}else{fill(0xffc43333);}
  
  rect(0, 0.85f*height, width/2, height);
  fill(255);
  textFont(fontSubTitle);
  text("Voltar", 0.25f*width, 0.925f*height*1.02f);
  
  
}

public void tela3(){ //TELA DE INTRODU\u00c7\u00c3O SOBRE S\u00c3O PAULO 2
  telaAtual = 3;
  if(primeiroacesso){
    imagem = loadImage("saopaulowallpaper2.jpg");
    imagem.resize(300,300);
    primeiroacesso=false;
  }
  
  fill(255);
  rect(0,0,width,height);
  imageMode(CENTER);
  image(imagem, width*0.85f, height/3);
  if((mouseX > ((width*0.85f)-150) && mouseX < ((width*0.85f)+150)) && ((mouseY > (height/3)-150) && (mouseY < (height/3)+150))){
    ampliaricon.resize(300,300);
    image(ampliaricon, width*0.85f, height/3);
  }
  imageMode(CORNER);
  textFont(fontTitle);
  textAlign(LEFT);
  fill(0);
  text("Introdu\u00e7\u00e3o", width/100, height/10);
  textFont(fontText);
  textSize(20);
  //Texto da tela
  text("H\u00e1 alguns anos a revista Wired identificou Campinas como um dos n\u00facleos de tecnologia de ponta de\ntodo o Hemisf\u00e9rio Sul. Boa parte do vigor tecnol\u00f3gico da cidade deve-se \u00e0 exist\u00eancia da Ciatec (Com-\npanhia de Desenvolvimento do P\u00f3lo de Alta Tecnologia de Campinas), uma empresa municipal de eco-\nnomia mista. Recentemente, Campinas tamb\u00e9m se tornou refer\u00eancia nacional nos neg\u00f3cio dos bio-\ncombust\u00edveis com o Centro de Ci\u00eancia e Tecnologia do Bioetanol (CTBE), capitaneado pelo governo fe-\nderal.\n\nApesar de estarmos em um mundo cada vez mais digital, essa densidade que exige presen\u00e7a f\u00edsica e\nque vem beneficiando S\u00e3o Paulo, a cidade principalmente, \u00e9 essencial.", width/50, height/6); 
  if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xff43bdcc);}else{fill(0xff35939e);}
  
  rect(width/2, 0.85f*height, width, height);
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avan\u00e7ar", 0.75f*width, 0.925f*height*1.02f);
  
  if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xfffc4141);}else{fill(0xffc43333);}
  
  rect(0, 0.85f*height, width/2, height);
  fill(255);
  textFont(fontSubTitle);
  text("Voltar", 0.25f*width, 0.925f*height*1.02f);
  
  
}

public void tela4(){ // TELA SOBRE O QUE \u00c9 UMA STARTUP
  telaAtual = 4;
  fill(255);
  rect(0,0,width,height);
  imageMode(CORNER);
  textFont(fontTitle);
  textAlign(LEFT);
  fill(0);
  text("O que \u00e9 uma startup?", width/100, height/10);
  textAlign(LEFT);
  textFont(fontText);
  textSize(20);
  //Texto da tela
  text("S\u00e3o empresas emergentes, normalmente de base tecnol\u00f3gica, possuem esp\u00edrito empreendedor e uma constante busca por um modelo de\nneg\u00f3cio inovador. Este modelo de neg\u00f3cios \u00e9 a maneira como a empresa emergente gera valor \u2013 ou seja, como transforma seu trabalho em\ndinheiro.\n\nUm exemplo \u00e9 o modelo de neg\u00f3cios do Google que se baseia em cobrar por cada clique nos an\u00fancios mostrados nos resultados de busca.\n\nOutro exemplo seria o modelo de neg\u00f3cio de franquias: o franqueado paga royalties por uma marca, mas tem acesso a uma receita de suces-\nso com suporte do franquiador \u2013 e por isso aumenta suas chances de gerar lucro. Empresas que criam modelos de neg\u00f3cio altamente escal\u00e1-\nveis, a baixos custos e a partir de ideias inovadoras, s\u00e3o empresas startups. Empresas emergentes n\u00e3o s\u00e3o somente empresas de internet.\nElas s\u00f3 s\u00e3o mais frequentes na internet porque \u00e9 bem mais barato criar uma empresa de software do que uma ind\u00fastria.\n\nH\u00e1 tamb\u00e9m o sentido de \"startar\" o reposicionamento de uma marca, quando \u00e9 criado um novo produto ou servi\u00e7o e o lan\u00e7am com um novo\nnome e modelo de neg\u00f3cios, os diferenciando da antiga empresa.", width/50, height/6);
  
  
  if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xff43bdcc);}else{fill(0xff35939e);}
  textAlign(CENTER);
  rect(width/2, 0.85f*height, width, height);
  fill(255);
  textFont(fontSubTitle);
  text("Avan\u00e7ar", 0.75f*width, 0.925f*height*1.02f);
  
  if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xfffc4141);}else{fill(0xffc43333);}
  
  rect(0, 0.85f*height, width/2, height);
  fill(255);
  textFont(fontSubTitle);
  text("Voltar", 0.25f*width, 0.925f*height*1.02f);
}

public void tela5(){ // TELA SOBRE STARTUPS 1
  telaAtual = 5;
  if(primeiroacesso){
    imagem = loadImage("DrCuco.jpg");
    imagem.resize(Math.round(232*1.5f),Math.round(169*1.5f));
    primeiroacesso=false;
  }
  
  fill(255);
  rect(0,0,width,height);
  imageMode(CENTER);
  image(imagem, width/2, height*0.6f);
  imageMode(CORNER);
  textFont(fontTitle);
  textAlign(LEFT);
  fill(0);
  text("Startup Dr. Cuco", width/100, height/10);
  textFont(fontText);
  textSize(20);
  //Texto da tela
  textAlign(CENTER);
  text("O Dr. Cuco \u00e9 um aplicativo que funciona como uma \u201cenfermeira digital\u201d: por meio da ferramenta, \u00e9 poss\u00edvel receber lembretes de medica-\nmentos para doen\u00e7as como colesterol alto, diabetes e hipertens\u00e3o, por exemplo. Al\u00e9m de poder criar manualmente seus alarmes, o app\npermite receber automaticamente a prescri\u00e7\u00e3o feita por seu m\u00e9dico, j\u00e1 convertida em lembretes. A startup foi vencedora do Concurso de\nPlanos de Neg\u00f3cios para Universit\u00e1rios do SEBRAE/SC, na categoria Neg\u00f3cios Digitais.\n\nO Dr. Cuco j\u00e1 recebeu um investimento-anjo e hoje est\u00e1 no Cubo, espa\u00e7o para startups do banco Ita\u00fa Unibanco.", width/2, height/6); 
  if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xff43bdcc);}else{fill(0xff35939e);}
  
  rect(width/2, 0.85f*height, width, height);
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avan\u00e7ar", 0.75f*width, 0.925f*height*1.02f);
  
  if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xfffc4141);}else{fill(0xffc43333);}
  
  rect(0, 0.85f*height, width/2, height);
  fill(255);
  textFont(fontSubTitle);
  text("Voltar", 0.25f*width, 0.925f*height*1.02f);  
}

public void tela6(){ // TELA SOBRE STARTUPS 2
  telaAtual = 6;
  if(primeiroacesso){
    imagem = loadImage("MePassaAi.png");
    primeiroacesso=false;
  }
  
  fill(255);
  rect(0,0,width,height);
  imageMode(CENTER);
  image(imagem, width/2, height*0.6f);
  imageMode(CORNER);
  textFont(fontTitle);
  textAlign(LEFT);
  fill(0);
  text("Startup Me Passa A\u00ed", width/100, height/10);
  textFont(fontText);
  textSize(20);
  //Texto da tela
  textAlign(CENTER);
  text("A Me Passa A\u00ed se autodescreve como uma esp\u00e9cie de \"Netflix dos estudos universit\u00e1rios\": os estudantes assinam o servi\u00e7o e acessam\nvideoaulas produzidas por alunos que se destacam, com posterior certifica\u00e7\u00e3o por professores. O neg\u00f3cio come\u00e7ou em 2014 e tem 25 mil\nusu\u00e1rios cadastrados. Passou pelo processo de investimento chamado equity crowdfunding. Por meio dele, pessoas f\u00edsicas podem dar\ndinheiro a uma startup em troca de participa\u00e7\u00e3o do neg\u00f3cio. No caso da Me Passa A\u00ed, 250 mil reais foram arrecadados em troca de 12,5% de\nparticipa\u00e7\u00e3o societ\u00e1ria, dilu\u00edda em 54 investimentos.", width/2, height/6); 
  if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xff43bdcc);}else{fill(0xff35939e);}
  
  rect(width/2, 0.85f*height, width, height);
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avan\u00e7ar", 0.75f*width, 0.925f*height*1.02f);
  
  if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xfffc4141);}else{fill(0xffc43333);}
  
  rect(0, 0.85f*height, width/2, height);
  fill(255);
  textFont(fontSubTitle);
  text("Voltar", 0.25f*width, 0.925f*height*1.02f); 
}


public void tela7(){ // TELA SOBRE STARTUPS 3
  telaAtual = 7;
  if(primeiroacesso){
    imagem = loadImage("GuiaBolso.png");
    imagem.resize(Math.round(830*0.8f), Math.round(280*0.8f));
    primeiroacesso=false;
  }
  
  fill(255);
  rect(0,0,width,height);
  imageMode(CENTER);
  image(imagem, width/2, height*0.7f);
  imageMode(CORNER);
  textFont(fontTitle);
  textAlign(LEFT);
  fill(0);
  text("Startup Guia Bolso", width/100, height/10);
  textFont(fontText);
  textSize(20);
  //Texto da tela
  textAlign(CENTER);
  text("O GuiaBolso \u00e9 um aplicativo que promete melhorar a sa\u00fade financeira do brasileiro. A startup aposta na simplicidade da experi\u00eancia do\nusu\u00e1rio como diferencial: al\u00e9m de ser gratuito, o app exporta e categoriza automaticamente todos as receitas e despesas da conta banc\u00e1ria\ndo cliente.\n\nA ideia chamou a aten\u00e7\u00e3o at\u00e9 mesmo do Banco Mundial em 2016. Em maio, a International Finance Corporation (IFC), ligada ao banco, e\noutros investidores dos fundos Kaszek Ventures, Ribbit Capital e QED Investors aportaram 60 milh\u00f5es de reais no neg\u00f3cio.\n\nO pr\u00f3ximo passo do GuiaBolso provavelmente ser\u00e1 o oferecimento de servi\u00e7os financeiros, o que poder\u00e1 dar trabalho at\u00e9 para os grandes\nbancos \u2013 algo em que as fintechs j\u00e1 s\u00e3o especialistas. ", width/2, height/6); 
  if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xff43bdcc);}else{fill(0xff35939e);}
  
  rect(width/2, 0.85f*height, width, height);
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avan\u00e7ar", 0.75f*width, 0.925f*height*1.02f);
  
  if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xfffc4141);}else{fill(0xffc43333);}
  
  rect(0, 0.85f*height, width/2, height);
  fill(255);
  textFont(fontSubTitle);
  text("Voltar", 0.25f*width, 0.925f*height*1.02f); 
}

public void tela8(){ // TELA SOBRE STARTUPS 4
  telaAtual = 8;
  if(primeiroacesso){
    imagem = loadImage("meliuz.png");
    primeiroacesso=false;
  }
  
  fill(255);
  rect(0,0,width,height);
  imageMode(CENTER);
  image(imagem, width/2, height*0.6f);
  imageMode(CORNER);
  textFont(fontTitle);
  textAlign(LEFT);
  fill(0);
  text("Startup M\u00e9liuz", width/100, height/10);
  textFont(fontText);
  textSize(20);
  //Texto da tela
  textAlign(CENTER);
  text("A M\u00e9liuz \u00e9 um programa de fidelidade que, em vez de dar pontos, devolve parte do seu dinheiro direto na conta.\n\nCriada em 2011, a startup vem crescendo exponencialmente: segundo a empresa, 23 milh\u00f5es de reais j\u00e1 foram repassados \u00e0s contas\nbanc\u00e1rias de seus usu\u00e1rios.\n\nO maior premio deles foi o de startup do ano, no pr\u00eamio Startup Awards 2016. No final de 2015, o neg\u00f3cio j\u00e1 havia conquistado um aporte\ndo investidor franc\u00eas Fabrice Grinda, um dos criadores da OLX. O valor do investimento n\u00e3o foi divulgado.", width/2, height/6); 
  if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xff43bdcc);}else{fill(0xff35939e);}
  
  rect(width/2, 0.85f*height, width, height);
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avan\u00e7ar", 0.75f*width, 0.925f*height*1.02f);
  
  if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xfffc4141);}else{fill(0xffc43333);}
  
  rect(0, 0.85f*height, width/2, height);
  fill(255);
  textFont(fontSubTitle);
  text("Voltar", 0.25f*width, 0.925f*height*1.02f); 
}

public void tela9(){ // TELA SOBRE STARTUPS 5
  telaAtual = 9;
  if(primeiroacesso){
    imagem = loadImage("movile.png");
    imagem.resize(Math.round(418*0.7f),Math.round(342*0.7f));
    primeiroacesso=false;
  }
  
  fill(255);
  rect(0,0,width,height);
  imageMode(CENTER);
  image(imagem, width/2, height*0.6f);
  imageMode(CORNER);
  textFont(fontTitle);
  textAlign(LEFT);
  fill(0);
  text("Startup Movile", width/100, height/10);
  textFont(fontText);
  textSize(20);
  //Texto da tela
  textAlign(CENTER);
  text("A Movile \u00e9 uma das maiores startups do Brasil. A empresa paulista de conte\u00fado para celulares respons\u00e1vel por aplicativos como iFood e\nPlayKids \u00e9 o neg\u00f3cio mais cotado para se tornar o primeiro unic\u00f3rnio brasileiro \u2013 neg\u00f3cios avaliados em um bilh\u00e3o de d\u00f3lares (ou mais).\n\nA Movile aposta em setores muito competitivos e se destaca, mesmo fora do pa\u00eds. A agressividade e urg\u00eancia torna a Movile um grande\nexemplo brasileiro de empreendedorismo.", width/2, height/6); 
  if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xff43bdcc);}else{fill(0xff35939e);}
  
  rect(width/2, 0.85f*height, width, height);
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avan\u00e7ar", 0.75f*width, 0.925f*height*1.02f);
  
  if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xfffc4141);}else{fill(0xffc43333);}
  
  rect(0, 0.85f*height, width/2, height);
  fill(255);
  textFont(fontSubTitle);
  text("Voltar", 0.25f*width, 0.925f*height*1.02f); 
}

public void tela10(){ // TELA SOBRE STARTUPS 6
  telaAtual = 10;
  if(primeiroacesso){
    imagem = loadImage("Nubank.png");
    imagem.resize(Math.round(300*0.6f), Math.round(300*0.6f));
    primeiroacesso=false;
  }
  
  fill(255);
  rect(0,0,width,height);
  imageMode(CENTER);
  image(imagem, width/2, height*0.65f);
  imageMode(CORNER);
  textFont(fontTitle);
  textAlign(LEFT);
  fill(0);
  text("Startup Nubank", width/100, height/10);
  textFont(fontText);
  textSize(20);
  //Texto da tela
  textAlign(CENTER);
  text("O Nubank \u00e9 provavelmente a startup mais popular de 2016: seu nome n\u00e3o saiu da boca dos brasileiros, o que gerou uma fila de sete milh\u00f5es\nde pessoas querendo o cart\u00e3o de cr\u00e9dito da marca \u2013 administrado totalmente online e sem taxa de administra\u00e7\u00e3o.\n\n\u00c9 uma startup de um setor que anda muito popular \u2013 as fintechs \u2013 e s\u00e3o o exemplo de maior sucesso nesse mercado.\n\nEm 2016, o neg\u00f3cio conseguiu o maior investimento da sua hist\u00f3ria, US$ 80 milh\u00f5es. At\u00e9 hoje, o Nubank j\u00e1 arrecadou mais de 600 milh\u00f5es\nde reais nas cinco rodadas de investimentos acumuladas. Muitos colocam a startup no mesmo grupo da Movile: o de futuros unic\u00f3rnios\nbrasileiros.", width/2, height/6); 
  if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xff43bdcc);}else{fill(0xff35939e);}
  
  rect(width/2, 0.85f*height, width, height);
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avan\u00e7ar", 0.75f*width, 0.925f*height*1.02f);
  
  if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xfffc4141);}else{fill(0xffc43333);}
  
  rect(0, 0.85f*height, width/2, height);
  fill(255);
  textFont(fontSubTitle);
  text("Voltar", 0.25f*width, 0.925f*height*1.02f); 
}




// ----- IN\u00cdCIO DO QUIZ ----- 
public void tela11(){ //TELA DE IN\u00cdCIO DO QUIZ
  telaAtual = 11;
  if (primeiroacesso){ //referencia e instancia o objeto MyMovie, esse if serve de controlador para o programa realizar esta a\u00e7\u00e3o apenas uma vez
    myMovie = new Movie(this, "SaoPauloCinematic.mp4"); //v\u00eddeo de fundo da tela inicial
    myMovie.loop();
    myMovie.volume(0);
    primeiroacesso = false;
  }
  imageMode(CORNER);
  image(myMovie, 0, 0, width, height); //reproduz o v\u00eddeo em tela cheia
  fill(0, 170); //adiciona opacidade de 80% no v\u00eddeo (204 de 255)
  rect(0, 0, width, height); //cria um ret\u00e2ngulo para aplicar efeito de opacidade
  textFont(fontTitle);
  fill(255);
  textAlign(CENTER);
  text("In\u00edcio do Quiz", width/2, height/4); //texto de t\u00edtulo
  textFont(fontSubTitle);
  text("Hora de testar seus conhecimentos\nsobre o que aprendeu aqui :)", width/2, height/2); //texto de subt\u00edtulo
  
  if((mouseX > 0 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xff43bdcc);}else{fill(0xff35939e);}
  
  rect(0, 0.85f*height, width, height);
  fill(255);
  textAlign(CENTER);
  text("Avan\u00e7ar", width/2, 0.925f*height*1.02f);
}

public void tela12(){ //Quest\u00e3o quiz
  telaAtual = 12;
  
  fill(255);
  rect(0,0,width,height);
  imageMode(CORNER);
  fill(0);
  textFont(fontTitle);
  textAlign(CENTER);
  text("Quest\u00e3o 1", width/2, height/10);
  textFont(fontSubTitle);
  textSize(28);
  
  text("Qual a finalidade das startups?\n\nA. Programa de investimento para empresas emergentes.\nB. Guia para empresas iniciantes.\nC. Manuten\u00e7\u00e3o de empresas ja est\u00e1veis.\nD. Ajuda de empresas para usu\u00e1rios.\nE. Apoio para investidores que apostam em qualquer empresa.", width*0.35f, height/4);
  
  //Bot\u00f5es das afirmativas
  fill(200);
  stroke(0);
  textFont(fontTitle);
  if((mouseX > 0 && mouseX < width*0.2f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  
  if(Quiz[0][0] == 1){
    fill(0xff707070);
    rect(0        , 0.7f*height, width*0.2f, 0.84f*height);
    fill(255);
    text("A", width*0.1f, height*0.81f);
  }else{
    rect(0        , 0.7f*height, width*0.2f, 0.84f*height);
    fill(0);
    text("A", width*0.1f, height*0.81f);
  }
  
  if((mouseX > width*0.2f && mouseX < width*0.4f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  
  if(Quiz[0][1] == 1){
    fill(0xff707070);
    rect(width*0.2f, 0.7f*height, width*0.4f, 0.84f*height);
    fill(255);
    text("B", width*0.3f, height*0.81f);
  }else{
    rect(width*0.2f, 0.7f*height, width*0.4f, 0.84f*height);
    fill(0);
    text("B", width*0.3f, height*0.81f);
  }
  
  if((mouseX > width*0.4f && mouseX < width*0.6f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  if(Quiz[0][2] == 1){
    fill(0xff707070);
    rect(width*0.4f, 0.7f*height, width*0.6f, 0.84f*height);
    fill(255);
    text("C", width*0.5f, height*0.81f);
  }else{
    rect(width*0.4f, 0.7f*height, width*0.6f, 0.84f*height);
    fill(0);
    text("C", width*0.5f, height*0.81f);
  }
  
  if((mouseX > width*0.6f && mouseX < width*0.8f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  if(Quiz[0][3] == 1){
    fill(0xff707070);
    rect(width*0.6f, 0.7f*height, width*0.8f, 0.84f*height);
    fill(255);
    text("D", width*0.7f, height*0.81f);
  }else{
    rect(width*0.6f, 0.7f*height, width*0.8f, 0.84f*height);
    fill(0);
    text("D", width*0.7f, height*0.81f);
  }
  
  if((mouseX > width*0.8f && mouseX < width) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  if(Quiz[0][4] == 1){
    fill(0xff707070);
    rect(width*0.8f, 0.7f*height, width, 0.84f*height);
    fill(255);
    text("E", width*0.9f, height*0.81f);
  }else{
    rect(width*0.8f, 0.7f*height, width, 0.84f*height);
    fill(0);
    text("E", width*0.9f, height*0.81f);
  }
  noStroke();
  
  if((mouseX > 0 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xff43bdcc);}else{fill(0xff35939e);}
  
  rect(0, 0.85f*height, width, height);
  
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avan\u00e7ar", 0.5f*width, 0.925f*height*1.02f);
  
  Respondidas();
}

public void tela13(){ //Quest\u00e3o quiz 2
  telaAtual = 13;
  
  fill(255);
  rect(0,0,width,height);
  imageMode(CORNER);
  fill(0);
  textFont(fontTitle);
  textAlign(CENTER);
  text("Quest\u00e3o 2", width/2, height/10);
  textFont(fontSubTitle);
  textSize(20);
  
  text("Nubank, considerada a startup mais popular de 2016, com ideia inovadora,\nao todo conseguiu arrecadar mais de 600 milh\u00f5es de reais divididos em\n5 rodadas de investimentos. O \"roxinho\", como \u00e9 chamado o cart\u00e3o de cr\u00e9dito da marca,\nteve uma fila de espera que ultrapassou 7 milh\u00f5es de pessoas.\nQual foi o maior beneficio do cart\u00e3o para atrair tantos interessados?\n\nA. Material Ecol\u00f3gico.\nB. F\u00e1cil acesso.\nC. Taxas inferiores aos concorrentes.\nD. Administra\u00e7\u00e3o totalmente online e sem taxa.\nE. Sistema de organiza\u00e7\u00e3o pr\u00e1tico.", width*0.4f, height*0.2f);
  
  //Bot\u00f5es das afirmativas
  fill(200);
  stroke(0);
  textFont(fontTitle);
  if((mouseX > 0 && mouseX < width*0.2f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  
  if(Quiz[1][0] == 1){
    fill(0xff707070);
    rect(0        , 0.7f*height, width*0.2f, 0.84f*height);
    fill(255);
    text("A", width*0.1f, height*0.81f);
  }else{
    rect(0        , 0.7f*height, width*0.2f, 0.84f*height);
    fill(0);
    text("A", width*0.1f, height*0.81f);
  }
  
  if((mouseX > width*0.2f && mouseX < width*0.4f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  
  if(Quiz[1][1] == 1){
    fill(0xff707070);
    rect(width*0.2f, 0.7f*height, width*0.4f, 0.84f*height);
    fill(255);
    text("B", width*0.3f, height*0.81f);
  }else{
    rect(width*0.2f, 0.7f*height, width*0.4f, 0.84f*height);
    fill(0);
    text("B", width*0.3f, height*0.81f);
  }
  
  if((mouseX > width*0.4f && mouseX < width*0.6f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  if(Quiz[1][2] == 1){
    fill(0xff707070);
    rect(width*0.4f, 0.7f*height, width*0.6f, 0.84f*height);
    fill(255);
    text("C", width*0.5f, height*0.81f);
  }else{
    rect(width*0.4f, 0.7f*height, width*0.6f, 0.84f*height);
    fill(0);
    text("C", width*0.5f, height*0.81f);
  }
  
  if((mouseX > width*0.6f && mouseX < width*0.8f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  if(Quiz[1][3] == 1){
    fill(0xff707070);
    rect(width*0.6f, 0.7f*height, width*0.8f, 0.84f*height);
    fill(255);
    text("D", width*0.7f, height*0.81f);
  }else{
    rect(width*0.6f, 0.7f*height, width*0.8f, 0.84f*height);
    fill(0);
    text("D", width*0.7f, height*0.81f);
  }
  
  if((mouseX > width*0.8f && mouseX < width) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  if(Quiz[1][4] == 1){
    fill(0xff707070);
    rect(width*0.8f, 0.7f*height, width, 0.84f*height);
    fill(255);
    text("E", width*0.9f, height*0.81f);
  }else{
    rect(width*0.8f, 0.7f*height, width, 0.84f*height);
    fill(0);
    text("E", width*0.9f, height*0.81f);
  }
  noStroke();
  
  if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xff43bdcc);}else{fill(0xff35939e);}
  
  rect(width/2, 0.85f*height, width, height);
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avan\u00e7ar", 0.75f*width, 0.925f*height*1.02f);
  
  if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xfffc4141);}else{fill(0xffc43333);}
  
  rect(0, 0.85f*height, width/2, height);
  
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avan\u00e7ar", 0.75f*width, 0.925f*height*1.02f);
  fill(255);
  textFont(fontSubTitle);
  text("Voltar", 0.25f*width, 0.925f*height*1.02f);
  Respondidas();
}

public void tela14(){ //Quest\u00e3o quiz 3
  telaAtual = 14;
  
  fill(255);
  rect(0,0,width,height);
  imageMode(CORNER);
  fill(0);
  textFont(fontTitle);
  textAlign(CENTER);
  text("Quest\u00e3o 3", width/2, height/10);
  textFont(fontSubTitle);
  textSize(20);
  
  text("Com crescimento exponencial, a Meliuz tem caido no agrado dos seus usuarios pela inovadora ideia de\nretornar uma parte do dinheiro gasto direto na conta, ao contrario dos tradicionais acumulos de pontos.\nQual foi o premio ganhou pela M\u00e9liuz em 2016?\n\nA. Startup mais rent\u00e1vel\nB. Startup do ano\nC. Melhor aplicativo\nD. Startup promissora\nE. Startup crescente.", width*0.4f, height*0.25f);
  
  //Bot\u00f5es das afirmativas
  fill(200);
  stroke(0);
  textFont(fontTitle);
  if((mouseX > 0 && mouseX < width*0.2f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  
  if(Quiz[2][0] == 1){
    fill(0xff707070);
    rect(0        , 0.7f*height, width*0.2f, 0.84f*height);
    fill(255);
    text("A", width*0.1f, height*0.81f);
  }else{
    rect(0        , 0.7f*height, width*0.2f, 0.84f*height);
    fill(0);
    text("A", width*0.1f, height*0.81f);
  }
  
  if((mouseX > width*0.2f && mouseX < width*0.4f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  
  if(Quiz[2][1] == 1){
    fill(0xff707070);
    rect(width*0.2f, 0.7f*height, width*0.4f, 0.84f*height);
    fill(255);
    text("B", width*0.3f, height*0.81f);
  }else{
    rect(width*0.2f, 0.7f*height, width*0.4f, 0.84f*height);
    fill(0);
    text("B", width*0.3f, height*0.81f);
  }
  
  if((mouseX > width*0.4f && mouseX < width*0.6f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  if(Quiz[2][2] == 1){
    fill(0xff707070);
    rect(width*0.4f, 0.7f*height, width*0.6f, 0.84f*height);
    fill(255);
    text("C", width*0.5f, height*0.81f);
  }else{
    rect(width*0.4f, 0.7f*height, width*0.6f, 0.84f*height);
    fill(0);
    text("C", width*0.5f, height*0.81f);
  }
  
  if((mouseX > width*0.6f && mouseX < width*0.8f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  if(Quiz[2][3] == 1){
    fill(0xff707070);
    rect(width*0.6f, 0.7f*height, width*0.8f, 0.84f*height);
    fill(255);
    text("D", width*0.7f, height*0.81f);
  }else{
    rect(width*0.6f, 0.7f*height, width*0.8f, 0.84f*height);
    fill(0);
    text("D", width*0.7f, height*0.81f);
  }
  
  if((mouseX > width*0.8f && mouseX < width) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  if(Quiz[2][4] == 1){
    fill(0xff707070);
    rect(width*0.8f, 0.7f*height, width, 0.84f*height);
    fill(255);
    text("E", width*0.9f, height*0.81f);
  }else{
    rect(width*0.8f, 0.7f*height, width, 0.84f*height);
    fill(0);
    text("E", width*0.9f, height*0.81f);
  }
  noStroke();
  
  if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xff43bdcc);}else{fill(0xff35939e);}
  
  rect(width/2, 0.85f*height, width, height);
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avan\u00e7ar", 0.75f*width, 0.925f*height*1.02f);
  
  if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xfffc4141);}else{fill(0xffc43333);}
  
  rect(0, 0.85f*height, width/2, height);
  
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avan\u00e7ar", 0.75f*width, 0.925f*height*1.02f);
  fill(255);
  textFont(fontSubTitle);
  text("Voltar", 0.25f*width, 0.925f*height*1.02f);
  Respondidas();
}

public void tela15(){ //Quest\u00e3o quiz 4
  telaAtual = 15;
  
  fill(255);
  rect(0,0,width,height);
  imageMode(CORNER);
  fill(0);
  textFont(fontTitle);
  textAlign(CENTER);
  text("Quest\u00e3o 4", width/2, height/10);
  textFont(fontSubTitle);
  textSize(20);
  
  text("Uma empresa caracterizada como UNIC\u00d3RNIO \u00e9 caracterizada como uma empresa que possui negocios\navaliados em um bilh\u00e3o de dolares ou mais. No brasil existe uma empresa que tem\npotencial para chegar a esses status.\nDentre as alternativas, qual \u00e9 a empresa que pode virar\no primeiro unic\u00f3rnio brasileiro?\n\nA. Movile.\nB. Dr. Cuco.\nC. Me Passa A\u00ed\nD. Guia Bolso\nE. M\u00e9liuz.", width*0.4f, height*0.25f);
  
  //Bot\u00f5es das afirmativas
  fill(200);
  stroke(0);
  textFont(fontTitle);
  if((mouseX > 0 && mouseX < width*0.2f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  
  if(Quiz[3][0] == 1){
    fill(0xff707070);
    rect(0        , 0.7f*height, width*0.2f, 0.84f*height);
    fill(255);
    text("A", width*0.1f, height*0.81f);
  }else{
    rect(0        , 0.7f*height, width*0.2f, 0.84f*height);
    fill(0);
    text("A", width*0.1f, height*0.81f);
  }
  
  if((mouseX > width*0.2f && mouseX < width*0.4f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  
  if(Quiz[3][1] == 1){
    fill(0xff707070);
    rect(width*0.2f, 0.7f*height, width*0.4f, 0.84f*height);
    fill(255);
    text("B", width*0.3f, height*0.81f);
  }else{
    rect(width*0.2f, 0.7f*height, width*0.4f, 0.84f*height);
    fill(0);
    text("B", width*0.3f, height*0.81f);
  }
  
  if((mouseX > width*0.4f && mouseX < width*0.6f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  if(Quiz[3][2] == 1){
    fill(0xff707070);
    rect(width*0.4f, 0.7f*height, width*0.6f, 0.84f*height);
    fill(255);
    text("C", width*0.5f, height*0.81f);
  }else{
    rect(width*0.4f, 0.7f*height, width*0.6f, 0.84f*height);
    fill(0);
    text("C", width*0.5f, height*0.81f);
  }
  
  if((mouseX > width*0.6f && mouseX < width*0.8f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  if(Quiz[3][3] == 1){
    fill(0xff707070);
    rect(width*0.6f, 0.7f*height, width*0.8f, 0.84f*height);
    fill(255);
    text("D", width*0.7f, height*0.81f);
  }else{
    rect(width*0.6f, 0.7f*height, width*0.8f, 0.84f*height);
    fill(0);
    text("D", width*0.7f, height*0.81f);
  }
  
  if((mouseX > width*0.8f && mouseX < width) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  if(Quiz[3][4] == 1){
    fill(0xff707070);
    rect(width*0.8f, 0.7f*height, width, 0.84f*height);
    fill(255);
    text("E", width*0.9f, height*0.81f);
  }else{
    rect(width*0.8f, 0.7f*height, width, 0.84f*height);
    fill(0);
    text("E", width*0.9f, height*0.81f);
  }
  noStroke();
  
  if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xff43bdcc);}else{fill(0xff35939e);}
  
  rect(width/2, 0.85f*height, width, height);
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avan\u00e7ar", 0.75f*width, 0.925f*height*1.02f);
  
  if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xfffc4141);}else{fill(0xffc43333);}
  
  rect(0, 0.85f*height, width/2, height);
  
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avan\u00e7ar", 0.75f*width, 0.925f*height*1.02f);
  fill(255);
  textFont(fontSubTitle);
  text("Voltar", 0.25f*width, 0.925f*height*1.02f);
  Respondidas();
}

public void tela16(){ //Quest\u00e3o quiz 5
  telaAtual = 16;
  
  fill(255);
  rect(0,0,width,height);
  imageMode(CORNER);
  fill(0);
  textFont(fontTitle);
  textAlign(CENTER);
  text("Quest\u00e3o 5", width/2, height/10);
  textFont(fontSubTitle);
  textSize(20);
  
  text("Dr. Cuco \u00e9 um app para ajudar as pessoas com rela\u00e7\u00e3o a sa\u00fade, similar a uma \"enfermeira digital\", ja obteve seu\ninvestimento-anjo e esta participando de qual programa para startups?\n\nA. Cubo.\nB. Oxig\u00eanio Aceleradora.\nC. LABB\nD. InovaBRA\nE. Plataforma.Space.", width*0.4f, height*0.25f);
  
  //Bot\u00f5es das afirmativas
  fill(200);
  stroke(0);
  textFont(fontTitle);
  if((mouseX > 0 && mouseX < width*0.2f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  
  if(Quiz[4][0] == 1){
    fill(0xff707070);
    rect(0        , 0.7f*height, width*0.2f, 0.84f*height);
    fill(255);
    text("A", width*0.1f, height*0.81f);
  }else{
    rect(0        , 0.7f*height, width*0.2f, 0.84f*height);
    fill(0);
    text("A", width*0.1f, height*0.81f);
  }
  
  if((mouseX > width*0.2f && mouseX < width*0.4f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  
  if(Quiz[4][1] == 1){
    fill(0xff707070);
    rect(width*0.2f, 0.7f*height, width*0.4f, 0.84f*height);
    fill(255);
    text("B", width*0.3f, height*0.81f);
  }else{
    rect(width*0.2f, 0.7f*height, width*0.4f, 0.84f*height);
    fill(0);
    text("B", width*0.3f, height*0.81f);
  }
  
  if((mouseX > width*0.4f && mouseX < width*0.6f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  if(Quiz[4][2] == 1){
    fill(0xff707070);
    rect(width*0.4f, 0.7f*height, width*0.6f, 0.84f*height);
    fill(255);
    text("C", width*0.5f, height*0.81f);
  }else{
    rect(width*0.4f, 0.7f*height, width*0.6f, 0.84f*height);
    fill(0);
    text("C", width*0.5f, height*0.81f);
  }
  
  if((mouseX > width*0.6f && mouseX < width*0.8f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  if(Quiz[4][3] == 1){
    fill(0xff707070);
    rect(width*0.6f, 0.7f*height, width*0.8f, 0.84f*height);
    fill(255);
    text("D", width*0.7f, height*0.81f);
  }else{
    rect(width*0.6f, 0.7f*height, width*0.8f, 0.84f*height);
    fill(0);
    text("D", width*0.7f, height*0.81f);
  }
  
  if((mouseX > width*0.8f && mouseX < width) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  if(Quiz[4][4] == 1){
    fill(0xff707070);
    rect(width*0.8f, 0.7f*height, width, 0.84f*height);
    fill(255);
    text("E", width*0.9f, height*0.81f);
  }else{
    rect(width*0.8f, 0.7f*height, width, 0.84f*height);
    fill(0);
    text("E", width*0.9f, height*0.81f);
  }
  noStroke();
  
  if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xff43bdcc);}else{fill(0xff35939e);}
  
  rect(width/2, 0.85f*height, width, height);
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avan\u00e7ar", 0.75f*width, 0.925f*height*1.02f);
  
  if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xfffc4141);}else{fill(0xffc43333);}
  
  rect(0, 0.85f*height, width/2, height);
  
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avan\u00e7ar", 0.75f*width, 0.925f*height*1.02f);
  fill(255);
  textFont(fontSubTitle);
  text("Voltar", 0.25f*width, 0.925f*height*1.02f);
  Respondidas();
}

public void tela17(){ //Quest\u00e3o quiz 6
  telaAtual = 17;
  
  fill(255);
  rect(0,0,width,height);
  imageMode(CORNER);
  fill(0);
  textFont(fontTitle);
  textAlign(CENTER);
  text("Quest\u00e3o 6", width/2, height/10);
  textFont(fontSubTitle);
  textSize(20);
  
  text("O GuiaBolso foi criado com a inovadora ideia de ser um aplicativo com a\nresponsabilidade de ajudar seu usuario com o controle financeiro.\nAl\u00e9m de ser gratuito, qual a grande vantagem\nde tornar-se um usuario?\n\nA. Restringir gastos desnecess\u00e1rios.\nB. Retornar valores ao usu\u00e1rio.\nC. Servir como forma de pagamento\nD. Promo\u00e7\u00f5es geradas por parcerias com bancos\nE. Intera\u00e7\u00e3o direta com a conta banc\u00e1ria.", width*0.4f, height*0.25f);
  
  //Bot\u00f5es das afirmativas
  fill(200);
  stroke(0);
  textFont(fontTitle);
  if((mouseX > 0 && mouseX < width*0.2f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  
  if(Quiz[5][0] == 1){
    fill(0xff707070);
    rect(0        , 0.7f*height, width*0.2f, 0.84f*height);
    fill(255);
    text("A", width*0.1f, height*0.81f);
  }else{
    rect(0        , 0.7f*height, width*0.2f, 0.84f*height);
    fill(0);
    text("A", width*0.1f, height*0.81f);
  }
  
  if((mouseX > width*0.2f && mouseX < width*0.4f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  
  if(Quiz[5][1] == 1){
    fill(0xff707070);
    rect(width*0.2f, 0.7f*height, width*0.4f, 0.84f*height);
    fill(255);
    text("B", width*0.3f, height*0.81f);
  }else{
    rect(width*0.2f, 0.7f*height, width*0.4f, 0.84f*height);
    fill(0);
    text("B", width*0.3f, height*0.81f);
  }
  
  if((mouseX > width*0.4f && mouseX < width*0.6f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  if(Quiz[5][2] == 1){
    fill(0xff707070);
    rect(width*0.4f, 0.7f*height, width*0.6f, 0.84f*height);
    fill(255);
    text("C", width*0.5f, height*0.81f);
  }else{
    rect(width*0.4f, 0.7f*height, width*0.6f, 0.84f*height);
    fill(0);
    text("C", width*0.5f, height*0.81f);
  }
  
  if((mouseX > width*0.6f && mouseX < width*0.8f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  if(Quiz[5][3] == 1){
    fill(0xff707070);
    rect(width*0.6f, 0.7f*height, width*0.8f, 0.84f*height);
    fill(255);
    text("D", width*0.7f, height*0.81f);
  }else{
    rect(width*0.6f, 0.7f*height, width*0.8f, 0.84f*height);
    fill(0);
    text("D", width*0.7f, height*0.81f);
  }
  
  if((mouseX > width*0.8f && mouseX < width) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  if(Quiz[5][4] == 1){
    fill(0xff707070);
    rect(width*0.8f, 0.7f*height, width, 0.84f*height);
    fill(255);
    text("E", width*0.9f, height*0.81f);
  }else{
    rect(width*0.8f, 0.7f*height, width, 0.84f*height);
    fill(0);
    text("E", width*0.9f, height*0.81f);
  }
  noStroke();
  
  if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xff43bdcc);}else{fill(0xff35939e);}
  
  rect(width/2, 0.85f*height, width, height);
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avan\u00e7ar", 0.75f*width, 0.925f*height*1.02f);
  
  if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xfffc4141);}else{fill(0xffc43333);}
  
  rect(0, 0.85f*height, width/2, height);
  
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avan\u00e7ar", 0.75f*width, 0.925f*height*1.02f);
  fill(255);
  textFont(fontSubTitle);
  text("Voltar", 0.25f*width, 0.925f*height*1.02f);
  Respondidas();
}

public void tela18(){ //Quest\u00e3o quiz 7
  telaAtual = 18;
  
  fill(255);
  rect(0,0,width,height);
  imageMode(CORNER);
  fill(0);
  textFont(fontTitle);
  textAlign(CENTER);
  text("Quest\u00e3o 7", width/2, height/10);
  textFont(fontSubTitle);
  textSize(20);
  
  text("Os 5 passos para uma cidade virar um polo tecnologico de startups \u00e9 acesso a talento,\nacesso a capital, cultura empreendedora, ambiente regulat\u00f3rio e __________. \n\nA. Intensidade.\nB. Densidade.\nC. Passividade\nD. Facilidade\nE. Imensidade.", width*0.4f, height*0.25f);
  
  //Bot\u00f5es das afirmativas
  fill(200);
  stroke(0);
  textFont(fontTitle);
  if((mouseX > 0 && mouseX < width*0.2f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  
  if(Quiz[6][0] == 1){
    fill(0xff707070);
    rect(0        , 0.7f*height, width*0.2f, 0.84f*height);
    fill(255);
    text("A", width*0.1f, height*0.81f);
  }else{
    rect(0        , 0.7f*height, width*0.2f, 0.84f*height);
    fill(0);
    text("A", width*0.1f, height*0.81f);
  }
  
  if((mouseX > width*0.2f && mouseX < width*0.4f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  
  if(Quiz[6][1] == 1){
    fill(0xff707070);
    rect(width*0.2f, 0.7f*height, width*0.4f, 0.84f*height);
    fill(255);
    text("B", width*0.3f, height*0.81f);
  }else{
    rect(width*0.2f, 0.7f*height, width*0.4f, 0.84f*height);
    fill(0);
    text("B", width*0.3f, height*0.81f);
  }
  
  if((mouseX > width*0.4f && mouseX < width*0.6f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  if(Quiz[6][2] == 1){
    fill(0xff707070);
    rect(width*0.4f, 0.7f*height, width*0.6f, 0.84f*height);
    fill(255);
    text("C", width*0.5f, height*0.81f);
  }else{
    rect(width*0.4f, 0.7f*height, width*0.6f, 0.84f*height);
    fill(0);
    text("C", width*0.5f, height*0.81f);
  }
  
  if((mouseX > width*0.6f && mouseX < width*0.8f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  if(Quiz[6][3] == 1){
    fill(0xff707070);
    rect(width*0.6f, 0.7f*height, width*0.8f, 0.84f*height);
    fill(255);
    text("D", width*0.7f, height*0.81f);
  }else{
    rect(width*0.6f, 0.7f*height, width*0.8f, 0.84f*height);
    fill(0);
    text("D", width*0.7f, height*0.81f);
  }
  
  if((mouseX > width*0.8f && mouseX < width) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  if(Quiz[6][4] == 1){
    fill(0xff707070);
    rect(width*0.8f, 0.7f*height, width, 0.84f*height);
    fill(255);
    text("E", width*0.9f, height*0.81f);
  }else{
    rect(width*0.8f, 0.7f*height, width, 0.84f*height);
    fill(0);
    text("E", width*0.9f, height*0.81f);
  }
  noStroke();
  
  if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xff43bdcc);}else{fill(0xff35939e);}
  
  rect(width/2, 0.85f*height, width, height);
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avan\u00e7ar", 0.75f*width, 0.925f*height*1.02f);
  
  if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xfffc4141);}else{fill(0xffc43333);}
  
  rect(0, 0.85f*height, width/2, height);
  
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avan\u00e7ar", 0.75f*width, 0.925f*height*1.02f);
  fill(255);
  textFont(fontSubTitle);
  text("Voltar", 0.25f*width, 0.925f*height*1.02f);
  Respondidas();
}

public void tela19(){ //Quest\u00e3o quiz 8
  telaAtual = 19;
  
  fill(255);
  rect(0,0,width,height);
  imageMode(CORNER);
  fill(0);
  textFont(fontTitle);
  textAlign(CENTER);
  text("Quest\u00e3o 8", width/2, height/10);
  textFont(fontSubTitle);
  textSize(20);
  
  text("Por mais digital que seja, as startups precisam de um local fisico\npara se desenvolverem. Qual a iniciativa da prefeitura de S\u00e3o paulo para\nsuprir essa necessidade?\n\nA. Menores impostos.\nB. Aluguel mais barato.\nC. Fab Labs p\u00fablicos.\nD. Ajuda monet\u00e1ria.\nE. Redu\u00e7\u00e3o de burocracia.", width*0.4f, height*0.25f);
  
  //Bot\u00f5es das afirmativas
  fill(200);
  stroke(0);
  textFont(fontTitle);
  if((mouseX > 0 && mouseX < width*0.2f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  
  if(Quiz[7][0] == 1){
    fill(0xff707070);
    rect(0        , 0.7f*height, width*0.2f, 0.84f*height);
    fill(255);
    text("A", width*0.1f, height*0.81f);
  }else{
    rect(0        , 0.7f*height, width*0.2f, 0.84f*height);
    fill(0);
    text("A", width*0.1f, height*0.81f);
  }
  
  if((mouseX > width*0.2f && mouseX < width*0.4f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  
  if(Quiz[7][1] == 1){
    fill(0xff707070);
    rect(width*0.2f, 0.7f*height, width*0.4f, 0.84f*height);
    fill(255);
    text("B", width*0.3f, height*0.81f);
  }else{
    rect(width*0.2f, 0.7f*height, width*0.4f, 0.84f*height);
    fill(0);
    text("B", width*0.3f, height*0.81f);
  }
  
  if((mouseX > width*0.4f && mouseX < width*0.6f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  if(Quiz[7][2] == 1){
    fill(0xff707070);
    rect(width*0.4f, 0.7f*height, width*0.6f, 0.84f*height);
    fill(255);
    text("C", width*0.5f, height*0.81f);
  }else{
    rect(width*0.4f, 0.7f*height, width*0.6f, 0.84f*height);
    fill(0);
    text("C", width*0.5f, height*0.81f);
  }
  
  if((mouseX > width*0.6f && mouseX < width*0.8f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  if(Quiz[7][3] == 1){
    fill(0xff707070);
    rect(width*0.6f, 0.7f*height, width*0.8f, 0.84f*height);
    fill(255);
    text("D", width*0.7f, height*0.81f);
  }else{
    rect(width*0.6f, 0.7f*height, width*0.8f, 0.84f*height);
    fill(0);
    text("D", width*0.7f, height*0.81f);
  }
  
  if((mouseX > width*0.8f && mouseX < width) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  if(Quiz[7][4] == 1){
    fill(0xff707070);
    rect(width*0.8f, 0.7f*height, width, 0.84f*height);
    fill(255);
    text("E", width*0.9f, height*0.81f);
  }else{
    rect(width*0.8f, 0.7f*height, width, 0.84f*height);
    fill(0);
    text("E", width*0.9f, height*0.81f);
  }
  noStroke();
  
  if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xff43bdcc);}else{fill(0xff35939e);}
  
  rect(width/2, 0.85f*height, width, height);
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avan\u00e7ar", 0.75f*width, 0.925f*height*1.02f);
  
  if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xfffc4141);}else{fill(0xffc43333);}
  
  rect(0, 0.85f*height, width/2, height);
  
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avan\u00e7ar", 0.75f*width, 0.925f*height*1.02f);
  fill(255);
  textFont(fontSubTitle);
  text("Voltar", 0.25f*width, 0.925f*height*1.02f);
  Respondidas();
}

public void tela20(){ //Quest\u00e3o quiz 9
  telaAtual = 20;
  
  fill(255);
  rect(0,0,width,height);
  imageMode(CORNER);
  fill(0);
  textFont(fontTitle);
  textAlign(CENTER);
  text("Quest\u00e3o 9", width/2, height/10);
  textFont(fontSubTitle);
  textSize(20);
  
  text("Campinas tambem \u00e9 considerado um polo tecnologico , um dos n\u00facleos de\ntecnologia de ponta de todo o Hemisf\u00e9rio Sul.\nCampinas tornou-se refer\u00eancia nacional em?\n\nA. Energia limpa.\nB. Reciclagem.\nC. Nanotecnologia.\nD. Realidade Virtual.\nE. Biocombust\u00edveis.", width*0.4f, height*0.25f);
  
  //Bot\u00f5es das afirmativas
  fill(200);
  stroke(0);
  textFont(fontTitle);
  if((mouseX > 0 && mouseX < width*0.2f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  
  if(Quiz[8][0] == 1){
    fill(0xff707070);
    rect(0        , 0.7f*height, width*0.2f, 0.84f*height);
    fill(255);
    text("A", width*0.1f, height*0.81f);
  }else{
    rect(0        , 0.7f*height, width*0.2f, 0.84f*height);
    fill(0);
    text("A", width*0.1f, height*0.81f);
  }
  
  if((mouseX > width*0.2f && mouseX < width*0.4f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  
  if(Quiz[8][1] == 1){
    fill(0xff707070);
    rect(width*0.2f, 0.7f*height, width*0.4f, 0.84f*height);
    fill(255);
    text("B", width*0.3f, height*0.81f);
  }else{
    rect(width*0.2f, 0.7f*height, width*0.4f, 0.84f*height);
    fill(0);
    text("B", width*0.3f, height*0.81f);
  }
  
  if((mouseX > width*0.4f && mouseX < width*0.6f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  if(Quiz[8][2] == 1){
    fill(0xff707070);
    rect(width*0.4f, 0.7f*height, width*0.6f, 0.84f*height);
    fill(255);
    text("C", width*0.5f, height*0.81f);
  }else{
    rect(width*0.4f, 0.7f*height, width*0.6f, 0.84f*height);
    fill(0);
    text("C", width*0.5f, height*0.81f);
  }
  
  if((mouseX > width*0.6f && mouseX < width*0.8f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  if(Quiz[8][3] == 1){
    fill(0xff707070);
    rect(width*0.6f, 0.7f*height, width*0.8f, 0.84f*height);
    fill(255);
    text("D", width*0.7f, height*0.81f);
  }else{
    rect(width*0.6f, 0.7f*height, width*0.8f, 0.84f*height);
    fill(0);
    text("D", width*0.7f, height*0.81f);
  }
  
  if((mouseX > width*0.8f && mouseX < width) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  if(Quiz[8][4] == 1){
    fill(0xff707070);
    rect(width*0.8f, 0.7f*height, width, 0.84f*height);
    fill(255);
    text("E", width*0.9f, height*0.81f);
  }else{
    rect(width*0.8f, 0.7f*height, width, 0.84f*height);
    fill(0);
    text("E", width*0.9f, height*0.81f);
  }
  noStroke();
  
  if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xff43bdcc);}else{fill(0xff35939e);}
  
  rect(width/2, 0.85f*height, width, height);
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avan\u00e7ar", 0.75f*width, 0.925f*height*1.02f);
  
  if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xfffc4141);}else{fill(0xffc43333);}
  
  rect(0, 0.85f*height, width/2, height);
  
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avan\u00e7ar", 0.75f*width, 0.925f*height*1.02f);
  fill(255);
  textFont(fontSubTitle);
  text("Voltar", 0.25f*width, 0.925f*height*1.02f);
  Respondidas();
}

public void tela21(){ //Quest\u00e3o quiz 10
  telaAtual = 21;
  
  fill(255);
  rect(0,0,width,height);
  imageMode(CORNER);
  fill(0);
  textFont(fontTitle);
  textAlign(CENTER);
  text("Quest\u00e3o 10", width/2, height/10);
  textFont(fontSubTitle);
  textSize(20);
  
  text("S\u00e3o Paulo \u00e9 uma referencia tecnologica no mundo, \u00e9 tambem responsavel\npor 40% da economia do pais e esta sempre em crescente. Eventos de tecnologia\nsao recorrentes no estado.\nAlem da cidade de S\u00e3o Paulo, qual outra cidade paulista \u00e9 considerada\ndestaque em tecnologia?\n\nA. S\u00e3o Jos\u00e9 dos Campos.\nB. S\u00e3o Caetano do Sul.\nC. Campinas.\nD. Jundia\u00ed\nE. Guarulhos", width*0.4f, height*0.25f);
  
  //Bot\u00f5es das afirmativas
  fill(200);
  stroke(0);
  textFont(fontTitle);
  if((mouseX > 0 && mouseX < width*0.2f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  
  if(Quiz[9][0] == 1){
    fill(0xff707070);
    rect(0        , 0.7f*height, width*0.2f, 0.84f*height);
    fill(255);
    text("A", width*0.1f, height*0.81f);
  }else{
    rect(0        , 0.7f*height, width*0.2f, 0.84f*height);
    fill(0);
    text("A", width*0.1f, height*0.81f);
  }
  
  if((mouseX > width*0.2f && mouseX < width*0.4f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  
  if(Quiz[9][1] == 1){
    fill(0xff707070);
    rect(width*0.2f, 0.7f*height, width*0.4f, 0.84f*height);
    fill(255);
    text("B", width*0.3f, height*0.81f);
  }else{
    rect(width*0.2f, 0.7f*height, width*0.4f, 0.84f*height);
    fill(0);
    text("B", width*0.3f, height*0.81f);
  }
  
  if((mouseX > width*0.4f && mouseX < width*0.6f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  if(Quiz[9][2] == 1){
    fill(0xff707070);
    rect(width*0.4f, 0.7f*height, width*0.6f, 0.84f*height);
    fill(255);
    text("C", width*0.5f, height*0.81f);
  }else{
    rect(width*0.4f, 0.7f*height, width*0.6f, 0.84f*height);
    fill(0);
    text("C", width*0.5f, height*0.81f);
  }
  
  if((mouseX > width*0.6f && mouseX < width*0.8f) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  if(Quiz[9][3] == 1){
    fill(0xff707070);
    rect(width*0.6f, 0.7f*height, width*0.8f, 0.84f*height);
    fill(255);
    text("D", width*0.7f, height*0.81f);
  }else{
    rect(width*0.6f, 0.7f*height, width*0.8f, 0.84f*height);
    fill(0);
    text("D", width*0.7f, height*0.81f);
  }
  
  if((mouseX > width*0.8f && mouseX < width) && (mouseY > (0.7f*height) && mouseY < 0.84f*height)){fill(0xffeaeaea);}else{fill(0xffcecece);}
  if(Quiz[9][4] == 1){
    fill(0xff707070);
    rect(width*0.8f, 0.7f*height, width, 0.84f*height);
    fill(255);
    text("E", width*0.9f, height*0.81f);
  }else{
    rect(width*0.8f, 0.7f*height, width, 0.84f*height);
    fill(0);
    text("E", width*0.9f, height*0.81f);
  }
  noStroke();
  
  if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xff43bdcc);}else{fill(0xff35939e);}
  
  rect(width/2, 0.85f*height, width, height);
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avan\u00e7ar", 0.75f*width, 0.925f*height*1.02f);
  
  if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xfffc4141);}else{fill(0xffc43333);}
  
  rect(0, 0.85f*height, width/2, height);
  
  fill(255);
  textAlign(CENTER);
  textFont(fontSubTitle);
  text("Avan\u00e7ar", 0.75f*width, 0.925f*height*1.02f);
  fill(255);
  textFont(fontSubTitle);
  text("Voltar", 0.25f*width, 0.925f*height*1.02f);
  Respondidas();
  
}


public void tela22(){ //TELA FINAL DO QUIZ
  telaAtual = 22;
  if (primeiroacesso){ //referencia e instancia o objeto MyMovie, esse if serve de controlador para o programa realizar esta a\u00e7\u00e3o apenas uma vez
    myMovie = new Movie(this, "SaoPauloCinematic.mp4"); //v\u00eddeo de fundo da tela inicial
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
      println("Quest\u00e3o "+(i+1)+":");
      for(int j=0; j<5; j++){
          println("Quiz= "+Quiz[i][j]+" Gabarito= "+Gabarito[i][j]); 
        }
      }
    primeiroacesso = false;
  }
  imageMode(CORNER);
  image(myMovie, 0, 0, width, height); //reproduz o v\u00eddeo em tela cheia
  fill(0, 170); //adiciona opacidade de 80% no v\u00eddeo (204 de 255)
  rect(0, 0, width, height); //cria um ret\u00e2ngulo para aplicar efeito de opacidade
  textFont(fontTitle);
  fill(255);
  textAlign(CENTER);
  text("Fim do quiz!", width/2, height/4); //texto de t\u00edtulo
  textFont(fontSubTitle);
  
  text("Seu resultado final foi:\n"+acertos+" de 10 quest\u00f5es.", width/2, height/2); //texto de subt\u00edtulo
  
  if((mouseX > 0 && mouseX < width) && (mouseY > (0.85f*height) && mouseY < height)){fill(0xff43bdcc);}else{fill(0xff35939e);}
  
  rect(0, 0.85f*height, width, height);
  fill(255);
  textAlign(CENTER);
  text("Retornar ao in\u00edcio", width/2, 0.925f*height*1.02f);
}

public void ampliarimagem(String imagem, int telaorigem){ //fun\u00e7\u00e3o que desenha imagem ampliada na tela
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
/* 
                                  APLICATIVO EDUCACIONAL FEITO POR:
                                LUIZ AUGUSTO DE AZAMBUJA RAMOS MATIAS
                                  JO\u00c3O HENRIQUE CECCATTO DE CAMPOS

----------------------                                                                    ----------------------
---------------                                                                                  ---------------
--------------                                                                                    --------------
-------------   ABA UTILIZADA PARA ADMINISTRAR AS THREADS (PROCESSOS EM PARALELO COM O PRINCIPAL)  -------------
--------------                                                                                    --------------
---------------                                                                                  ---------------
----------------------                                                                    ----------------------
*/

public void sorrisoMudando(){
  int contador = 0;
  while(true){
    switch (contador){
      case 0:
      smile = "P";
      contador = 1;
      delay(1000);
      break;
      case 1:
      smile = "D";
      contador = 2;
      delay(1000);
      break;
      case 2:
      smile = ")";
      contador = 0;
      delay(1000);
      break;
    }
  }
}
  public void settings() {  size(1280, 720); }
  static public void main(String[] passedArgs) {
    String[] appletArgs = new String[] { "AplicativoEducacional" };
    if (passedArgs != null) {
      PApplet.main(concat(appletArgs, passedArgs));
    } else {
      PApplet.main(appletArgs);
    }
  }
}
