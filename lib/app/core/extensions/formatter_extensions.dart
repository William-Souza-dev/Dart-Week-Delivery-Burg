import 'package:intl/intl.dart';

extension FormatterExtensions on double {
  String get currencyPTBR {
    final currencyFormat = NumberFormat.currency(
      locale: 'pt_BR',
      symbol: r'R$',
    );
    return currencyFormat.format(this);
  }
}


// Esse Package Intl é usado para converter numero em 'Reais', acima esta a conversão
// em symbol o 'r' esta sendo colocado para poder colocar o $ é uma forma literal para utilizar o R$