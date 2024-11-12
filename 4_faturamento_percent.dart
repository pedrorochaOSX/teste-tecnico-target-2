/* 
  4) Dado o valor de faturamento mensal de uma distribuidora, detalhado por estado:
  - SP – R$67.836,43
  - RJ – R$36.678,66
  - MG – R$29.229,88
  - ES – R$27.165,48
  - Outros – R$19.849,53

  Escreva um programa na linguagem que desejar onde calcule o percentual de representaçã
  o que cada estado teve dentro do valor total mensal da distribuidora.  
*/

void main() {
  Map<String, double> faturamentoEstados = {
    'SP': 67836.43,
    'RJ': 36678.66,
    'MG': 29229.88,
    'ES': 27165.48,
    'Outros': 19849.53
  };

  double valorTotal = 0.0;

  // Calcula e retorna o faturamento total
  faturamentoEstados.forEach((estado, valor) {
    valorTotal += valor;
  });
  print('Faturamento total: R\$${valorTotal}');
  
  // Calcula e retorna a porcentagem do faturamento em cada estado
  print('Faturamento em cada estado:');
  faturamentoEstados.forEach((estado, valor) {
    print('  ${estado} --- R\$${valor} --- ${((valor / valorTotal) * 100).toStringAsFixed(2)}%');
  });

}