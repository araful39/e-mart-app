import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:e_mart/common/widgets/vertical_images_text/vertical_image_text.dart';
import 'package:flutter/material.dart';

class RHomeCategories extends StatelessWidget {

  const RHomeCategories({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 75,
      child: StreamBuilder(
        stream: FirebaseFirestore.instance.collection("categories").snapshots(),
        builder: (_,  snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return const Center(
                child: CircularProgressIndicator(),);
          } else {
            return ListView.builder(
            shrinkWrap: true,
            itemCount: snapshot.data?.docs.length,
            scrollDirection: Axis.horizontal,
                itemBuilder: (_, index) {
                  final category=snapshot.data?.docs[index];
              return RVerticalImageText(
                text:  category?['name'],
                netImagePath: category?['image'],
              );
            });
          }

        },
      ),
    );
  }
}
