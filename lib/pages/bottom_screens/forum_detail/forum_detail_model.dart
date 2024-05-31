import '/components/drawer_content/drawer_content_widget.dart';
import '/components/menu_header_bar/menu_header_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'forum_detail_widget.dart' show ForumDetailWidget;
import 'package:flutter/material.dart';

class ForumDetailModel extends FlutterFlowModel<ForumDetailWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for menuHeaderBar component.
  late MenuHeaderBarModel menuHeaderBarModel;
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
    drawerContentModel.dispose();
  }
}
