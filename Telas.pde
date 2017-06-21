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
    thread("sorrisoMudando");
  }
  imageMode(CORNER);
  noStroke();
  image(myMovie, 0, 0, width, height); //reproduz o vídeo em tela cheia
  fill(0, 170); //adiciona opacidade de 80% no vídeo (204 de 255)
  rect(0, 0, width, height); //cria um retângulo para aplicar efeito de opacidade
  textFont(fontTitle);
  fill(255);
  textAlign(CENTER);
  text("São Paulo x Tecnologia", width/2, height/4); //texto de título
  textFont(fontSubTitle);
  textSize(26);
  text("São Paulo representa um dos 9 maiores polos tecnológicos do mundo, sendo referência em startups!\n\nQue tal aprender um pouco mais sobre?\n="+smile, width/2, height/2); //texto de subtítulo
  
  
  if((mouseX > 0 && mouseX < width) && (mouseY > (0.85*height) && mouseY < height)){fill(#43bdcc);}else{fill(#35939e);}
  textFont(fontSubTitle);
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
  textSize(20);
  //Texto da tela
  text("São Paulo está se tornando um dos principais polos tecnológicos do país: a maior cidade é sede de\ninúmeros escritórios das maiores empresas de tecnologia do mundo, tem algumas das melhores\nuniversidades e é o principal destino de imigração.\n\nEstudos sobre ambientes de inovação dizem que é preciso cinco variáveis em uma cidade para que\nela possa florescer: acesso a talento, acesso a capital, cultura empreendedora, ambiente regulatório\ne densidade. Densidade significa que por mais que o mundo seja digital é preciso um local físico\n[ou vários] onde as pessoas se encontram e circulam para falar de tecnologia, inovação, novos mode-\nlos de negócio, formas de trabalhar e como mudar o mundo.\n\nA Prefeitura iniciou o programa Fab Lab Livre SP em 2015, uma iniciativa que dá acesso a tecnologias avançadas para a população. São 12\nespaços espalhados pela cidade em que qualquer pessoa agenda um horário para utilizar os equipamentos disponíveis. Impressoras 3D,\ncortadoras a laser, computadores com software de desenho digital, além de equipamentos e ferramentas de eletrônica, robótica, marcena-\nria e mecânica são alguns dos materiais disponíveis nesses Fab Labs públicos.", width/50, height/6); 
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

void tela3(){ //TELA DE INTRODUÇÃO SOBRE SÃO PAULO 2
  telaAtual = 3;
  if(primeiroacesso){
    imagem = loadImage("saopaulowallpaper2.jpg");
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
  textSize(20);
  //Texto da tela
  text("Há alguns anos a revista Wired identificou Campinas como um dos núcleos de tecnologia de ponta de\ntodo o Hemisfério Sul. Boa parte do vigor tecnológico da cidade deve-se à existência da Ciatec (Com-\npanhia de Desenvolvimento do Pólo de Alta Tecnologia de Campinas), uma empresa municipal de eco-\nnomia mista. Recentemente, Campinas também se tornou referência nacional nos negócio dos bio-\ncombustíveis com o Centro de Ciência e Tecnologia do Bioetanol (CTBE), capitaneado pelo governo fe-\nderal.\n\nApesar de estarmos em um mundo cada vez mais digital, essa densidade que exige presença física e\nque vem beneficiando São Paulo, a cidade principalmente, é essencial.", width/50, height/6); 
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

void tela4(){ // TELA SOBRE SÃO PAULO E SUAS TECNOLOGIAS
  telaAtual = 4;
  fill(255);
  rect(0,0,width,height);
  imageMode(CORNER);
  textFont(fontTitle);
  textAlign(LEFT);
  fill(0);
  text("O que é uma startup?", width/100, height/10);
  textAlign(LEFT);
  textFont(fontText);
  textSize(20);
  //Texto da tela
  text("São empresas emergentes, normalmente de base tecnológica, possuem espírito empreendedor e uma constante busca por um modelo de\nnegócio inovador. Este modelo de negócios é a maneira como a empresa emergente gera valor – ou seja, como transforma seu trabalho em\ndinheiro.\n\nUm exemplo é o modelo de negócios do Google que se baseia em cobrar por cada clique nos anúncios mostrados nos resultados de busca.\n\nOutro exemplo seria o modelo de negócio de franquias: o franqueado paga royalties por uma marca, mas tem acesso a uma receita de suces-\nso com suporte do franquiador – e por isso aumenta suas chances de gerar lucro. Empresas que criam modelos de negócio altamente escalá-\nveis, a baixos custos e a partir de ideias inovadoras, são empresas startups. Empresas emergentes não são somente empresas de internet.\nElas só são mais frequentes na internet porque é bem mais barato criar uma empresa de software do que uma indústria.\n\nHá também o sentido de \"startar\" o reposicionamento de uma marca, quando é criado um novo produto ou serviço e o lançam com um novo\nnome e modelo de negócios, os diferenciando da antiga empresa.", width/50, height/6);
  
  
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

void tela5(){ // TELA SOBRE STARTUPS 1
  telaAtual = 5;
  if(primeiroacesso){
    imagem = loadImage("saopaulowallpaper2.jpg");
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
  textSize(20);
  //Texto da tela
  text("Há alguns anos a revista Wired identificou Campinas como um dos núcleos de tecnologia de ponta de\ntodo o Hemisfério Sul. Boa parte do vigor tecnológico da cidade deve-se à existência da Ciatec (Com-\npanhia de Desenvolvimento do Pólo de Alta Tecnologia de Campinas), uma empresa municipal de eco-\nnomia mista. Recentemente, Campinas também se tornou referência nacional nos negócio dos bio-\ncombustíveis com o Centro de Ciência e Tecnologia do Bioetanol (CTBE), capitaneado pelo governo fe-\nderal.\n\nApesar de estarmos em um mundo cada vez mais digital, essa densidade que exige presença física e\nque vem beneficiando São Paulo, a cidade principalmente, é essencial.", width/50, height/6); 
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

void tela6(){ // TELA SOBRE STARTUPS 2
  telaAtual = 6;
  if(primeiroacesso){
    imagem = loadImage("saopaulowallpaper2.jpg");
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
  textSize(20);
  //Texto da tela
  text("Há alguns anos a revista Wired identificou Campinas como um dos núcleos de tecnologia de ponta de\ntodo o Hemisfério Sul. Boa parte do vigor tecnológico da cidade deve-se à existência da Ciatec (Com-\npanhia de Desenvolvimento do Pólo de Alta Tecnologia de Campinas), uma empresa municipal de eco-\nnomia mista. Recentemente, Campinas também se tornou referência nacional nos negócio dos bio-\ncombustíveis com o Centro de Ciência e Tecnologia do Bioetanol (CTBE), capitaneado pelo governo fe-\nderal.\n\nApesar de estarmos em um mundo cada vez mais digital, essa densidade que exige presença física e\nque vem beneficiando São Paulo, a cidade principalmente, é essencial.", width/50, height/6); 
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


void tela7(){ // TELA SOBRE STARTUPS 3
  telaAtual = 7;
  if(primeiroacesso){
    imagem = loadImage("saopaulowallpaper2.jpg");
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
  textSize(20);
  //Texto da tela
  text("Há alguns anos a revista Wired identificou Campinas como um dos núcleos de tecnologia de ponta de\ntodo o Hemisfério Sul. Boa parte do vigor tecnológico da cidade deve-se à existência da Ciatec (Com-\npanhia de Desenvolvimento do Pólo de Alta Tecnologia de Campinas), uma empresa municipal de eco-\nnomia mista. Recentemente, Campinas também se tornou referência nacional nos negócio dos bio-\ncombustíveis com o Centro de Ciência e Tecnologia do Bioetanol (CTBE), capitaneado pelo governo fe-\nderal.\n\nApesar de estarmos em um mundo cada vez mais digital, essa densidade que exige presença física e\nque vem beneficiando São Paulo, a cidade principalmente, é essencial.", width/50, height/6); 
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

void tela8(){ // TELA SOBRE STARTUPS 4
  telaAtual = 8;
  if(primeiroacesso){
    imagem = loadImage("saopaulowallpaper2.jpg");
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
  textSize(20);
  //Texto da tela
  text("Há alguns anos a revista Wired identificou Campinas como um dos núcleos de tecnologia de ponta de\ntodo o Hemisfério Sul. Boa parte do vigor tecnológico da cidade deve-se à existência da Ciatec (Com-\npanhia de Desenvolvimento do Pólo de Alta Tecnologia de Campinas), uma empresa municipal de eco-\nnomia mista. Recentemente, Campinas também se tornou referência nacional nos negócio dos bio-\ncombustíveis com o Centro de Ciência e Tecnologia do Bioetanol (CTBE), capitaneado pelo governo fe-\nderal.\n\nApesar de estarmos em um mundo cada vez mais digital, essa densidade que exige presença física e\nque vem beneficiando São Paulo, a cidade principalmente, é essencial.", width/50, height/6); 
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

void tela9(){ // TELA SOBRE STARTUPS 5
  telaAtual = 9;
  if(primeiroacesso){
    imagem = loadImage("saopaulowallpaper2.jpg");
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
  textSize(20);
  //Texto da tela
  text("Há alguns anos a revista Wired identificou Campinas como um dos núcleos de tecnologia de ponta de\ntodo o Hemisfério Sul. Boa parte do vigor tecnológico da cidade deve-se à existência da Ciatec (Com-\npanhia de Desenvolvimento do Pólo de Alta Tecnologia de Campinas), uma empresa municipal de eco-\nnomia mista. Recentemente, Campinas também se tornou referência nacional nos negócio dos bio-\ncombustíveis com o Centro de Ciência e Tecnologia do Bioetanol (CTBE), capitaneado pelo governo fe-\nderal.\n\nApesar de estarmos em um mundo cada vez mais digital, essa densidade que exige presença física e\nque vem beneficiando São Paulo, a cidade principalmente, é essencial.", width/50, height/6); 
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

void tela10(){ // TELA SOBRE STARTUPS 6
  telaAtual = 10;
  if(primeiroacesso){
    imagem = loadImage("saopaulowallpaper2.jpg");
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
  textSize(20);
  //Texto da tela
  text("Há alguns anos a revista Wired identificou Campinas como um dos núcleos de tecnologia de ponta de\ntodo o Hemisfério Sul. Boa parte do vigor tecnológico da cidade deve-se à existência da Ciatec (Com-\npanhia de Desenvolvimento do Pólo de Alta Tecnologia de Campinas), uma empresa municipal de eco-\nnomia mista. Recentemente, Campinas também se tornou referência nacional nos negócio dos bio-\ncombustíveis com o Centro de Ciência e Tecnologia do Bioetanol (CTBE), capitaneado pelo governo fe-\nderal.\n\nApesar de estarmos em um mundo cada vez mais digital, essa densidade que exige presença física e\nque vem beneficiando São Paulo, a cidade principalmente, é essencial.", width/50, height/6); 
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




// ----- INÍCIO DO QUIZ ----- 
void tela11(){ //TELA DE INÍCIO DO QUIZ
  telaAtual = 11;
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

void tela12(){ //Questão quiz
  telaAtual = 12;
  
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

void tela13(){ //Questão quiz 2
  telaAtual = 13;
  
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

void tela14(){ //Questão quiz 3
  telaAtual = 14;
  
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

void tela15(){ //Questão quiz 4
  telaAtual = 15;
  
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

void tela16(){ //Questão quiz 5
  telaAtual = 16;
  
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

void tela17(){ //Questão quiz 6
  telaAtual = 17;
  
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

void tela18(){ //Questão quiz 7
  telaAtual = 18;
  
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

void tela19(){ //Questão quiz 8
  telaAtual = 19;
  
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

void tela20(){ //Questão quiz 9
  telaAtual = 20;
  
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

void tela21(){ //Questão quiz 10
  telaAtual = 21;
  
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


void tela22(){ //TELA FINAL DO QUIZ
  telaAtual = 22;
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