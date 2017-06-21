/* 
                                  APLICATIVO EDUCACIONAL FEITO POR:
                                LUIZ AUGUSTO DE AZAMBUJA RAMOS MATIAS
                                  JOÃO HENRIQUE CECCATTO DE CAMPOS

----------------------                                                                      ----------------------
---------------                                                                                    ---------------
--------------                                                                                      --------------
-------------   ABA UTILIZADA PARA ADMINISTRAR TODAS AS AÇÕES DE CLICKS COM O QUIZ (INTERATIVIDADE)  -------------
--------------                                                                                      --------------
---------------                                                                                    ---------------
----------------------                                                                      ----------------------
*/


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
      if((mouseX > ((width*0.85)-150) && mouseX < ((width*0.85)+150)) && ((mouseY > (height/3)-150) && (mouseY < (height/3)+150))){
        primeiroacesso = true;
        ampliarimagem("saopaulowallpaper2.jpg", 3);
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
    case 7: //tela 7
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual= 8; //ir pra tela 7 quando criar
        primeiroacesso= true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 6;
        primeiroacesso = true;
      }
    break;
    case 8: //tela 8
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual= 9; //ir pra tela 7 quando criar
        primeiroacesso= true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 7;
        primeiroacesso = true;
      }
    break;
    case 9: //tela 9
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual= 10; //ir pra tela 7 quando criar
        primeiroacesso= true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 8;
        primeiroacesso = true;
      }
    break;
    case 10: //tela 10
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual= 11; //ir pra tela 7 quando criar
        primeiroacesso= true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 9;
        primeiroacesso = true;
      }
    break;
    case 11:
      if((mouseX > 0 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 12;
        primeiroacesso = true;
        myMovie.stop();
      }
    break;
    case 12: //tela 12 -- questão 1
      if((mouseX > 0 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 13;
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
    case 13: //tela 13 -- questão 2
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 14;
        primeiroacesso = true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 12;
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
    case 14: //tela 14 -- questão 3
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 15;
        primeiroacesso = true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 13;
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
    case 15: //tela 15 -- questão 4
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 16;
        primeiroacesso = true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 14;
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
    case 16: //tela 16 -- questão 5
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 17;
        primeiroacesso = true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 15;
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
    case 17: //tela 17 -- questão 6
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 18;
        primeiroacesso = true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 16;
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
    case 18: //tela 18 -- questão 7
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 19;
        primeiroacesso = true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 17;
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
    case 19: //tela 19 -- questão 8
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 20;
        primeiroacesso = true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 18;
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
    case 20: //tela 20 -- questão 9
      if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 21;
        primeiroacesso = true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 19;
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
    case 21: //tela 21 -- questão 10
    
    if((mouseX > width/2 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 22;
        primeiroacesso = true;
      }
      if((mouseX > 0 && mouseX < width/2) && (mouseY > (0.85*height) && mouseY < height)){
        telaAtual = 20;
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
    
    case 22: //tela 22 -- final do QUIZ
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