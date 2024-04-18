import 'package:e_mart/utills/constants/colors.dart';
import 'package:flutter/cupertino.dart';

import 'circular_container.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key,
    required this.child,
    this.topHeight,
    this.headerHeight,
    this.color,
    this.isCircular = true,
  });
  final Widget child;

  final double? headerHeight;

  final double? topHeight;
  final Color? color;
  final bool isCircular;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: color ?? TColores.primary,
      padding: const EdgeInsets.all(0),
      child: SizedBox(
        height: headerHeight ?? 278,
        child: Stack(
          children: [
            isCircular
                ? Positioned(
                    top: -50,
                    right: -200,
                    child: TCircularContainer(
                      height: 200,
                      radius: 200,
                      backgroundColor: TColores.white.withOpacity(0.2),
                      padding: 0,
                    ),
                  )
                : const SizedBox(),
            isCircular
                ? Positioned(
                    bottom: 20,
                    right: -200,
                    child: TCircularContainer(
                      height: 200,
                      radius: 200,
                      backgroundColor: TColores.white.withOpacity(0.3),
                      padding: 0,
                    ),
                  )
                : const SizedBox(),
            Padding(
              padding: EdgeInsets.only(top: topHeight ?? 250),
              child: Container(
                height: double.infinity,
                width: double.infinity,
                decoration: const BoxDecoration(
                    color: TColores.white,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(20),
                      topRight: Radius.circular(20),
                    )),
              ),
            ),
            child
          ],
        ),
      ),
    );
  }
}
