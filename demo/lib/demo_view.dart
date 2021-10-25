import 'package:test/test.dart';
import 'package:flutter/material.dart';
import 'package:ui_helper/ui_helper.dart';

class ExampleView extends StatelessWidget {
  const ExampleView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 25, vertical: 30),
        children: [
          verticalSpaceSmall,
          Divider(),
          verticalSpaceSmall,
          ...buttonWidgets,
          ...inputFields,
        ],
      ),
    );
  }

  List<Widget> get buttonWidgets => [
        verticalSpaceMedium,
        verticalSpaceSmall,
        TestButton(
          title: 'Label',
        ),
        verticalSpaceSmall,
        verticalSpaceSmall,
        TestButton(
          title: 'Label',
          disabled: true,
        ),
        verticalSpaceSmall,
        verticalSpaceSmall,
        TestButton(
          title: 'Label',
          busy: true,
        ),
        verticalSpaceSmall,
        verticalSpaceSmall,
        TestButton.outline(
          title: 'Select location',
          leading: Icon(
            Icons.send,
            color: shPrimary,
          ),
        ),
        verticalSpaceMedium,
      ];

  List<Widget> get inputFields => [
        verticalSpaceSmall,
        verticalSpaceSmall,
        Material(
          child: TestInputField(
            controller: TextEditingController(),
            placeholder: 'Enter Password',
          ),
        ),
        verticalSpaceSmall,
        verticalSpaceSmall,
        Material(
          child: TestInputField(
            controller: TextEditingController(),
            leading: Icon(Icons.reset_tv),
            placeholder: 'Enter TV Code',
          ),
        ),
        verticalSpaceSmall,
        verticalSpaceSmall,
        Material(
          child: TestInputField(
            controller: TextEditingController(),
            trailing: Icon(Icons.clear_outlined),
            placeholder: 'Search for things',
          ),
        ),
      ];
}