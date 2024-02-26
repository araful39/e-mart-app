
import 'package:e_mart/features/shop/screens/product_details/widget/product_details_images_slider.dart';

import 'package:flutter/material.dart';



class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(


      body: Column(
        children: [

          RProductImageSlider()
        ],
      ),
    );
  }
}


