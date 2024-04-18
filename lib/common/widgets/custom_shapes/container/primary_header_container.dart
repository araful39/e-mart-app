import 'package:e_mart/common/widgets/custom_shapes/curved_edges/curved_edges_widget.dart';
import 'package:flutter/cupertino.dart';


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
    return TCurvedEdgeWidget(
        color: color,
        headerHeight: headerHeight,
        isCircular: isCircular,
        child: child);
  }
}


