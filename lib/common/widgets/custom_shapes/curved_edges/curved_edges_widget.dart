import 'package:flutter/material.dart';
import 'package:t_store/common/widgets/custom_shapes/curved_edges/curved_edges.dart';

class CustomCurvedWidget extends StatelessWidget {
  final Widget? child;
  const CustomCurvedWidget({
    super.key,
    this.child,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(
      clipper: CustomCurvedEdges(),
      child: child,
    );
  }
}
