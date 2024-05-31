import 'package:flutter/widgets.dart';

class FFIcons {
  FFIcons._();

  static const String _icomoonFamily = 'Icomoon';
  static const String _bottomIconsFamily = 'BottomIcons';
  static const String _shareFamily = 'Share';

  // icomoon
  static const IconData khomeIcon =
      IconData(0xe900, fontFamily: _icomoonFamily);

  // bottomIcons
  static const IconData kjobs =
      IconData(0xe900, fontFamily: _bottomIconsFamily);
  static const IconData kforums =
      IconData(0xe901, fontFamily: _bottomIconsFamily);
  static const IconData kcrus =
      IconData(0xe902, fontFamily: _bottomIconsFamily);
  static const IconData kprofile =
      IconData(0xe903, fontFamily: _bottomIconsFamily);

  // share
  static const IconData kshare2 = IconData(0xe900, fontFamily: _shareFamily);
}
