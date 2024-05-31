import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/custom_header/custom_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'set_passowrd_view_widget.dart' show SetPassowrdViewWidget;
import 'package:flutter/material.dart';

class SetPassowrdViewModel extends FlutterFlowModel<SetPassowrdViewWidget> {
  ///  Local state fields for this page.

  String? otp;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // Model for customHeader component.
  late CustomHeaderModel customHeaderModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode1;
  TextEditingController? textController1;
  late bool passwordVisibility1;
  String? Function(BuildContext, String?)? textController1Validator;
  String? _textController1Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 8) {
      return 'min pass length is 8';
    }
    if (val.length > 16) {
      return 'max pass length is 16';
    }
    if (!RegExp(
            '^(?=.*[a-z])(?=.*[A-Z])(?=.*\\d)(?=.*[@\$!%*?&])[A-Za-z\\d@\$!%*?&]{8,}\$')
        .hasMatch(val)) {
      return 'Minimum length is 8\nInclude uppercase letters (A-Z)\nInclude lowercase letters (a-z)\nInclude numbers (0-9)\nInclude special characters (e.g., !@#\$%^&*)';
    }
    return null;
  }

  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode2;
  TextEditingController? textController2;
  late bool passwordVisibility2;
  String? Function(BuildContext, String?)? textController2Validator;
  String? _textController2Validator(BuildContext context, String? val) {
    if (val == null || val.isEmpty) {
      return 'Field is required';
    }

    if (val.length < 8) {
      return 'Requires at least 8 characters.';
    }
    if (val.length > 16) {
      return 'Maximum 16 characters allowed, currently ${val.length}.';
    }

    return null;
  }

  // Stores action output result for [Backend Call - Query Rows] action in Button widget.
  List<UserOtpRow>? otpExists;
  // Stores action output result for [Backend Call - API (sendEmail)] action in Button widget.
  ApiCallResponse? apiiResult2y6;

  @override
  void initState(BuildContext context) {
    customHeaderModel = createModel(context, () => CustomHeaderModel());
    passwordVisibility1 = false;
    textController1Validator = _textController1Validator;
    passwordVisibility2 = false;
    textController2Validator = _textController2Validator;
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    customHeaderModel.dispose();
    textFieldFocusNode1?.dispose();
    textController1?.dispose();

    textFieldFocusNode2?.dispose();
    textController2?.dispose();
  }
}
