import '/flutter_flow/flutter_flow_theme.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'package:flutter/material.dart';
import 'menu_header_bar_model.dart';
export 'menu_header_bar_model.dart';

class MenuHeaderBarWidget extends StatefulWidget {
  const MenuHeaderBarWidget({
    super.key,
    required this.openDrawer,
    this.isSearchOpen,
  });

  final Future Function()? openDrawer;
  final Future Function()? isSearchOpen;

  @override
  State<MenuHeaderBarWidget> createState() => _MenuHeaderBarWidgetState();
}

class _MenuHeaderBarWidgetState extends State<MenuHeaderBarWidget> {
  late MenuHeaderBarModel _model;

  @override
  void setState(VoidCallback callback) {
    super.setState(callback);
    _model.onUpdate();
  }

  @override
  void initState() {
    super.initState();
    _model = createModel(context, () => MenuHeaderBarModel());

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
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        ClipRRect(
          borderRadius: BorderRadius.circular(8.0),
          child: Image.asset(
            'assets/images/Rectangle.png',
            width: 77.0,
            height: 32.0,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          width: 100.0,
          height: 40.0,
          decoration: const BoxDecoration(),
          child: Row(
            mainAxisSize: MainAxisSize.max,
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Container(
                width: 32.0,
                height: 32.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).accent3,
                  borderRadius: BorderRadius.circular(100.0),
                  shape: BoxShape.rectangle,
                ),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await widget.isSearchOpen?.call();
                  },
                  child: const Icon(
                    Icons.search_rounded,
                    color: Color(0xFF0C2D48),
                    size: 24.0,
                  ),
                ),
              ),
              Container(
                width: 32.0,
                height: 32.0,
                decoration: BoxDecoration(
                  color: FlutterFlowTheme.of(context).accent3,
                  borderRadius: BorderRadius.circular(100.0),
                  shape: BoxShape.rectangle,
                ),
                child: InkWell(
                  splashColor: Colors.transparent,
                  focusColor: Colors.transparent,
                  hoverColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  onTap: () async {
                    await widget.openDrawer?.call();
                  },
                  child: const Icon(
                    Icons.keyboard_control_sharp,
                    color: Color(0xFF0C2D48),
                    size: 24.0,
                  ),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
