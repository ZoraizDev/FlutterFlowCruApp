import '/backend/supabase/supabase.dart';
import '/components/bottom_buttons/bottom_buttons_widget.dart';
import '/components/custom_header/custom_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import '/flutter_flow/form_field_controller.dart';
import 'account_information_widget.dart' show AccountInformationWidget;
import 'package:flutter/material.dart';

class AccountInformationModel
    extends FlutterFlowModel<AccountInformationWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for customHeader component.
  late CustomHeaderModel customHeaderModel;
  // State field(s) for PositionDropDown widget.
  String? positionDropDownValue;
  FormFieldController<String>? positionDropDownValueController;
  // State field(s) for CompanyDropDown widget.
  String? companyDropDownValue;
  FormFieldController<String>? companyDropDownValueController;
  // State field(s) for PlaceDropDown widget.
  String? placeDropDownValue;
  FormFieldController<String>? placeDropDownValueController;
  DateTime? datePicked1;
  DateTime? datePicked2;
  // Model for bottomButtons component.
  late BottomButtonsModel bottomButtonsModel;
  // Stores action output result for [Backend Call - Insert Row] action in bottomButtons widget.
  WorkHistoryRow? acountsetup;

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
