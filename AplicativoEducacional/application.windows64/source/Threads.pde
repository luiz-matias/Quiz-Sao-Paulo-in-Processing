/* 
                                  APLICATIVO EDUCACIONAL FEITO POR:
                                LUIZ AUGUSTO DE AZAMBUJA RAMOS MATIAS
                                  JOÃO HENRIQUE CECCATTO DE CAMPOS

----------------------                                                                    ----------------------
---------------                                                                                  ---------------
--------------                                                                                    --------------
-------------   ABA UTILIZADA PARA ADMINISTRAR AS THREADS (PROCESSOS EM PARALELO COM O PRINCIPAL)  -------------
--------------                                                                                    --------------
---------------                                                                                  ---------------
----------------------                                                                    ----------------------
*/

void sorrisoMudando(){
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