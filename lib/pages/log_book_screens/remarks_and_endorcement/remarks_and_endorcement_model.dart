import '/components/bottom_buttons/bottom_buttons_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'remarks_and_endorcement_widget.dart' show RemarksAndEndorcementWidget;
import 'package:flutter/material.dart';

class RemarksAndEndorcementModel
    extends FlutterFlowModel<RemarksAndEndorcementWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for bottomButtons component.
  late BottomButtonsModel bottomButtonsModel;

  @override
  void initState(BuildContext context) {
    bottomButtonsModel = createModel(context, () => BottomButtonsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    bottomButtonsModel.dispose();
  }
}
