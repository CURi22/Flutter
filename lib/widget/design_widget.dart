import 'package:flutter/material.dart';

import 'package:untitled/style/design/component.dart';

class TextFieldSH extends StatefulWidget {
  final TextEditingController controller;
  final bool? enabled;
  final String? error;
  final String? hint;
  final bool isPw;
  final String? label;
  final int? maxLength;
  final void Function(String? val)? onSaved;
  final String? Function(String? val)? validator;

  const TextFieldSH({
    required this.controller,
    this.enabled,
    this.error,
    this.hint,
    this.isPw = false,
    this.label,
    this.maxLength,
    this.onSaved,
    this.validator,
    super.key,
  });

  void onPressXHandler() {
    controller.clear();
  }

  @override
  State<StatefulWidget> createState() => _TextFieldSH();
}

class _TextFieldSH extends State<TextFieldSH> {
  static bool isFieldNotEmpty = false;
  static late bool isObscureText;

  void onPressEyeHandler() {
    setState(() {
      isObscureText = !isObscureText;
    });
  }

  void onChangeHandler(String val) {
    setState(() {
      isFieldNotEmpty = val.isNotEmpty;
    });
  }

  @override
  void initState() {
    super.initState();

    isObscureText = widget.isPw;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            widget.label != null
                ? Text(
                    widget.label!,
                    style: TextFieldDesign.labelText,
                  )
                : const SizedBox.shrink(),
            widget.maxLength != null
                ? Text(
                    '${widget.controller.text.length} / ${widget.maxLength}',
                    style: TextFieldDesign.counterText,
                  )
                : const SizedBox.shrink(),
          ],
        ),
        TextFormField(
          controller: widget.controller,
          decoration: InputDecoration(
            border: TextFieldDesign.enabledBorder,
            counter: const SizedBox.shrink(),
            disabledBorder: TextFieldDesign.disabledBorder,
            errorBorder: TextFieldDesign.errorBorder,
            errorStyle: TextFieldDesign.errorText,
            errorText: widget.error,
            focusedBorder: TextFieldDesign.focusedBorder,
            hintText: widget.hint,
            hintStyle: TextFieldDesign.hintText,
            suffixIcon: isFieldNotEmpty
                ? Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    mainAxisSize: MainAxisSize.min,
                    children: <Widget>[
                      IconButton(
                        constraints: const BoxConstraints(),
                        padding: const EdgeInsets.symmetric(
                          horizontal: 5,
                        ),
                        onPressed: widget.onPressXHandler,
                        icon: Image.asset(
                          'assets/icon/sample.png',
                          width: 20,
                          height: 20,
                        ),
                      ),
                      widget.isPw
                          ? IconButton(
                              constraints: const BoxConstraints(),
                              padding: const EdgeInsets.symmetric(
                                horizontal: 5,
                              ),
                              onPressed: onPressEyeHandler,
                              icon: Image.asset(
                                'assets/icon/sample.png',
                                width: 20,
                                height: 20,
                              ),
                            )
                          : const SizedBox.shrink(),
                    ],
                  )
                : null,
          ),
          enabled: widget.enabled,
          maxLength: widget.maxLength,
          obscureText: isObscureText,
          style: TextFieldDesign.inputText,
          onChanged: onChangeHandler,
          onSaved: widget.onSaved,
          validator: widget.validator,
        ),
      ],
    );
  }
}

class TextAreaSH extends StatefulWidget {
  final TextEditingController controller;
  final String? error;
  final String? hint;
  final bool isPw;
  final String? label;
  final int? maxLength;
  final void Function(String? val)? onSaved;
  final String? Function(String? val)? validator;

  const TextAreaSH({
    required this.controller,
    this.error,
    this.hint,
    this.isPw = false,
    this.label,
    this.maxLength,
    this.onSaved,
    this.validator,
    super.key,
  });

  void onPressXHandler() {
    controller.clear();
  }

  @override
  State<StatefulWidget> createState() => _TextAreaSH();
}

class _TextAreaSH extends State<TextAreaSH> {
  static bool isFieldNotEmpty = false;
  static late bool isObscureText;

  void onChangeHandler(String val) {
    setState(() {
      isFieldNotEmpty = val.isNotEmpty;
    });
  }

  @override
  void initState() {
    super.initState();

    isObscureText = widget.isPw;
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: <Widget>[
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: <Widget>[
            widget.label != null
                ? Text(
                    widget.label!,
                    style: TextFieldDesign.labelText,
                  )
                : const SizedBox.shrink(),
            widget.maxLength != null
                ? Text(
                    '${widget.controller.text.length} / ${widget.maxLength}',
                    style: TextFieldDesign.counterText,
                  )
                : const SizedBox.shrink(),
          ],
        ),
        TextFormField(
          controller: widget.controller,
          decoration: InputDecoration(
            border: TextAreaDesign.enabledLineBorder,
            counter: const SizedBox.shrink(),
            disabledBorder: TextAreaDesign.disabledLineBorder,
            errorBorder: TextAreaDesign.errorLineBorder,
            errorStyle: TextFieldDesign.errorText,
            errorText: widget.error,
            filled: true,
            fillColor: TextAreaDesign.lineColor,
            focusedBorder: TextAreaDesign.focusedLineBorder,
            hintText: widget.hint,
            hintStyle: TextFieldDesign.hintText,
          ),
          enabled: true,
          maxLength: widget.maxLength,
          obscureText: isObscureText,
          style: TextFieldDesign.inputText,
          onChanged: onChangeHandler,
          onSaved: widget.onSaved,
          validator: widget.validator,
        ),
      ],
    );
  }
}
