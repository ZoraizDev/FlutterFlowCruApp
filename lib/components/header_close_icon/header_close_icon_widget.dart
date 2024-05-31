import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'header_close_icon_model.dart';
export 'header_close_icon_model.dart';

class HeaderCloseIconWidget extends StatefulWidget {
  const HeaderCloseIconWidget({super.key});

  @override
  State<HeaderCloseIconWidget> createState() => _HeaderCloseIconWidgetState();
}

class _HeaderCloseIconWidgetState extends State<HeaderCloseIconWidget> {
  late HeaderCloseIconModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => HeaderCloseIconModel());

    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {}));
  }

  @override
  void dispose() {
    _model.maybeDispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisSize: MainAxisSize.max,
      mainAxisAlignment: MainAxisAlignment.end,
      children: [
        Align(
          alignment: const AlignmentDirectional(1.0, 0.0),
          child: Icon(
            Icons.close_rounded,
            color: FlutterFlowTheme.of(context).secondaryText,
            size: 24.0,
          ),
        ),
      ],
    );
  }
}
