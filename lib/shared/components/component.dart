import 'package:alipro/shared/cubit/login/login_cubit.dart';
import 'package:easy_localization/easy_localization.dart';
import 'package:flutter/material.dart';
import 'package:intl_phone_number_input/intl_phone_number_input.dart';
// Button

// app bar


// text button


navigateTo(context, route) => Navigator.pushNamed(context, route);

navigateAndFinish(context, route) =>
    Navigator.pushNamedAndRemoveUntil(context, route, (route) => false);
