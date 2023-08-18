import 'package:downloader_pro/constants/my_color.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class SiwtchButtonWidget extends StatefulWidget {
  final bool value;
  final ValueChanged<bool> onChanged;

  const SiwtchButtonWidget({
    super.key,
    required this.value,
    required this.onChanged,
  });

  @override
  // ignore: library_private_types_in_public_api
  _SiwtchButtonWidgetState createState() => _SiwtchButtonWidgetState();
}

class _SiwtchButtonWidgetState extends State<SiwtchButtonWidget> {
  bool _value = false;

  @override
  void initState() {
    super.initState();
    _value = widget.value;
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        setState(() {
          _value = !_value;
          widget.onChanged(_value);
        });
      },
      child: Container(
        width: 48.w,
        height: 28.h,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(15),
          color: _value ? SolidColor.orange500 : SolidColor.rhinoDark100,
        ),
        child: Row(
          mainAxisAlignment:
              _value ? MainAxisAlignment.end : MainAxisAlignment.start,
          children: [
            Container(
              width: 18,
              height: 18,
              margin: EdgeInsets.symmetric(horizontal: 4.w, vertical: 4.h),
              decoration: const BoxDecoration(
                shape: BoxShape.circle,
                color: Colors.white,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
