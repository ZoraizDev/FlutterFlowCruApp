// Automatic FlutterFlow imports
import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'index.dart'; // Imports other custom actions
import '/flutter_flow/custom_functions.dart'; // Imports custom functions
import 'package:flutter/material.dart';
// Begin custom action code
// DO NOT REMOVE OR MODIFY THE CODE ABOVE!

// Set your action name, define your arguments and return parameter,
// and then add the boilerplate code using the green button on the right!

Future<String?> getUsersNotInFriends(String userId) async {
  try {
    final supabase = SupaFlow.client;

    final friendsResponse = await supabase
        .rpc('get_person_by_userid', params: {'user_id': 'jhon@test.com'});

    return friendsResponse;
  } catch (e) {
    print('Exception: $e');
    return null;
  }
}
