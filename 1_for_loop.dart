/* 
  1) Observe o trecho de código abaixo: int INDICE = 13, SOMA = 0, K = 0;
  Enquanto K < INDICE faça { K = K + 1; SOMA = SOMA + K; }
  Imprimir(SOMA);
  Ao final do processamento, qual será o valor da variável SOMA? 
*/

void main(){
  int INDICE = 13;
  int SOMA = 0;

  for (int k = 0; k < INDICE; k++){
    k += k;
    SOMA += k;
    print(SOMA);
  }
}