import 'package:deliverygorceryapp/utils/app_colors/app_colors.dart';
import 'package:deliverygorceryapp/utils/app_text/app_text.dart';
import 'package:flutter/material.dart';

class ProvinceView extends StatefulWidget {
  final TextEditingController controller;
  final List<String> list; // Assuming the list contains Strings
  final String emptyText;

  const ProvinceView({
    Key? key,
    required this.controller,
    required this.list,
    required this.emptyText,
  }) : super(key: key);

  @override
  State<ProvinceView> createState() => _ProvinceViewState();
}

class _ProvinceViewState extends State<ProvinceView> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: PopupMenuButton(
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.all(
            Radius.circular(10.0),
          ),
        ),
        offset: const Offset(0, 55),
        onSelected: (value) async {
          widget.controller.text = value as String;
          FocusManager.instance.primaryFocus?.unfocus();
          setState(() {});
        },
        constraints: BoxConstraints(
          minWidth: double.infinity,
          maxWidth: double.infinity,
          maxHeight: MediaQuery.of(context).size.width * 0.84,
        ),
        itemBuilder: (BuildContext bc) {
          return List.generate(widget.list.length, (index) {
            return PopupMenuItem(
              padding: const EdgeInsets.symmetric(horizontal: 12),
              value: widget.list[index],
              child: AppText(
                title: widget.list[index],
                size: 14,
                fontWeight: FontWeight.w600,
                color: AppColors.black,
              ),
            );
          });
        },
        child: Container(
          height: 70,
          decoration: BoxDecoration(
            color: AppColors.white_color,
            borderRadius: BorderRadius.circular(7),
          ),
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                AppText(
                  overFlow: TextOverflow.ellipsis,
                  title: widget.controller.text.isNotEmpty
                      ? widget.controller.text
                      : widget.emptyText,
                  color: widget.controller.text.isEmpty
                      ? AppColors.black.withOpacity(0.5)
                      : AppColors.black,
                  fontWeight: widget.controller.text.isEmpty
                      ? FontWeight.w400
                      : FontWeight.w500,
                  size: 11,
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * 0.02,
                ),
                Icon(Icons.keyboard_arrow_down),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
