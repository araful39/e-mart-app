class TFirebaseAuthException {
  final String code;

  TFirebaseAuthException(this.code);

  String get message {
    switch (code) {
      case 'weak-password':
        return 'The password provided is too weak.';
      case 'email-already-in-use':
        return 'The account already exists for that email.';
      case 'invalid-email':
        return 'The email address is not valid.';
      case 'operation-not-allowed':
        return 'Email/password accounts are not enabled.';
      case 'user-not-found':
        return 'No user found for that email.';
      case 'wrong-password':
        return 'Wrong password provided for that user.';
      default:
        return 'An error occurred during authentication.';
    }
  }
}
class TFirebaseException {
  final String code;

  TFirebaseException(this.code);

  String get message {
    switch (code) {
      case 'unknown':
        return 'An unknown error occurred.';
      case 'network-request-failed':
        return 'A network error occurred. Please check your internet connection.';
      case 'internal-error':
        return 'An internal error occurred. Please try again later.';
      default:
        return 'An error occurred while communicating with Firebase.';
    }
  }
}

class TFormatException implements Exception {
  final String message;

  const TFormatException([this.message = 'Invalid format.']);

  @override
  String toString() => 'TFormatException: $message';
}

class TPlatformException implements Exception {
  // final String code;
  final String message;

  TPlatformException( this.message);

  @override
  String toString() => 'TPlatformException:  - $message';
}