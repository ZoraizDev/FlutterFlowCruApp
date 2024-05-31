import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/bottom_buttons/bottom_buttons_widget.dart';
import '/components/custom_header/custom_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'otp_view_screen_widget.dart' show OtpViewScreenWidget;
import 'package:flutter/material.dart';

class OtpViewScreenModel extends FlutterFlowModel<OtpViewScreenWidget> {
  ///  Local state fields for this page.

  String? otpGenerated;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for customHeader component.
  late CustomHeaderModel customHeaderModel;
  // State field(s) for PinCode widget.
  TextEditingController? pinCodeController;
  String? Function(BuildContext, String?)? pinCodeControllerValidator;
  // Stores action output result for [Backend Call - API (sendEmail)] action in Text widget.
  ApiCallResponse? apiiResult2y1;
  // Model for bottomButtons component.
  late BottomButtonsModel bottomButtonsModel;
  // Stores action output result for [Backend Call - Query Rows] action in bottomButtons widget.
  List<UserOtpRow>? userOtpQuery;

  @override
  void initState(BuildContext context) {
    customHeaderModel = createModel(context, () => CustomHeaderModel());
    pinCodeController = TextEditingController();
    bottomButtonsModel = createModel(context, () => BottomButtonsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    customHeaderModel.dispose();
    pinCodeController?.dispose();
    bottomButtonsModel.dispose();
  }
}
