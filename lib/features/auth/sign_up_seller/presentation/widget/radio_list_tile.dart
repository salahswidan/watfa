import 'package:flutter/material.dart';

import '../../../../../core/theme/styles.dart';
import '../section/radio_switch.dart';

class RadioListTileForm extends StatefulWidget {
  final String title, subtitle;
  const RadioListTileForm({
    super.key,
    required this.title,
    required this.subtitle,
  });

  @override
  State<RadioListTileForm> createState() => _RadioListTileFormState();
}

class _RadioListTileFormState extends State<RadioListTileForm> {
  bool isSelected = false;
  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          isSelected = !isSelected;
        });
      },
      child: ListTile(
        hoverColor: Colors.transparent,
        titleAlignment: ListTileTitleAlignment.top,
        title: Text(widget.title, style: TextStyles.font14Blackw500Poppins(context)),
        subtitle: Text(
          widget.subtitle,
          style: TextStyles.font11Greyw500Poppins(context),
        ),
        leading: RadioSwitch(
          isSelected: isSelected,
        ),
      ),
    );
  }
}