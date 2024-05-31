import '/backend/supabase/supabase.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'post_detail_screen_widget.dart' show PostDetailScreenWidget;
import 'package:flutter/material.dart';

class PostDetailScreenModel extends FlutterFlowModel<PostDetailScreenWidget> {
  ///  Local state fields for this page.

  bool? isAddingComment;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Stores action output result for [Backend Call - Query Rows] action in Icon widget.
  List<PostLikeRow>? individualPostlikeQuery;
  // Stores action output result for [Backend Call - Delete Row(s)] action in Icon widget.
  List<PostLikeRow>? deletLikeRow;
  // Stores action output result for [Backend Call - Insert Row] action in Icon widget.
  PostLikeRow? insertLikeRow;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Stores action output result for [Backend Call - Insert Row] action in Icon widget.
  PostCommentsRow? sendCommentResult;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();
  }
}
