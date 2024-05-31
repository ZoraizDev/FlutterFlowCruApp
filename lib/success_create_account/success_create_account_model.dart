import '/components/bottom_buttons/bottom_buttons_widget.dart';
import '/components/custom_header/custom_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'success_create_account_widget.dart' show SuccessCreateAccountWidget;
import 'package:flutter/material.dart';

class SuccessCreateAccountModel
    extends FlutterFlowModel<SuccessCreateAccountWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for customHeader component.
  late CustomHeaderModel customHeaderModel;
  // Model for bottomButtons component.
  late BottomButtonsModel bottomButtonsModel;

  @override
  void initState(BuildContext context) {
    customHeaderModel = createModel(context, () => CustomHeaderModel());
    bottomButtonsModel = createModel(context, () => BottomButtonsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    customHeaderModel.dispose();
    bottomButtonsModel.dispose();
  }
}
