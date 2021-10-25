import 'package:test/src/styles/colors.dart';
import 'package:flutter/widgets.dart';
import '../../material.dart';

class TestInputField extends StatelessWidget {
  final TextEditingController controller;
  final String placeholder;
  final Widget? leading;
  final Widget? trailing;
  final bool password;
  final void Function()? trailingTapped;

  final circularBorder = OutlineInputBorder(
    borderRadius: BorderRadius.circular(8),
  );

  TestInputField({
    Key? key,
    required this.controller,
    this.placeholder = '',
    this.leading,
    this.trailing,
    this.trailingTapped,
    this.password = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return new  TextField(
                  controller: controller,
                  style: const TextStyle(height: 12.0),
                  obscureText: password,
                  decoration: InputDecoration(
                    hintText: placeholder,
                    contentPadding:
                        const EdgeInsets.symmetric(vertical: 15, horizontal: 20),
                    filled: true,
                    fillColor: shVeryLightGreyColor,
                    prefixIcon: leading,
                    suffixIcon: trailing != null
                        ? GestureDetector(
                            onTap: trailingTapped,
                            child: trailing,
                          )
                        : null,
                    border: circularBorder.copyWith(
                      borderSide: const BorderSide(color: shLightGreyColor),
                    ),
                    errorBorder: circularBorder.copyWith(
                      borderSide: const BorderSide(color: Colors.red),
                    ),
                    focusedBorder: circularBorder.copyWith(
                      borderSide: const BorderSide(color: shPrimary),
                    ),
                    enabledBorder: circularBorder.copyWith(
                      borderSide: const BorderSide(color: shLightGreyColor),
                    ),
                  ),
    );  }
}