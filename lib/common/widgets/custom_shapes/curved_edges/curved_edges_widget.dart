
import 'package:e_mart/common/widgets/custom_shapes/container/circular_container.dart';
import 'package:e_mart/utills/constants/colors.dart';
import 'package:flutter/material.dart';

import 'curved_edges.dart';
class TCurvedEdgeWidget extends StatelessWidget {
  const TCurvedEdgeWidget({
    super.key,
    required this.color,
    required this.headerHeight,
    required this.isCircular,
    required this.child,
  });

  final Color? color;
  final double? headerHeight;
  final bool isCircular;
  final Widget child;

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: TCustomCurvedEdges(),
      child: Container(
        width: double.infinity,
        color: color ?? TColores.primary,
        padding: const EdgeInsets.all(0),
        child: SizedBox(
          height: headerHeight ?? 288,
          child: Stack(
            children: [
              isCircular
                  ? Positioned(
                top: -100,
                right: -200,
                child: TCircularContainer(
                  height: 220,
                  radius: 200,
                  backgroundColor: TColores.white.withOpacity(0.2),
                  padding: 0,
                ),
              )
                  : const SizedBox(),
              isCircular
                  ? Positioned(
                bottom: 10,
                right: -200,
                child: TCircularContainer(
                  height: 220,
                  radius: 200,
                  backgroundColor: TColores.white.withOpacity(0.2),
                  padding: 0,
                ),
              )
                  : const SizedBox(),
              child
            ],
          ),
        ),
      ),
    );
  }
}