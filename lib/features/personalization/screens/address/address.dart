import 'package:e_mart/common/widgets/appbar/appbar.dart';
import 'package:e_mart/features/personalization/screens/address/widget/r_add_new_address.dart';
import 'package:e_mart/features/personalization/screens/address/widget/r_user_adresses.dart';
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
      body: const SingleChildScrollView(
        child: Padding(
          padding: EdgeInsets.symmetric(
            horizontal: 20,
          ),
          child: Column(
            children: [
              RUserAdresses(
                name: 'Raju islam',
                phoneNumber: '+880192345678',
                adresses: 'Mirpur-10,dhaka',
                country: 'Bangladesh',
              ),
              RUserAdresses(
                name: 'Raju islam',
                phoneNumber: '+880192345678',
                adresses: 'Mirpur-10,dhaka',
                country: 'Bangladesh',
              ),
              RUserAdresses(
                name: 'Raju islam',
                phoneNumber: '+880192345678',
                adresses: 'Mirpur-10,dhaka',
                country: 'Bangladesh',
              ),
              RUserAdresses(
                name: 'Raju islam',
                phoneNumber: '+880192345678',
                adresses: 'Mirpur-10,dhaka',
                country: 'Bangladesh',
              ),
              RUserAdresses(
                name: 'Raju islam',
                phoneNumber: '+880192345678',
                adresses: 'Mirpur-10,dhaka',
                country: 'Bangladesh',
              ),
              RUserAdresses(
                name: 'Raju islam',
                phoneNumber: '+880192345678',
                adresses: 'Mirpur-10,dhaka',
                country: 'Bangladesh',
              ),
              RUserAdresses(
                name: 'Raju islam',
                phoneNumber: '+880192345678',
                adresses: 'Mirpur-10,dhaka',
                country: 'Bangladesh',
              ),
              RUserAdresses(
                name: 'Raju islam',
                phoneNumber: '+880192345678',
                adresses: 'Mirpur-10,dhaka',
                country: 'Bangladesh',
              ),
            ],
          ),
        ),
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
