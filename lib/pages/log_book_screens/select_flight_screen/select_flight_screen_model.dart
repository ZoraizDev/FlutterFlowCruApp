import '/components/bottom_buttons/bottom_buttons_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'select_flight_screen_widget.dart' show SelectFlightScreenWidget;
import 'package:flutter/material.dart';

class SelectFlightScreenModel
    extends FlutterFlowModel<SelectFlightScreenWidget> {
  ///  Local state fields for this page.

  DateTime? tempSelectedDate;

  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  DateTime? datePicked;
  // Model for bottomButtons component.
  late BottomButtonsModel bottomButtonsModel;

  @override
  void initState(BuildContext context) {
    bottomButtonsModel = createModel(context, () => BottomButtonsModel());
  }

  @override
  void dispose() {
    unfocusNode.dispose();
    bottomButtonsModel.dispose();
  }
}
