//default value
import 'package:flutter/material.dart';

import '../../theme/colors.dart';


const kDefaultPadding = 20.0;

const kSizedBox = SizedBox(
  height: kDefaultPadding,
);
const kWidthSizedBox = SizedBox(
  width: kDefaultPadding,
);

const kHalfSizedBox = SizedBox(
  height: kDefaultPadding / 2,
);

const kHalfWidthSizedBox = SizedBox(
  width: kDefaultPadding / 2,
);

//Default BLue Link Heading
var defaultLinkTextStyle = const TextStyle(
  color: kBlueLinkTextColor,
  fontWeight: FontWeight.bold,
);

//username pattern
const String userNamePattern = r'^.{3,}$'; //Min. of 3 characters

//validation for mobile
const String mobilePattern = r'(^(?:[+0]9)?[0-9]{10,12}$)'; //Must be integers

//validation for mobile
const String nigerianPhoneMobilePattern =
    r'^(\+?234|0)?[789]\d{9}$'; //Must be integers

//validation for street address
const String streetAddressPattern = r'^\d+\s+[a-zA-Z0-9\s.-]+$';

//validation for email
const String emailPattern =
    r'^(([^<>()[\]\\.,;:\s@\"]+(\.[^<>()[\]\\.,;:\s@\"]+)*)|(\".+\"))@((\[[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\.[0-9]{1,3}\])|(([a-zA-Z\-0-9]+\.)+[a-zA-Z]{2,}))$';
