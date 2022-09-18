import 'dart:ui';

class ColorUtil {

  static const String _primary = '229ED9';

  static primary() {
    return _getColorFromHex(_primary);
  }
  
  static Color _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');

    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }

    return Color(int.parse(hexColor, radix: 16));
  }
}