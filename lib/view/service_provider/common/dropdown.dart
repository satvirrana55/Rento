import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:rento/helpers/common_colors.dart';
import 'package:rento/utility_funtions.dart/ts.dart';

class DropDown extends StatefulWidget {
  const DropDown({Key? key}) : super(key: key);

  @override
  _DropDownState createState() => _DropDownState();
}

class _DropDownState extends State<DropDown> {
// Initial Selected Value
  String dropdownvalue = 'Cars';

// List of items in our dropdown menu
  var items = [
    "Cars",
    "Bikes",
    "Computer & Laptop",
  ];
  Color defaultColor = const Color.fromRGBO(214, 216, 219, 1);
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 55.sp,
      padding: const EdgeInsets.all(10),
      decoration: BoxDecoration(
        border: Border.all(
            color: Get.isDarkMode
                ? Color.fromRGBO(104, 117, 111, 1)
                : defaultColor,
            width: 1),
        borderRadius: const BorderRadius.all(Radius.circular(5)),
      ),
      child: DropdownButton(
        isExpanded: true,
        borderRadius: BorderRadius.circular(10),
        value: dropdownvalue,
        underline: const SizedBox(),
        icon: const Icon(Icons.arrow_drop_down),
        items: items.map((String items) {
          return DropdownMenuItem(
            value: items,
            child: Text(
              items,
              style: Ts.medium14(CommonColors.primaryLightgrey3),
            ),
          );
        }).toList(),
        onChanged: (String? newValue) {
          setState(() {
            dropdownvalue = newValue!;
            // defaultColor = const Color(0xff29BF79);
          });
        },
      ),
    );
  }
}
