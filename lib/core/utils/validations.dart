class ValidationHandler {
  static String? requiredDouble(String? value) {
    if (value != null && value.trim().isEmpty) {
      return 'Field can not be empty';
    } else if (double.parse(value.toString()) < 1.0) {
      return 'Input a valid value';
    }

    return null;
  }

  static String? required(String? value) {
    if (value != null && value.trim().isEmpty) {
      return 'Field can not be empty';
    }

    return null;
  }

  static String? dropDownRequired(String? value) {
    if (value == null) {
      return 'Field can not be empty';
    }

    return null;
  }

  static String? validateRequired(String? value) {
    if (value!.trim().isEmpty) {
      return 'Field can not be empty';
    }

    return null;
  }

  static String? validateAmount(String? value) {
    if (value != null && value.trim().isEmpty) {
      return 'Amount can not be empty';
    } else if (double.parse(value.toString()) < 1.0) {
      return 'Input a valid Amount';
    }

    return null;
  }

  static String? validateFullName(String? value) {
    if (value != null && value.trim().isEmpty) {
      return 'Full name can not be empty';
    } else if (value != null && value.trim().length < 6) {
      return 'Full name can not be less than 6 characters';
    } else if (value != null && value.trim().length > 255) {
      return 'Full name can not be greater than 255 characters';
    }

    return null;
  }

  static String? validateName(String? value) {
    if (value != null && value.trim().isEmpty) {
      return 'Name can not be empty';
    } else if (value != null && value.trim().length > 255) {
      return 'Name can not be greater than 255 characters';
    }

    return null;
  }

  static String? validatePartName(String? value) {
    if (value != null && value.trim().isEmpty) {
      return 'Part name can not be empty';
    } else if (value != null && value.trim().length > 255) {
      return 'Part name can not be greater than 255 characters';
    }

    return null;
  }

  static String? validateVehicleName(String? value) {
    if (value != null && value.trim().isEmpty) {
      return 'Vehicle name can not be empty';
    } else if (value != null && value.trim().length < 3) {
      return 'Vehicle name can not be less than 3 characters';
    } else if (value != null && value.trim().length > 255) {
      return 'Vehicle name can not be greater than 255 characters';
    }

    return null;
  }

  static String? validateFullNameOptional(String? value) {
    if (value != null && value.trim().isEmpty) {
      return null;
    } else if (value != null && value.trim().length < 6) {
      return 'Full name can not be less than 6 characters';
    } else if (value != null && value.trim().length > 255) {
      return 'Full name can not be greater than 255 characters';
    }

    return null;
  }

  static String? validatePassword(String? value) {
    if (value != null && value.trim().isEmpty) {
      return 'Password can not be empty';
    } else if (value != null && value.trim().length < 8) {
      return 'Password can not be less than 8 characters';
    }

    return null;
  }

  static String? validateCPassword(String? value, String password) {
    if (value != null && value.trim().isEmpty) {
      return 'Password can not be empty';
    } else if (value != password) {
      return 'Password does not match';
    } else {
      return null;
    }
  }

  static String? validateAccountNumber(String? value) {
    if (value != null && value.trim().isEmpty) {
      return 'Account number can not be empty';
    } else if (value != null && value.trim().length != 10) {
      return 'Account number is Invalid';
    }

    return null;
  }

  static String? validateAccountNumberOptional(String? value) {
    if (value != null && value.trim().isEmpty) {
      return null;
    } else if (value != null && value.trim().length != 10) {
      return 'Account number is Invalid';
    }

    return null;
  }

  static String? validateBVN(String? value) {
    if (value != null && value.trim().isEmpty) {
      return 'BVN can not be empty';
    } else if (value != null && value.trim().length != 11) {
      return 'BVN is Invalid';
    }

    return null;
  }

  static String? validateBVNOptional(String? value) {
    if (value != null && value.trim().isEmpty) {
      return null;
    } else if (value != null && value.trim().length != 11) {
      return 'BVN is Invalid';
    }

    return null;
  }

  static String? validatePhone(String? value) {
    if (value != null && value.trim().isEmpty) {
      return 'Phone can not be empty';
    } else if (value != null && value.trim().length != 11) {
      return 'Phone is Invalid';
    }
//    else if (RegExp(r"^234[0-9]{10}$").hasMatch(value) == false) return 'Phone number must start with 234';

    return null;
  }

  static String? validateCPhone(String? value, String phone) {
    if (value != null && value.trim().isEmpty) {
      return 'Phone can not be empty';
    } else if (value != phone) {
      return 'Phone number does not match';
    } else {
      return null;
    }
  }

  static String? validatePhoneOptional(String? value) {
    if (value != null && value.trim().isEmpty) return null;
    if (value != null && value.trim().length != 11) return 'Phone is Invalid';

    return null;
  }

  static String? validateReview(String? value) {
    if (value != null && value.trim().isEmpty) {
      return 'Review can not be empty';
    } else if (value != null && value.trim().length > 255) {
      return 'Review can not be greater than 255 characters';
    }

    return null;
  }

  static String? validateEmail(String? value) {
    if (value != null && value.trim().isEmpty) {
      return "Email can not be empty";
    } else if (value != null &&
        RegExp(r"^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                .hasMatch(value) ==
            false) {
      return 'Email not valid';
    }

    return null;
  }

  static String? validateEmailOptional(String? value) {
    if (value != null && value.trim().isEmpty) {
      return null;
    } else if (value != null &&
        RegExp(r"^[a-z0-9!#$%&'*+/=?^_`{|}~-]+(?:\.[a-z0-9!#$%&'*+/=?^_`{|}~-]+)*@(?:[a-z0-9](?:[a-z0-9-]*[a-z0-9])?\.)+[a-z0-9](?:[a-z0-9-]*[a-z0-9])?")
                .hasMatch(value) ==
            false) {
      return 'Email not valid';
    }

    return null;
  }

  static String? validateAddress(String? value) {
    if (value != null && value.trim().isEmpty) {
      return 'Address can not be empty';
    } else if (value != null && value.trim().length < 10) {
      return 'Address can not be less than 10 characters';
    }

    return null;
  }

  static String? validateVINNumber(String? value) {
    // 1 HGBH 41 JXMN 109186
    if (value != null && value.trim().isEmpty) {
      return 'Vehicle VIN can not be empty';
    } else if (value != null && value.trim().length != 17) {
      return 'Vehicle VIN must be 17 characters';
    }
//    else if (RegExp(r"^([0-9]{1})([A-Za-z]{4})([0-9]{2})([A-Za-z]{4})([0-9]{6})$").hasMatch(value) == false) return 'Vehicle VIN is not valid';

    return null;
  }

  static String? validateAddressOptional(String? value) {
    if (value != null && value.trim().isEmpty) {
      return null;
    } else if (value != null && value.trim().length < 10) {
      return 'Address can not be less than 10 characters';
    }

    return null;
  }
}
