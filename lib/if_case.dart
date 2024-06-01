void main() {
  final (String?, int?) response = ('OK', 200);

  if (response case (String message, int code)) {
    print('Response: $message, $code');
  } else {
    print('Invalid response');
  }

  final (String?, int?) response2 = ('error', 401);

  // whenキーワードを使って、条件に合致する場合の処理を記述することもできます。
  if (response2 case (String message, int code) when code == 404) {
    // messageが非nullかつcodeが404の場合の処理
    print('Response: $message, $code');
  } else {
    print('Invalid response');
  }
}
