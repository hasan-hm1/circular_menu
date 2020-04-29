import 'package:flutter/material.dart';

class CircularMenuItem extends StatelessWidget {
  /// if icon and animatedIcon are passed, icon will be ignored
  final IconData icon;
  final Color color;
  final Color iconColor;
  final VoidCallback onTap;
  final double iconSize;
  final double padding;
  final double margin;
  final double elevation;

  /// if animatedIcon and icon are passed, icon will be ignored
  final AnimatedIcon animatedIcon;

  /// creates a menu item .
  /// [onTap] must not be null.
  /// [padding] , [margin] and [elevation] must be equal or greater than zero.
  CircularMenuItem({
    @required this.onTap,
    this.icon,
    this.color,
    this.iconSize = 30,
    this.elevation = 4,
    this.iconColor,
    this.animatedIcon,
    this.padding = 10,
    this.margin = 10,
  })  : assert(onTap != null),
        assert(padding >= 0.0),
        assert(margin >= 0.0),
        assert(elevation >= 0.0);
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(margin),
      child: RawMaterialButton(
        padding: EdgeInsets.all(padding),
        onPressed: onTap,
        fillColor: color ?? Theme.of(context).primaryColor,
        shape: const CircleBorder(),
        elevation: elevation,
        child: animatedIcon == null
            ? Icon(
                icon,
                size: iconSize,
                color: iconColor ?? Colors.white,
              )
            : animatedIcon,
      ),
    );
  }
}
