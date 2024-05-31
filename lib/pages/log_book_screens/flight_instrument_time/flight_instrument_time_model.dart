import '/components/bottom_buttons/bottom_buttons_widget.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'flight_instrument_time_widget.dart' show FlightInstrumentTimeWidget;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class FlightInstrumentTimeModel
    extends FlutterFlowModel<FlightInstrumentTimeWidget> {
  ///  State fields for stateful widgets in this page.

  final unfocusNode = FocusNode();
  DateTime? datePicked1;
  DateTime? datePicked2;
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
