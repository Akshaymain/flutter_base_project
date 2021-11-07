import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AsyncBuilder extends StatelessWidget {
  final Future<String> future;
  final Widget Function(String data) onSuccess;
  final Widget? onError;
  final Widget? onLoading;

  const AsyncBuilder({
    Key? key,
    required this.future,
    required this.onSuccess,
    this.onError,
    this.onLoading,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return FutureBuilder(
        future: future,
        builder: (context, AsyncSnapshot<String> snapshot) {
          if (snapshot.hasData) {
            return onSuccess(snapshot.data!);
          } else if (snapshot.hasError) {
            return onError ?? Container();
          } else {
            return onLoading ?? const CircularProgressIndicator();
          }
        });
  }
}
