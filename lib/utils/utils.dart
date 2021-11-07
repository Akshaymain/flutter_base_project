import 'package:fluttertoast/fluttertoast.dart';

void displayToast({required String message}) {
  Fluttertoast.showToast(
    msg: message,
    toastLength: Toast.LENGTH_LONG,
    timeInSecForIosWeb: 2,
    gravity: ToastGravity.BOTTOM,
  );
}
