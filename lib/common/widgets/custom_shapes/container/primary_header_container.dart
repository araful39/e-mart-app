import 'package:e_mart/utills/constants/colors.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import 'circular_container.dart';

class RPrimaryHeaderContainer extends StatelessWidget {
  const RPrimaryHeaderContainer({
    super.key, required this.child,
  });
final Widget child;
  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      color: RColores.primary,
      padding: const EdgeInsets.all(0),
      child: SizedBox(
        height: Get.height*0.42,
        child: Stack(
          children: [
            Positioned(
              top: -50,
              right: -200,
              child: RCircularContainer(
                height: 200,
                radius: 200,
                backgroundColor: RColores.white.withOpacity(0.2),
                padding: 0,
              ),
            ),
            Positioned(
              bottom: 0,
              right: -200,
              child: RCircularContainer(
                height: 200,
                radius: 200,
                backgroundColor: RColores.white.withOpacity(0.3),
                padding: 0,
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(
                top: 225
              ),
              child: Container(
                height: double.infinity,width: double.infinity,
                decoration: const BoxDecoration(
                    color: RColores.white,
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