import 'dart:convert';
import 'package:flutter/foundation.dart';

import '/flutter_flow/flutter_flow_util.dart';
import 'api_manager.dart';

export 'api_manager.dart' show ApiCallResponse;

const _kPrivateApiFunctionName = 'ffPrivateApiCall';

class SendEmailCall {
  static Future<ApiCallResponse> call({
    String? destinationEmail = '',
    String? otp = '',
  }) async {
    final ffApiRequestBody = '''
{
  "personalizations": [
    {
      "to": [
        {
          "email": "$destinationEmail"
        }
      ],
      "subject": "please verify your account"
    }
  ],
  "content": [
    {
      "type": "text/plain",
      "value": " This is your OTP code $otp"
    }
  ],
  "from": {
    "email": "conor@crus.co",
    "name": "cruapp No-reply"
  }
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sendEmail',
      apiUrl: 'https://api.sendgrid.com/v3/mail/send',
      callType: ApiCallType.POST,
      headers: {
        'Authorization':
            'Bearer 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',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchTailNumberCall {
  static Future<ApiCallResponse> call({
    String? searchString = ' ',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'searchTailNumber',
      apiUrl:
          'https://dczzxmmednowmethyscw.supabase.co/rest/v1/planes?number=ilike.*$searchString*&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRjenp4bW1lZG5vd21ldGh5c2N3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg4MjY2NTgsImV4cCI6MjAyNDQwMjY1OH0.qEZFO4RnOrWlr6MGLUB32ktM0s4fQofMgWEZOi3j_kE',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRjenp4bW1lZG5vd21ldGh5c2N3Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcwODgyNjY1OCwiZXhwIjoyMDI0NDAyNjU4fQ.T9DcetvvYSwQSC1Wsg_SjG931SAxV0yaWjncqqIwodw',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchFlightCall {
  static Future<ApiCallResponse> call({
    String? tailNumberSearch = ' ',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'searchFlight',
      apiUrl:
          'https://dczzxmmednowmethyscw.supabase.co/rest/v1/flights?tail_number=ilike.*$tailNumberSearch*&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRjenp4bW1lZG5vd21ldGh5c2N3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg4MjY2NTgsImV4cCI6MjAyNDQwMjY1OH0.qEZFO4RnOrWlr6MGLUB32ktM0s4fQofMgWEZOi3j_kE',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRjenp4bW1lZG5vd21ldGh5c2N3Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcwODgyNjY1OCwiZXhwIjoyMDI0NDAyNjU4fQ.T9DcetvvYSwQSC1Wsg_SjG931SAxV0yaWjncqqIwodw',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class PilotForumsCall {
  static Future<ApiCallResponse> call({
    String? searchForm = ' ',
    String? type = 'pilot',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'pilotForums',
      apiUrl:
          'https://dczzxmmednowmethyscw.supabase.co/rest/v1/forums?forum_type=ilike.*$type*&title=ilike.*$searchForm*&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRjenp4bW1lZG5vd21ldGh5c2N3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg4MjY2NTgsImV4cCI6MjAyNDQwMjY1OH0.qEZFO4RnOrWlr6MGLUB32ktM0s4fQofMgWEZOi3j_kE',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRjenp4bW1lZG5vd21ldGh5c2N3Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcwODgyNjY1OCwiZXhwIjoyMDI0NDAyNjU4fQ.T9DcetvvYSwQSC1Wsg_SjG931SAxV0yaWjncqqIwodw',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class OwnerForumCall {
  static Future<ApiCallResponse> call({
    String? searchForm = ' ',
    String? type = 'owner',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'ownerForum',
      apiUrl:
          'https://dczzxmmednowmethyscw.supabase.co/rest/v1/forums?forum_type=ilike.*$type*&title=ilike.*$searchForm*&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRjenp4bW1lZG5vd21ldGh5c2N3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg4MjY2NTgsImV4cCI6MjAyNDQwMjY1OH0.qEZFO4RnOrWlr6MGLUB32ktM0s4fQofMgWEZOi3j_kE',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRjenp4bW1lZG5vd21ldGh5c2N3Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcwODgyNjY1OCwiZXhwIjoyMDI0NDAyNjU4fQ.T9DcetvvYSwQSC1Wsg_SjG931SAxV0yaWjncqqIwodw',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchJobsCall {
  static Future<ApiCallResponse> call({
    String? jobName = ' ',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'searchJobs',
      apiUrl:
          'https://dczzxmmednowmethyscw.supabase.co/rest/v1/jobs?title=ilike.*$jobName*&select=*',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRjenp4bW1lZG5vd21ldGh5c2N3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg4MjY2NTgsImV4cCI6MjAyNDQwMjY1OH0.qEZFO4RnOrWlr6MGLUB32ktM0s4fQofMgWEZOi3j_kE',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRjenp4bW1lZG5vd21ldGh5c2N3Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcwODgyNjY1OCwiZXhwIjoyMDI0NDAyNjU4fQ.T9DcetvvYSwQSC1Wsg_SjG931SAxV0yaWjncqqIwodw',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SearchFriendsCall {
  static Future<ApiCallResponse> call({
    String? userID = ' ',
  }) async {
    final ffApiRequestBody = '''
{
  "userid": "$userID"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'searchFriends',
      apiUrl:
          'https://dczzxmmednowmethyscw.supabase.co/rest/v1/rpc/userfriends',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRjenp4bW1lZG5vd21ldGh5c2N3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg4MjY2NTgsImV4cCI6MjAyNDQwMjY1OH0.qEZFO4RnOrWlr6MGLUB32ktM0s4fQofMgWEZOi3j_kE',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRjenp4bW1lZG5vd21ldGh5c2N3Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcwODgyNjY1OCwiZXhwIjoyMDI0NDAyNjU4fQ.T9DcetvvYSwQSC1Wsg_SjG931SAxV0yaWjncqqIwodw',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class LogFlightsCall {
  static Future<ApiCallResponse> call({
    String? tailNumber = ' ',
    String? selctedDate = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'logFlights',
      apiUrl:
          'https://dczzxmmednowmethyscw.supabase.co/rest/v1/flights?tail_number=like.*$tailNumber*&flight_date=ilike.*$selctedDate',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRjenp4bW1lZG5vd21ldGh5c2N3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg4MjY2NTgsImV4cCI6MjAyNDQwMjY1OH0.qEZFO4RnOrWlr6MGLUB32ktM0s4fQofMgWEZOi3j_kE',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRjenp4bW1lZG5vd21ldGh5c2N3Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcwODgyNjY1OCwiZXhwIjoyMDI0NDAyNjU4fQ.T9DcetvvYSwQSC1Wsg_SjG931SAxV0yaWjncqqIwodw',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class UserMessagesCall {
  static Future<ApiCallResponse> call({
    String? userID = '',
    String? friendid = '',
  }) async {
    final ffApiRequestBody = '''
{
  "userid": "$friendid",
  "friendid": "$userID"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'userMessages',
      apiUrl:
          'https://dczzxmmednowmethyscw.supabase.co/rest/v1/rpc/get_all_user_messages',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRjenp4bW1lZG5vd21ldGh5c2N3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg4MjY2NTgsImV4cCI6MjAyNDQwMjY1OH0.qEZFO4RnOrWlr6MGLUB32ktM0s4fQofMgWEZOi3j_kE',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRjenp4bW1lZG5vd21ldGh5c2N3Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcwODgyNjY1OCwiZXhwIjoyMDI0NDAyNjU4fQ.T9DcetvvYSwQSC1Wsg_SjG931SAxV0yaWjncqqIwodw',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }

  static List? messageData(dynamic response) => getJsonField(
        response,
        r'''$''',
        true,
      ) as List?;
  static List<String>? message(dynamic response) => (getJsonField(
        response,
        r'''$[:].messages''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? dateTime(dynamic response) => (getJsonField(
        response,
        r'''$[:].created_at''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
  static List<String>? userIds(dynamic response) => (getJsonField(
        response,
        r'''$[:].user_id''',
        true,
      ) as List?)
          ?.withoutNulls
          .map((x) => castToType<String>(x))
          .withoutNulls
          .toList();
}

class SendMessageCall {
  static Future<ApiCallResponse> call({
    String? userID = '',
    String? senderId = '',
    String? message = '',
  }) async {
    final ffApiRequestBody = '''
{
  "user_id": "$userID",
  "messages": "$message",
  "user_ids": [
    "$userID",
    "$senderId"
  ]
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'sendMessage',
      apiUrl: 'https://dczzxmmednowmethyscw.supabase.co/rest/v1/user_messages',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRjenp4bW1lZG5vd21ldGh5c2N3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg4MjY2NTgsImV4cCI6MjAyNDQwMjY1OH0.qEZFO4RnOrWlr6MGLUB32ktM0s4fQofMgWEZOi3j_kE',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRjenp4bW1lZG5vd21ldGh5c2N3Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcwODgyNjY1OCwiZXhwIjoyMDI0NDAyNjU4fQ.T9DcetvvYSwQSC1Wsg_SjG931SAxV0yaWjncqqIwodw',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class GetFeedsCall {
  static Future<ApiCallResponse> call({
    String? limit = '',
    double? offset,
    String? content = '',
  }) async {
    return ApiManager.instance.makeApiCall(
      callName: 'getFeeds',
      apiUrl:
          'https://dczzxmmednowmethyscw.supabase.co/rest/v1/posts?content=ilike.*$content*&select=* ',
      callType: ApiCallType.GET,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRjenp4bW1lZG5vd21ldGh5c2N3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg4MjY2NTgsImV4cCI6MjAyNDQwMjY1OH0.qEZFO4RnOrWlr6MGLUB32ktM0s4fQofMgWEZOi3j_kE',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRjenp4bW1lZG5vd21ldGh5c2N3Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcwODgyNjY1OCwiZXhwIjoyMDI0NDAyNjU4fQ.T9DcetvvYSwQSC1Wsg_SjG931SAxV0yaWjncqqIwodw',
      },
      params: {},
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class SuggestionsNewApICall {
  static Future<ApiCallResponse> call({
    String? userid = '1c5119ce-7347-4dd6-aec1-504b47e9c92d',
  }) async {
    final ffApiRequestBody = '''
{
  "userid": "$userid"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'suggestionsNewApI',
      apiUrl:
          'https://dczzxmmednowmethyscw.supabase.co/rest/v1/rpc/get_all_new_suggestion',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRjenp4bW1lZG5vd21ldGh5c2N3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg4MjY2NTgsImV4cCI6MjAyNDQwMjY1OH0.qEZFO4RnOrWlr6MGLUB32ktM0s4fQofMgWEZOi3j_kE',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRjenp4bW1lZG5vd21ldGh5c2N3Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcwODgyNjY1OCwiZXhwIjoyMDI0NDAyNjU4fQ.T9DcetvvYSwQSC1Wsg_SjG931SAxV0yaWjncqqIwodw',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class FriendSuggessionsAPICall {
  static Future<ApiCallResponse> call({
    String? userid = '',
  }) async {
    final ffApiRequestBody = '''
{
  "userid": "$userid"
}''';
    return ApiManager.instance.makeApiCall(
      callName: 'friendSuggessionsAPI',
      apiUrl:
          'https://dczzxmmednowmethyscw.supabase.co/rest/v1/rpc/get_all_persons_data1',
      callType: ApiCallType.POST,
      headers: {
        'apikey':
            'eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRjenp4bW1lZG5vd21ldGh5c2N3Iiwicm9sZSI6ImFub24iLCJpYXQiOjE3MDg4MjY2NTgsImV4cCI6MjAyNDQwMjY1OH0.qEZFO4RnOrWlr6MGLUB32ktM0s4fQofMgWEZOi3j_kE',
        'Authorization':
            'Bearer eyJhbGciOiJIUzI1NiIsInR5cCI6IkpXVCJ9.eyJpc3MiOiJzdXBhYmFzZSIsInJlZiI6ImRjenp4bW1lZG5vd21ldGh5c2N3Iiwicm9sZSI6InNlcnZpY2Vfcm9sZSIsImlhdCI6MTcwODgyNjY1OCwiZXhwIjoyMDI0NDAyNjU4fQ.T9DcetvvYSwQSC1Wsg_SjG931SAxV0yaWjncqqIwodw',
        'Content-Type': 'application/json',
      },
      params: {},
      body: ffApiRequestBody,
      bodyType: BodyType.JSON,
      returnBody: true,
      encodeBodyUtf8: false,
      decodeUtf8: false,
      cache: false,
      alwaysAllowBody: false,
    );
  }
}

class ApiPagingParams {
  int nextPageNumber = 0;
  int numItems = 0;
  dynamic lastResponse;

  ApiPagingParams({
    required this.nextPageNumber,
    required this.numItems,
    required this.lastResponse,
  });

  @override
  String toString() =>
      'PagingParams(nextPageNumber: $nextPageNumber, numItems: $numItems, lastResponse: $lastResponse,)';
}

String _toEncodable(dynamic item) {
  return item;
}

String _serializeList(List? list) {
  list ??= <String>[];
  try {
    return json.encode(list, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("List serialization failed. Returning empty list.");
    }
    return '[]';
  }
}

String _serializeJson(dynamic jsonVar, [bool isList = false]) {
  jsonVar ??= (isList ? [] : {});
  try {
    return json.encode(jsonVar, toEncodable: _toEncodable);
  } catch (_) {
    if (kDebugMode) {
      print("Json serialization failed. Returning empty json.");
    }
    return isList ? '[]' : '{}';
  }
}
