import '/components/custom_header/custom_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'on_boarding_one_screen_widget.dart' show OnBoardingOneScreenWidget;
import 'package:flutter/material.dart';

class OnBoardingOneScreenModel
    extends FlutterFlowModel<OnBoardingOneScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for customHeader component.
  late CustomHeaderModel customHeaderModel;

  @override
  void initState(BuildContext context) {
    customHeaderModel = createModel(context, () => CustomHeaderModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    customHeaderModel.dispose();
  }
}
