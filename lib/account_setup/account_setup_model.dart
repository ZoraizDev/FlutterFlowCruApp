import '/backend/supabase/supabase.dart';
import '/components/bottom_buttons/bottom_buttons_widget.dart';
import '/components/custom_header/custom_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'account_setup_widget.dart' show AccountSetupWidget;
import 'package:flutter/material.dart';

class AccountSetupModel extends FlutterFlowModel<AccountSetupWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for customHeader component.
  late CustomHeaderModel customHeaderModel;
  // State field(s) for DropDown widget.
  String? dropDownValue;
  FormFieldController<String>? dropDownValueController;
  // State field(s) for TextField widget.
  final textFieldKey = GlobalKey();
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? textFieldSelectedOption;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for bottomButtons component.
  late BottomButtonsModel bottomButtonsModel;
  // Stores action output result for [Backend Call - Query Rows] action in bottomButtons widget.
  List<PilotHistoryRow>? checkrowExists;

  @override
  void initState(BuildContext context) {
    customHeaderModel = createModel(context, () => CustomHeaderModel());
    bottomButtonsModel = createModel(context, () => BottomButtonsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    customHeaderModel.dispose();
    textFieldFocusNode?.dispose();

    bottomButtonsModel.dispose();
  }
}
