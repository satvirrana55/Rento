import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

class SettingsDropDown extends StatefulWidget {
  final String title;

  final List<String>? items;
  const SettingsDropDown({Key? key, required this.title, required this.items})
      : super(key: key);

  @override
  _SettingsDropDownState createState() => _SettingsDropDownState();
}

class _SettingsDropDownState extends State<SettingsDropDown> {
// Initial Selected Value

// List of items in our dropdown menu

  Color defaultColor = const Color.fromRGBO(214, 216, 219, 1);
  @override
  void initState() {
    super.initState();
  }

  List autoOrder = [
    "ON",
    "OFF",
  ];
  List shop = [
    "OPEN",
    "CLOSED",
  ];

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: widget.title,
      underline: const SizedBox(),
      icon: const Icon(Icons.keyboard_arrow_down,color:Color.fromRGBO(169, 190, 203, 1) ),
      items: widget.items?.map((String items) {
        return DropdownMenuItem(
          value: items,
          child: Text(
            items,
            style: Get.isDarkMode
                ? Ts.medium16(CommonColors.whiteColor)
                : Ts.medium16(CommonColors.blackColor),
          ),
        );
      }).toList(),
      onChanged: (String? newValue) {
        setState(() {
          // widget.title = newValue!;
          // defaultColor = const Color(0xff29BF79);
        });
      },
    );
  }
}
