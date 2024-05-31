import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';
import '/backend/supabase/supabase.dart';
import '/auth/supabase_auth/auth_util.dart';

String? checkDropdownSelected(String? dropdownValue) {
  if (dropdownValue == null) {
    return '';
  } else {
    return 'notEmpty';
  }
}

dynamic listToJson(List<int>? myList) {
  String jsonList = jsonEncode(myList);
  return jsonList;
}

List<dynamic>? feedsList(
  List<dynamic> existingArray,
  List<dynamic> newArray,
) {
  // json array argument , and function return json array, first load 10 items then 10 more and so on
  // Check if either list is null, return null if so
  if (existingArray == null || newArray == null) return null;

  // Merge the lists while avoiding duplicates
  Set<dynamic> mergedSet = Set<dynamic>.from(existingArray)..addAll(newArray);
  List<dynamic> mergedList = mergedSet.toList();

  return mergedList;
}

String? checkTime(DateTime? dateTime) {
  // time comparision with current time
  DateTime currentTime = DateTime.now();
  Duration difference = currentTime.difference(dateTime!);

  if (difference.inDays > 365) {
    final years = (difference.inDays / 365).floor();
    return '$years year${years != 1 ? 's' : ''} ago';
  } else if (difference.inDays > 30) {
    final months = (difference.inDays / 30).floor();
    return '$months month${months != 1 ? 's' : ''} ago';
  } else if (difference.inDays > 0) {
    return '${difference.inDays} day${difference.inDays != 1 ? 's' : ''} ago';
  } else if (difference.inHours > 0) {
    return '${difference.inHours} hour${difference.inHours != 1 ? 's' : ''} ago';
  } else {
    return 'now';
  }
}

String? hideKeyboard() {
  FocusManager.instance.primaryFocus?.unfocus();
  return null;
}

String? convertChatIds(
  String userId,
  String recieverId,
) {
  // function take two string and return json array
  List<String> jsonArray = [userId, recieverId];
  return jsonEncode(jsonArray);
}

dynamic getListofUID(
  String uuid1,
  String uuid2,
) {
  // return list of 2 uuid
  List<String> uuidList = [uuid1, uuid2];
  return jsonEncode(uuidList);
}

String getInitalLetters(String email) {
  if (email.isEmpty) {
    return ''; // Return empty string if email is empty
  }

  // Split email by '@' symbol and take the first part
  String username = email.split('@')[0];

  // Take the first two characters of the username and convert them to uppercase
  String firstTwoLetters = username.substring(0, 2).toUpperCase();

  return firstTwoLetters;
}

String? flightDateConverter(DateTime dateTime) {
  String _twoDigits(int n) {
    if (n >= 10) return '$n';
    return '0$n';
  }

  String formattedDate =
      '${dateTime.year}-${_twoDigits(dateTime.month)}-${_twoDigits(dateTime.day)}';
  return formattedDate;
}

bool nameContainsValue(
  String str1,
  String str2,
) {
  // fnction gets two string if first string contains any string from string 2 return true else false

  String string1 = str1.toLowerCase();
  String string2 = str2.toLowerCase();
  List<String> substrings = string2.split(" ");
  for (String substring in substrings) {
    if (string1.contains(substring)) {
      return true;
    }
  }
  return false;
}
