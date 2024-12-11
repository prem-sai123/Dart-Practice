enum LoggingLevel {
  Debug('Degug Level'),
  Production('Production Level');

  final String description;
  const LoggingLevel(this.description);

  bool isProduction() => this == Production;
  bool isDebug() => this == Debug;
}

void main(List<String> args) {
  const loggingLvl = LoggingLevel.Production;
  print('Is Production : ${loggingLvl.isProduction()}');
  print('Is Debug : ${loggingLvl.isDebug()}');
}
