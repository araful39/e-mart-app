import 'package:e_mart/utills/constants/colors.dart';
import 'package:flutter/cupertino.dart';

import 'circular_container.dart';

class TPrimaryHeaderContainer extends StatelessWidget {
  const TPrimaryHeaderContainer({
    super.key, required this.child,
  });
final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: TColores.primary,
      padding: const EdgeInsets.all(0),
      child: SizedBox(
        height: 400,
        child: Stack(
          children: [
            Positioned(
              top: -150,
              right: -200,
              child: TCircularContainer(
                radius: 400,
                backgroundColor: TColores.textWhite.withOpacity(0.2),
                padding: 0,
              ),
            ),
            Positioned(
              bottom: 100,
              right: -200,
              child: TCircularContainer(
                radius: 400,
                backgroundColor: TColores.textWhite.withOpacity(0.2),
                padding: 0,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                top: 200
              ),
              child: Container(
                height: double.infinity,width: double.infinity,
                decoration: BoxDecoration(
                    color: TColores.white,
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(50),topRight: Radius.circular(50),
                  )
                ),
              ),
            ),
            child

          ],
        ),
      ),
    );
  }
}