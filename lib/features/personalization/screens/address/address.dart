import 'package:e_mart/common/widgets/appbar/appbar.dart';
import 'package:e_mart/features/personalization/screens/address/add_new_address.dart';
import 'package:e_mart/features/personalization/screens/address/widget/user_adresses.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_navigation/get_navigation.dart';

class UserAddressScreen extends StatelessWidget {
  const UserAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: const RAppBar(
        showBackArrow: true,
        title: Text("Addresses"),
      ),
      body:  Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
        ),
        child: ListView.builder(
            itemCount: 15,
            itemBuilder: (context,index){
          return    const RUserAdresses(
            name: 'Raju islam',
            phoneNumber: '+880192345678',
            adresses: 'Mirpur-10,dhaka',
            country: 'Bangladesh', showIcon: true,
          );
        }),
      ),
      floatingActionButton: FloatingActionButton(
        backgroundColor: Colors.indigo,
        onPressed: () =>Get.to(()=>const RAddNewAddress()),
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
    );
  }
}
