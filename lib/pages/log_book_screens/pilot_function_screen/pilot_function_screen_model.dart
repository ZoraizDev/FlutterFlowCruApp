import '/components/bottom_buttons/bottom_buttons_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'pilot_function_screen_widget.dart' show PilotFunctionScreenWidget;
import 'package:flutter/material.dart';

class PilotFunctionScreenModel
    extends FlutterFlowModel<PilotFunctionScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for RadioButton widget.
  FormFieldController<String>? radioButtonValueController;
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

  /// Additional helper methods.
  String? get radioButtonValue => radioButtonValueController?.value;
}
