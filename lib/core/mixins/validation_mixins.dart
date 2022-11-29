import 'dart:developer';

mixin ValidationMixin {
  bool isFieldEmpty(String? fieldValue) => fieldValue?.isEmpty ?? true;

  bool validateEmailAddress(String? email) {
    if (email == null) {
      return false;
    }

    return !RegExp(
            r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$')
        .hasMatch(email);
  }

  bool validatePassword(String? password) {
    if (password == null) {
      return false;
    }
    //* use this if u wan to validate a strong password
    // return !RegExp(r'^(?=.*\d)(?=.*[a-z])(?=.*[A-Z])(?=.*[a-zA-Z]).{8,}$')
    //     .hasMatch(password);

    return false;
  }

  bool validateConfirmPassword(confirmPassword, password) {
    log('this is the confirm passwor d $confirmPassword and this is the password  $password');
    if (confirmPassword == null) {
      return false;
    } else if (confirmPassword == password) {
      return false;
    } else {
      return true;
    }
  }
}
