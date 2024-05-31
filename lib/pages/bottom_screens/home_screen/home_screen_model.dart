import '/backend/supabase/supabase.dart';
import '/components/drawer_content/drawer_content_widget.dart';
import '/components/menu_header_bar/menu_header_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'home_screen_widget.dart' show HomeScreenWidget;
import 'package:flutter/material.dart';

class HomeScreenModel extends FlutterFlowModel<HomeScreenWidget> {
  ///  Local state fields for this page.

  bool? isShowSearch;

  ///  State fields for stateful widgets in this page.

  // Stores action output result for [Backend Call - Query Rows] action in HomeScreen widget.
  List<WorkHistoryRow>? userData;
  // Model for menuHeaderBar component.
  late MenuHeaderBarModel menuHeaderBarModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Query Rows] action in Icon widget.
  List<PostLikeRow>? individualPostlikeQuery;
  // Stores action output result for [Backend Call - Delete Row(s)] action in Icon widget.
  List<PostLikeRow>? deletLikeRow;
  // Stores action output result for [Backend Call - Insert Row] action in Icon widget.
  PostLikeRow? insertLikeRow;
  // Model for drawerContent component.
  late DrawerContentModel drawerContentModel;

  @override
  void initState(BuildContext context) {
    menuHeaderBarModel = createModel(context, () => MenuHeaderBarModel());
    drawerContentModel = createModel(context, () => DrawerContentModel());
  }

  @override
  void dispose() {
    menuHeaderBarModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    drawerContentModel.dispose();
  }
}
