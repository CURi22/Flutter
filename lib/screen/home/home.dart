import 'package:flutter/material.dart';

import 'package:untitled/style/design/component.dart';
import 'package:untitled/style/design/foundation.dart';
import 'package:untitled/widget/design_widget.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final GlobalKey<FormState> globalKey = GlobalKey<FormState>();
  final TextEditingController controller = TextEditingController();

  void onPressHandler() {
    if (globalKey.currentState!.validate()) {
      globalKey.currentState!.save();
    }
  }

  String? onValidateHandler(String? val) {
    return null;
  }

  void onSaveHandler(String? val) {
    print('value: $val');
    print('controller: ${controller.text}');
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Form(
            key: globalKey,
            child: Column(
              children: [
                TextFieldSH(
                  controller: controller,
                  hint: '힌트',
                  label: '라벨',
                  maxLength: 100,
                  validator: onValidateHandler,
                  onSaved: onSaveHandler,
                  isPw: true,
                ),
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    shape: const RoundedRectangleBorder(
                      borderRadius: ButtonDesign.squareShape,
                    ),
                  ).merge(
                    ButtonStyle(
                      backgroundColor: ButtonDesign.primeFillColor,
                      foregroundColor: ButtonDesign.primeFillText,
                    ),
                  ),
                  onPressed: onPressHandler,
                  child: const Text(
                    'push',
                    style: FontGuide.buttonL,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
