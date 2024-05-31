import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'account_widget.dart' show AccountWidget;
import 'package:flutter/material.dart';

class AccountModel extends FlutterFlowModel<AccountWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  final formKey = GlobalKey<FormState>();
  // State field(s) for TabBar widget.
  TabController? tabBarController;
  int get tabBarCurrentIndex =>
      tabBarController != null ? tabBarController!.index : 0;

  // State field(s) for username widget.
  FocusNode? usernameFocusNode;
  TextEditingController? usernameTextController;
  String? Function(BuildContext, String?)? usernameTextControllerValidator;
  // State field(s) for callSign widget.
  FocusNode? callSignFocusNode;
  TextEditingController? callSignTextController;
  String? Function(BuildContext, String?)? callSignTextControllerValidator;
  // State field(s) for title widget.
  FocusNode? titleFocusNode;
  TextEditingController? titleTextController;
  String? Function(BuildContext, String?)? titleTextControllerValidator;
  // State field(s) for profession widget.
  FocusNode? professionFocusNode;
  TextEditingController? professionTextController;
  String? Function(BuildContext, String?)? professionTextControllerValidator;
  // Stores action output result for [Backend Call - Update Row(s)] action in Container widget.
  List<PersonRow>? updateProfile;
  // Stores action output result for [Backend Call - Update Row(s)] action in Container widget.
  List<PersonRow>? updateNumber;
  // Stores action output result for [Backend Call - Update Row(s)] action in Container widget.
  List<PersonRow>? updateTitle;
  // Stores action output result for [Backend Call - Update Row(s)] action in Container widget.
  List<PersonRow>? updateProfession;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController5;
  String? Function(BuildContext, String?)? textController5Validator;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    tabBarController?.dispose();
    usernameFocusNode?.dispose();
    usernameTextController?.dispose();

    callSignFocusNode?.dispose();
    callSignTextController?.dispose();

    titleFocusNode?.dispose();
    titleTextController?.dispose();

    professionFocusNode?.dispose();
    professionTextController?.dispose();

    textFieldFocusNode?.dispose();
    textController5?.dispose();
  }
}
