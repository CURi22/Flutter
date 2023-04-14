import 'package:flutter/material.dart';

import 'package:untitled/style/design/foundation.dart';

class ButtonDesign {
  const ButtonDesign();

  // 배경색
  static final Color primeFillColor = MaterialStateColor.resolveWith(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return ColorGuide.disabled1;
      } else if (states.contains(MaterialState.pressed)) {
        return ColorGuide.pressed02;
      }

      return ColorGuide.interactive01;
    },
  );

  static final Color primeLineColor = MaterialStateColor.resolveWith(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return Colors.transparent;
      } else if (states.contains(MaterialState.pressed)) {
        return ColorGuide.pressed01;
      }

      return ColorGuide.interactive03;
    },
  );

  static final Color prime2FillColor = MaterialStateColor.resolveWith(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return Colors.transparent;
      } else if (states.contains(MaterialState.pressed)) {
        return ColorGuide.pressed01;
      }

      return ColorGuide.interactive03;
    },
  );

  static final Color secondFillColor = MaterialStateColor.resolveWith(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return ColorGuide.disabled3;
      } else if (states.contains(MaterialState.pressed)) {
        return ColorGuide.pressed03;
      }

      return ColorGuide.interactive02;
    },
  );

  static final Color secondLineColor = MaterialStateColor.resolveWith(
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
  static final BorderSide primeBorder = MaterialStateBorderSide.resolveWith(
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

  static final BorderSide secondBorder = MaterialStateBorderSide.resolveWith(
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

  // 텍스트
  static final TextStyle primeFillText = MaterialStateTextStyle.resolveWith(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return FontGuide.buttonL.copyWith(
          color: ColorGuide.text03,
        );
      } else if (states.contains(MaterialState.pressed)) {
        return FontGuide.buttonL.copyWith(
          color: ColorGuide.text04,
        );
      }

      return FontGuide.buttonL.copyWith(
        color: ColorGuide.text04,
      );
    },
  );

  static final TextStyle primeLineText = MaterialStateTextStyle.resolveWith(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return FontGuide.buttonL.copyWith(
          color: ColorGuide.disabled2,
        );
      } else if (states.contains(MaterialState.pressed)) {
        return FontGuide.buttonL.copyWith(
          color: ColorGuide.ui05,
        );
      }

      return FontGuide.buttonL.copyWith(
        color: ColorGuide.ui04,
      );
    },
  );

  static final TextStyle prime2FillText = MaterialStateTextStyle.resolveWith(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return FontGuide.buttonL.copyWith(
          color: ColorGuide.ui05,
        );
      } else if (states.contains(MaterialState.pressed)) {
        return FontGuide.buttonL.copyWith(
          color: ColorGuide.ui04,
        );
      }

      return FontGuide.buttonL.copyWith(
        color: ColorGuide.ui04,
      );
    },
  );

  static final TextStyle secondFillText = MaterialStateTextStyle.resolveWith(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return FontGuide.buttonL.copyWith(
          color: ColorGuide.text04,
        );
      } else if (states.contains(MaterialState.pressed)) {
        return FontGuide.buttonL.copyWith(
          color: ColorGuide.text04,
        );
      }

      return FontGuide.buttonL.copyWith(
        color: ColorGuide.text04,
      );
    },
  );

  static final TextStyle secondLineText = MaterialStateTextStyle.resolveWith(
    (Set<MaterialState> states) {
      if (states.contains(MaterialState.disabled)) {
        return FontGuide.buttonL.copyWith(
          color: ColorGuide.disabled3,
        );
      } else if (states.contains(MaterialState.pressed)) {
        return FontGuide.buttonL.copyWith(
          color: ColorGuide.text01,
        );
      }

      return FontGuide.buttonL.copyWith(
        color: ColorGuide.text01,
      );
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
