import '/flutter_flow/flutter_flow_util.dart';
import 'chat_list_screen_widget.dart' show ChatListScreenWidget;
import 'package:flutter/material.dart';

class ChatListScreenModel extends FlutterFlowModel<ChatListScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
