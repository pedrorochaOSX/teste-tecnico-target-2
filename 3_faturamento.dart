/* 
  3) Dado um vetor que guarda o valor de faturamento diário de uma distribuidora, faça um programa, na linguagem que desejar, que calcule e retorne:
  - O menor valor de faturamento ocorrido em um dia do mês;
  - O maior valor de faturamento ocorrido em um dia do mês;
  - Número de dias no mês em que o valor de faturamento diário foi superior à média mensal.

  IMPORTANTE:
  a) Usar o json ou xml disponível como fonte dos dados do faturamento mensal;
  b) Podem existir dias sem faturamento, como nos finais de semana e feriados. Estes dias devem ser ignorados no cálculo da média;
*/

import 'dart:convert';
import 'dart:io';

void main() async {
  // Leitura dos dados contidos em dados.json
  final dados = File('dados.json');
  final jsonContent = await dados.readAsString();

  final List<dynamic> dataList = jsonDecode(jsonContent);

  // Filtrar dias nos quais o faturamento > 0
  final filteredData = dataList.where((entry) => entry['valor'] > 0).toList();

  // Calcula o menor faturamento no mês
  double minValor = filteredData[0]['valor'];
  double maxValor = filteredData[0]['valor'];
  double totalSum = 0.0;

  // Calcula o faturamento total e a média de faturamento no mês
 for (var entry in filteredData) {
    double valor = entry['valor'];
    if (valor < minValor) {
      minValor = valor;
    }
    if (valor > maxValor) {
      maxValor = valor;
    }
    totalSum += valor;
  }

  double mediaFaturamento = totalSum / filteredData.length;

  // Calcula o número de dias em que o faturamento foi superior à média mensal
  int diasAcimaMedia = 0;
  for (var entry in filteredData) {
    if (entry['valor'] > mediaFaturamento) {
      diasAcimaMedia++;
    }
  }
  // Retorna os resultados
  print('Menor faturamento: R\$${minValor.toStringAsFixed(2)}');
  print('Maior faturamento: R\$${maxValor.toStringAsFixed(2)}');
  print('Número de dias em que o faturamento foi superior à média mensal de R\$${mediaFaturamento.toStringAsFixed(2)}: ${diasAcimaMedia}');
}