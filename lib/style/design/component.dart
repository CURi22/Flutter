import 'package:flutter/material.dart';

import 'package:untitled/style/design/foundation.dart';

class ButtonDesign {
  const ButtonDesign();

  // 배경색
  static final MaterialStateProperty<Color> primeFillColor =
      MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return ColorGuide.disabled1;
      } else if (states.contains(MaterialState.pressed)) {
        return ColorGuide.pressed02;
      }

      return ColorGuide.interactive01;
    },
  );

  static final MaterialStateProperty<Color> primeLineColor =
      MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return Colors.transparent;
      } else if (states.contains(MaterialState.pressed)) {
        return ColorGuide.pressed01;
      }

      return ColorGuide.interactive03;
    },
  );

  static final MaterialStateProperty<Color> prime2FillColor =
      MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return Colors.transparent;
      } else if (states.contains(MaterialState.pressed)) {
        return ColorGuide.pressed01;
      }

      return ColorGuide.interactive03;
    },
  );

  static final MaterialStateProperty<Color> secondFillColor =
      MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return ColorGuide.disabled3;
      } else if (states.contains(MaterialState.pressed)) {
        return ColorGuide.pressed03;
      }

      return ColorGuide.interactive02;
    },
  );

  static final MaterialStateProperty<Color> secondLineColor =
      MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return Colors.transparent;
      } else if (states.contains(MaterialState.pressed)) {
        return ColorGuide.pressed04;
      }

      return ColorGuide.interactive05;
    },
  );

  // 테두리
  static final MaterialStateProperty<BorderSide> primeBorder =
      MaterialStateProperty.resolveWith<BorderSide>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return const BorderSide(
          color: ColorGuide.disabled2,
        );
      } else if (states.contains(MaterialState.pressed)) {
        return const BorderSide(
          color: ColorGuide.ui05,
        );
      }

      return const BorderSide(
        color: ColorGuide.ui04,
      );
    },
  );

  static final MaterialStateProperty<BorderSide> secondBorder =
      MaterialStateProperty.resolveWith<BorderSide>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return const BorderSide(
          color: ColorGuide.disabled3,
        );
      }

      return const BorderSide(
        color: ColorGuide.text01,
      );
    },
  );

  // 모양
  static const BorderRadius squareShape = BorderRadius.zero;

  static final BorderRadius roundShape = BorderRadius.circular(10);

  static final BorderRadius circleShape =
      BorderRadius.circular(double.infinity);

  // 텍스트 색
  static final MaterialStateProperty<Color> primeFillText =
      MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return ColorGuide.text03;
      } else if (states.contains(MaterialState.pressed)) {
        return ColorGuide.text04;
      }

      return ColorGuide.text04;
    },
  );

  static final MaterialStateProperty<Color> primeLineText =
      MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return ColorGuide.disabled2;
      } else if (states.contains(MaterialState.pressed)) {
        return ColorGuide.ui05;
      }

      return ColorGuide.ui04;
    },
  );

  static final MaterialStateProperty<Color> prime2FillText =
      MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return ColorGuide.ui05;
      } else if (states.contains(MaterialState.pressed)) {
        return ColorGuide.ui04;
      }

      return ColorGuide.ui04;
    },
  );

  static final MaterialStateProperty<Color> secondFillText =
      MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return ColorGuide.text04;
      } else if (states.contains(MaterialState.pressed)) {
        return ColorGuide.text04;
      }

      return ColorGuide.text04;
    },
  );

  static final MaterialStateProperty<Color> secondLineText =
      MaterialStateProperty.resolveWith<Color>(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return ColorGuide.disabled3;
      } else if (states.contains(MaterialState.pressed)) {
        return ColorGuide.text01;
      }

      return ColorGuide.text01;
    },
  );
}

class TextFieldDesign {
  const TextFieldDesign();

  // 밑줄
  static const UnderlineInputBorder disabledBorder = UnderlineInputBorder(
    borderSide: BorderSide(
      color: Color(0xff8F8F8F),
    ),
  );

  static const UnderlineInputBorder errorBorder = UnderlineInputBorder(
    borderSide: BorderSide(
      color: ColorScale.red07,
    ),
  );

  static const UnderlineInputBorder enabledBorder = UnderlineInputBorder(
    borderSide: BorderSide(
      color: Color(0xff8F8F8F),
    ),
  );

  static const UnderlineInputBorder enabled2Border = UnderlineInputBorder(
    borderSide: BorderSide(
      color: ColorScale.gray03,
    ),
  );

  static const UnderlineInputBorder focusedBorder = UnderlineInputBorder(
    borderSide: BorderSide(
      color: ColorScale.green01,
    ),
  );

  // 텍스트
  static final TextStyle counterText = FontGuide.bodyXS.copyWith(
    color: const Color(0xff9BA0A9),
  );

  static final TextStyle errorText = FontGuide.labelM.copyWith(
    color: ColorGuide.danger01,
  );

  static final TextStyle hintText = FontGuide.bodyL.copyWith(
    color: ColorGuide.text03,
    height: 2,
  );

  static final TextStyle inputText = FontGuide.bodyL.copyWith(
    color: ColorGuide.text01,
    height: 2,
  );

  static final TextStyle labelText = FontGuide.labelM.copyWith(
    color: ColorGuide.text02,
  );
}

class TextAreaDesign {
  const TextAreaDesign();
}
