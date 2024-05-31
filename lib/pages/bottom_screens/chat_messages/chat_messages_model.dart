import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'chat_messages_widget.dart' show ChatMessagesWidget;
import 'package:flutter/material.dart';

class ChatMessagesModel extends FlutterFlowModel<ChatMessagesWidget> {
  ///  Local state fields for this page.

  bool? isChatExists;

  List<dynamic> cacheMessageList = [];
  void addToCacheMessageList(dynamic item) => cacheMessageList.add(item);
  void removeFromCacheMessageList(dynamic item) =>
      cacheMessageList.remove(item);
  void removeAtIndexFromCacheMessageList(int index) =>
      cacheMessageList.removeAt(index);
  void insertAtIndexInCacheMessageList(int index, dynamic item) =>
      cacheMessageList.insert(index, item);
  void updateCacheMessageListAtIndex(int index, Function(dynamic) updateFn) =>
      cacheMessageList[index] = updateFn(cacheMessageList[index]);

  bool? isMessageSending;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - API (sendMessage)] action in Icon widget.
  ApiCallResponse? sendMessageResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
