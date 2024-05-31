import '/backend/api_requests/api_calls.dart';
import '/backend/supabase/supabase.dart';
import '/components/drawer_content/drawer_content_widget.dart';
import '/components/menu_header_bar/menu_header_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'crus_widget.dart' show CrusWidget;
import 'package:flutter/material.dart';

class CrusModel extends FlutterFlowModel<CrusWidget> {
  ///  Local state fields for this page.

  String? userName;

  bool? isShowSearch;

  bool? isShowAllRequest;

  bool? isShowAllConnections;

  bool? isShowAllFriends;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Query Rows] action in crus widget.
  List<PersonRow>? currentUserData;
  // Stores action output result for [Backend Call - API (friendSuggessionsAPI)] action in crus widget.
  ApiCallResponse? commonfriendApiResult;
  // Stores action output result for [Backend Call - Query Rows] action in crus widget.
  List<PersonRow>? allUserSuggesion;
  // Model for menuHeaderBar component.
  late MenuHeaderBarModel menuHeaderBarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for drawerContent component.
  late DrawerContentModel drawerContentModel;

  @override
  void initState(BuildContext context) {
    menuHeaderBarModel = createModel(context, () => MenuHeaderBarModel());
    drawerContentModel = createModel(context, () => DrawerContentModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    menuHeaderBarModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    drawerContentModel.dispose();
  }
}
