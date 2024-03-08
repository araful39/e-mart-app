import 'package:e_mart/common/widgets/appbar/appbar.dart';
import 'package:e_mart/common/widgets/button/elevated_button.dart';
import 'package:e_mart/common/widgets/text_form/text_form_feild.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';
class RAddNewAddress extends StatelessWidget {
  const RAddNewAddress({super.key});

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: const RAppBar(
        showBackArrow: true,
        title: Text('Add new Address'),
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          children: [
            const RTextFormField(labelName: 'Name',),
            const RTextFormField(iconData: Icons.phone, labelName: 'Phone Number',),
            const Row(
              children: [
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: RTextFormField(

                      iconData: Icons.streetview, labelName: 'Street',
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: RTextFormField(
                      iconData: Icons.post_add, labelName: 'Postal Code',
                    ),
                  ),
                ),
              ],
            ),
            const Row(
              children: [
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(right: 10),
                    child: RTextFormField(

                      iconData: Icons.location_city, labelName: 'City',
                    ),
                  ),
                ),
                Flexible(
                  child: Padding(
                    padding: EdgeInsets.only(left: 10),
                    child: RTextFormField(
                      iconData: Icons.real_estate_agent, labelName: 'State',
                    ),
                  ),
                ),
              ],
            ),
            const RTextFormField(labelName: "Country",iconData: Icons.blur_circular,),
            RElevatedButton(name: "Save", onPressed: ()=> Get.back())

          ],
        ),
      ),
    );
  }
}
