import 'package:e_mart/common/widgets/custom_shapes/container/primary_header_container.dart';
import 'package:e_mart/common/widgets/images/r_rounded_image.dart';
import 'package:e_mart/utills/constants/colors.dart';
import 'package:e_mart/utills/constants/image_strings.dart';
import 'package:flutter/material.dart';
class ProductDetailScreen extends StatelessWidget {
  const ProductDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return    Scaffold(
      body: Column(
        children: [
          RPrimaryHeaderContainer(
            isCircular: false,
            color: RColores.dark,
              child: Center(
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
            children: [
                const Image(image: AssetImage(RImages.shoes2),height: 180,),
            SizedBox(
              height: 70,
              child: ListView.builder(
                shrinkWrap: true,
                  scrollDirection: Axis.horizontal,
                  itemCount: 7,itemBuilder: (context,index){
                return  Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: RRoundedImage(

                      backgroundColor: RColores.black,
                      border: Border.all(color: RColores.white),
                      height: 50,
                      imageUrl: RImages.shoes2, isNetworkImage: false),
                );
              }),
            )
            ],
          ),
              ))
        ],
      ),
    );
  }
}
