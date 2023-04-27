import 'package:flutter/material.dart';
import 'package:mvvm/res/color.dart';

class RoundButton extends StatelessWidget {
  final String title;
  final bool loading;
  final VoidCallback onPress;

  const RoundButton(
      {Key? key,
      required this.title,
      this.loading = false,
      required this.onPress})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onPress,
      child: Container(
        height: 40,
        width: 200,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10.0),
          color: AppColor.buttonColor,
        ),
        child: Center(
            child: loading
                ? const CircularProgressIndicator(
                    color: AppColor.whiteColor,
                  )
                : Text(
                    title,
                    style: const TextStyle(color: AppColor.whiteColor),
                  )),
      ),
    );
  }
}
