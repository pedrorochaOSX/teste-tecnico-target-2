/* 
  5) Escreva um programa que inverta os caracteres de um string.

  IMPORTANTE:
  a) Essa string pode ser informada através de qualquer entrada de sua preferência ou pode ser previamente definida no código;
  b) Evite usar funções prontas, como, por exemplo, reverse;
*/

void main() {
  
  String minhaString = "Isto é uma String, e ela será invertida";
    
    // Cria lista para alteração dos caracteres da String original
    List<String> minhaStringChars = minhaString.split('');
    
    // Declara os ponteiros
    int leftChar = 0;
    int rightChar = minhaStringChars.length - 1;

    // Loop para swap dos caracteres de cada ponteiro (o loop é interrompido no caso dos ponteiros estarem na mesma posição, no caso de Strings com número ímpar de indices)
    while (leftChar < rightChar) {
      String temp = minhaStringChars[leftChar];
      minhaStringChars[leftChar] = minhaStringChars[rightChar];
      minhaStringChars[rightChar] = temp;

      // Move os ponteiros
      leftChar++;
      rightChar--;
    }

    minhaString = minhaStringChars.join('');
    
    // Retorna a String invertida
    print(minhaString);
  
}