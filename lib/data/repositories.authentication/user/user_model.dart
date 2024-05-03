import 'package:e_mart/utills/formatters/formatter.dart';

class UserModel {
  final String id;
  final String firstName;
  final String lastName;
  final String username;
  final String email;
  final String phoneNumber;
  final String profilePicture;

  UserModel(
      {required this.id,
      required this.firstName,
      required this.lastName,
      required this.username,
      required this.email,
      required this.phoneNumber,
      required this.profilePicture});

String get fullName => "$firstName $lastName";

String get formattedPhoneNo => TFormatter.formatPhoneNumber(phoneNumber);



static List<String> namePorts(fullName) => fullName.split(" ");





}
