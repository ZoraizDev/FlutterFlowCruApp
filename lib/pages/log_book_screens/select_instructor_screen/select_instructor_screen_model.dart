import '/components/bottom_buttons/bottom_buttons_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'select_instructor_screen_widget.dart' show SelectInstructorScreenWidget;
import 'package:flutter/material.dart';

class SelectInstructorScreenModel
    extends FlutterFlowModel<SelectInstructorScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
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

    bottomButtonsModel.dispose();
  }
}
