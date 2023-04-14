import 'package:flutter/material.dart';

import 'package:untitled/style/design/component.dart';

class Home extends StatelessWidget {
  Home({super.key});

  final GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: <Widget>[
          Form(
            key: _formKey,
            child: Column(
              children: <Widget>[
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      '라베',
                      style: TextFieldDesign.labelText,
                    ),
                    Text(
                      '카우너',
                      style: TextFieldDesign.counterText,
                    ),
                  ],
                ),
                TextFormField(
                  // TextEditingController 사용
                  enabled: true,
                  decoration: InputDecoration(
                    counter: const SizedBox.shrink(),
                    // border: OutlineInputBorder(),
                    border: TextFieldDesign.enabledBorder,
                    disabledBorder: TextFieldDesign.disabledBorder,
                    errorBorder: TextFieldDesign.errorBorder,
                    focusedBorder: TextFieldDesign.focusedBorder,
                    // errorText: 'error hint',
                    hintText: 'hint',
                    errorStyle: TextFieldDesign.errorText,
                    hintStyle: TextFieldDesign.hintText,
                  ),
                  style: TextFieldDesign.inputText,
                  // maxLength: 10,
                  obscureText: false,
                  validator: (String? val) {
                    if (val == null || val.isEmpty) {
                      return 'enter text';
                    }

                    return null;
                  },
                  onSaved: (String? val) {},
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(
                    vertical: 16.0,
                  ),
                  child: SizedBox(
                    width: 48,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_formKey.currentState!.validate()) {
                          _formKey.currentState!.save();
                        }
                      },
                      child: const Text('Sub'),
                    ),
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
