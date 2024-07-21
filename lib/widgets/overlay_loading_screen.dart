import 'package:flutter/material.dart';

class LoaderTransparent extends StatelessWidget {
  double? height;
  double? width;
  Color? colorValue;
  Widget? child;
  LoaderTransparent({
    Key? key,
    this.child,
    this.colorValue,
  });

  @override
  Widget build(BuildContext context) {
    height = MediaQuery.of(context).size.height;
    width = MediaQuery.of(context).size.width;
    return Container(
      height: height,
      width: width,
      color: Colors.transparent,
      child: Center(
        child: SizedBox(
          height: 60.0,
          width: 60.0,
          child: child ??
              CircularProgressIndicator(
                valueColor: AlwaysStoppedAnimation(
                  Colors.blue,
                ),
                strokeWidth: 5.0,
              ),
        ),
      ),
    );
  }
}
