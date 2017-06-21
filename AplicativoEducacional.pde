/*
                                  APLICATIVO EDUCACIONAL FEITO POR:
                                LUIZ AUGUSTO DE AZAMBUJA RAMOS MATIAS
                                  JOÃO HENRIQUE CECCATTO DE CAMPOS

----------------------                                                               ----------------------
---------------                                                                             ---------------
--------------                                                                               --------------
-------------   ABA PRINCIPAL DO APLICATIVO, COM TODO O SETUP E ALGUMAS FUNÇÕES CUSTOMIZADAS  -------------
--------------                                                                               --------------
---------------                                                                             ---------------
----------------------                                                               ----------------------
*/



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
  AlturaPadrao = width*0.8;
  ampliaricon = loadImage("ampliarwithtext.png");
  fecharicon = loadImage("close.png");
  telaAtual = 1;
  fontTitle = createFont("Aller_Rg.ttf", 72);
  fontSubTitle = createFont("Aller_Lt.ttf", 48);
  fontText = createFont("Aller_Lt.ttf", 16);
  
}

void draw() { 
  switch(telaAtual){ //Seleção de telas que inicia uma função da Aba Telas
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

void Respondidas(){ //função que mostra uma tabela das questões respondidas do usuário
  textFont(fontSubTitle);
  fill(0);
  text("Questões", width*0.8+100, height/5-10);
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
    rect(width*0.8, height/5, 200, heightRespostas);
    rect(width*0.8, height/5, 100, heightRespostas);
    heightRespostas = heightRespostas - 30;
  }
  
  textSize(24);
  fill(0);
  heightRespostas = 24;
  int cont = 0;
  
  for(int i=0; i<10; i++){
    text(String.valueOf(i+1),  width*0.8+50, height/5+heightRespostas);
    for(int j=0; j<5; j++){
      if(Quiz[i][j] == 1){
        switch(j){
          case 0:
              text("A",  (width*0.8)+150, height/5+heightRespostas);
          break;
          case 1:
              text("B",  (width*0.8)+150, height/5+heightRespostas);
          break;
          case 2:
              text("C",  (width*0.8)+150, height/5+heightRespostas);
          break;
          case 3:
              text("D",  (width*0.8)+150, height/5+heightRespostas);
          break;
          case 4:
              text("E",  (width*0.8)+150, height/5+heightRespostas);
          break;
        }
      }else{
        cont++;
        if(cont == 5){
          text("-",  (width*0.8)+150, height/5+heightRespostas);
        }
      }
    }
    cont = 0;
    heightRespostas = heightRespostas + 30;
  }
}