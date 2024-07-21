import '../models/discountbanner_item_model.dart';
import 'package:etqan_client/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DiscountbannerItemWidget extends StatelessWidget {
  DiscountbannerItemWidget(
    this.discountbannerItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  DiscountbannerItemModel discountbannerItemModelObj;

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: Alignment.center,
      child: Container(
        height: 212.v,
        width: double.maxFinite,
        margin: EdgeInsets.only(bottom: 38.v),
        child: Stack(
          alignment: Alignment.bottomLeft,
          children: [
            Align(
              alignment: Alignment.center,
              child: Container(
                height: 210.v,
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(
                  horizontal: 18.h,
                  vertical: 35.v,
                ),
                decoration: BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage(
                      ImageConstant.imgGroup26797,
                    ),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    Align(
                      alignment: Alignment.topRight,
                      child: Text(
                        discountbannerItemModelObj.discountPercentage!,
                        style: CustomTextStyles.displayLargeWhiteA700,
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: 3.h,
                          bottom: 37.v,
                        ),
                        child: Text(
                          discountbannerItemModelObj.discountText!,
                          style: CustomTextStyles.labelLargeWhiteA70012,
                        ),
                      ),
                    ),
                    Align(
                      alignment: Alignment.bottomRight,
                      child: Padding(
                        padding: EdgeInsets.only(
                          right: 3.h,
                          bottom: 14.v,
                        ),
                        child: RichText(
                          text: TextSpan(
                            children: [
                              TextSpan(
                                text: discountbannerItemModelObj.codeText!,
                                style: CustomTextStyles.labelLargeWhiteA70012,
                              ),
                              TextSpan(
                                text: "    ",
                                style: CustomTextStyles.labelLargeWhiteA70012,
                              ),
                              TextSpan(
                                text: discountbannerItemModelObj.discountCode!,
                                style: TextStyle(
                                  color: theme.colorScheme.onPrimary,
                                  fontSize: 12.fSize,
                                  fontFamily: 'Poppins',
                                  fontWeight: FontWeight.w400,
                                  shadows: [
                                    Shadow(
                                      color: Colors.black.withOpacity(0.25),
                                      offset: Offset(0, 4),
                                      blurRadius: 4,
                                    ),
                                  ],
                                  background: Paint()
                                    ..color = Colors.white
                                    ..strokeWidth = 15
                                    ..strokeJoin = StrokeJoin.round
                                    ..strokeCap = StrokeCap.round
                                    ..style = PaintingStyle.stroke,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            CustomImageView(
              imagePath: discountbannerItemModelObj.imageSource,
              height: 175.v,
              width: 212.h,
              alignment: Alignment.bottomLeft,
            ),
            Positioned(
              left: 0,
              bottom: 0,
              height: 50.v,
              child: ClipPath(
                clipper: CustomClipPathClass(),
                child: Container(
                  color: Colors.white,
                  height: 50.v,
                  width: 393.h,
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class CustomClipPathClass extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    final path = Path();
    path.lineTo(0, size.height);
    path.lineTo(size.width / 2, size.height);
    path.quadraticBezierTo(-size.width / 20, size.height/5, 0, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) => false;
}
