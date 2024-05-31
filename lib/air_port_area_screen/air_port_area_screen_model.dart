import '/components/bottom_buttons/bottom_buttons_widget.dart';
import '/components/custom_header/custom_header_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'air_port_area_screen_widget.dart' show AirPortAreaScreenWidget;
import 'package:flutter/material.dart';

class AirPortAreaScreenModel extends FlutterFlowModel<AirPortAreaScreenWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  // Model for customHeader component.
  late CustomHeaderModel customHeaderModel;
  // State field(s) for TextField widget.
  FocusNode? textFieldFocusNode;
  TextEditingController? textController;
  String? Function(BuildContext, String?)? textControllerValidator;
  // Model for bottomButtons component.
  late BottomButtonsModel bottomButtonsModel;

  @override
  void initState(BuildContext context) {
    customHeaderModel = createModel(context, () => CustomHeaderModel());
    bottomButtonsModel = createModel(context, () => BottomButtonsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    customHeaderModel.dispose();
    textFieldFocusNode?.dispose();
    textController?.dispose();

    bottomButtonsModel.dispose();
  }
}
