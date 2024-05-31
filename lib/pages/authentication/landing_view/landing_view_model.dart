import '/flutter_flow/flutter_flow_util.dart';
import 'landing_view_widget.dart' show LandingViewWidget;
import 'package:flutter/material.dart';

class LandingViewModel extends FlutterFlowModel<LandingViewWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
