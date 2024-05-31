import '/components/drawer_content/drawer_content_widget.dart';
import '/components/menu_header_bar/menu_header_bar_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'forum_widget.dart' show ForumWidget;
import 'package:flutter/material.dart';

class ForumModel extends FlutterFlowModel<ForumWidget> {
  ///  Local state fields for this page.

  bool isSearchOpen = true;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
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
