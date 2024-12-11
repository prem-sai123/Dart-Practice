// https://github.com/AbdurRehman-coder/flutter_bloc_template/blob/main/lib/core/logger/logger.dart


enum MyAppLogger {
  Black('30'),
  Green('32'),
  Blue('34'),
  White('37'),
  Red('31');

  final String code;
  const MyAppLogger(this.code);

  static void logError(Object msg) => print(
      '\x1B[' + MyAppLogger.Red.code + 'm' + msg.toString() + '\x1B[0m');

  static void logInfo(Object msg) => print(
      '\x1B[' + MyAppLogger.Blue.code + 'm' + msg.toString() + '\x1B[0m');

  static void logSuccess(Object msg) => print('📗 SUCCESS'+'\n'+
      '\x1B[' + MyAppLogger.Green.code + 'm' + msg.toString() + '\x1B[0m');
}
