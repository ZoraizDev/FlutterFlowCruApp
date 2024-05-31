import '/flutter_flow/flutter_flow_util.dart';
import 'settings_and_privacy_widget.dart' show SettingsAndPrivacyWidget;
import 'package:flutter/material.dart';

class SettingsAndPrivacyModel
    extends FlutterFlowModel<SettingsAndPrivacyWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {
    unfocusNode.dispose();
  }
}
