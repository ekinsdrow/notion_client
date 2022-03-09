import 'package:flutter/material.dart';

class BackButtonWidget extends StatelessWidget {
  const BackButtonWidget({
    required this.callback,
    Key? key,
  }) : super(key: key);

  final VoidCallback callback;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: callback,
      child: Container(
        color: Colors.transparent,
        alignment: Alignment.centerLeft,
        width: 40,
        height: 40,
        child: const Icon(
          Icons.arrow_back_ios,
        ),
      ),
    );
  }
}
