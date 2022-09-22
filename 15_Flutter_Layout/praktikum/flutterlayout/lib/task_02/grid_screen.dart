import 'package:flutter/material.dart';

class GridScreen extends StatelessWidget {
  const GridScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.count(
      crossAxisCount: 4,
      children: _iconTypes
          .map((icon) => Center(
                child: CircleAvatar(
                  backgroundColor: Colors.blue,
                  child: Icon(icon),
                ),
              ))
          .toList(),
    );
  }

  static const List<IconData> _iconTypes = <IconData>[
    Icons.cake,
    Icons.add_location_sharp,
    Icons.zoom_in_outlined,
    Icons.auto_awesome_motion,
    Icons.call_end_sharp,
    Icons.equalizer_rounded,
    Icons.wifi_lock,
    Icons.mail,
    Icons.abc_outlined,
    Icons.access_alarms_rounded,
    Icons.zoom_out_rounded,
    Icons.workspace_premium,
    Icons.wifi_tethering_error_rounded_rounded,
    Icons.accessibility_outlined,
    Icons.add_circle_outline_sharp,
    Icons.baby_changing_station,
    Icons.e_mobiledata,
    Icons.radar,
    Icons.face,
    Icons.male,
    Icons.one_x_mobiledata,
    Icons.nat,
    Icons.hail,
    Icons.key
  ];
}
