/* 
                                  APLICATIVO EDUCACIONAL FEITO POR:
                                LUIZ AUGUSTO DE AZAMBUJA RAMOS MATIAS
                                  JOÃO HENRIQUE CECCATTO DE CAMPOS

----------------------                                                          ----------------------
---------------                                                                        ---------------
--------------                                                                          --------------
-------------   ABA UTILIZADA PARA ADMINISTRAR TODA INTERFACE VISUAL DAS TELAS (DESIGN)  -------------
--------------                                                                          --------------
---------------                                                                        ---------------
----------------------                                                          ----------------------
*/


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
  
  Respondidas();
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
  Respondidas();
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
  Respondidas();
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
  Respondidas();
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
  Respondidas();
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
  Respondidas();
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
  Respondidas();
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
  Respondidas();
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
  Respondidas();
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
  Respondidas();
  
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

void ampliarimagem(String imagem, int telaorigem){ //função que desenha imagem ampliada na tela
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