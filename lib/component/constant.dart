import 'package:flutter/cupertino.dart';

extension MediaQueryValues on BuildContext {
  double get height=>MediaQuery.of(this).size.height;
  double get width=>MediaQuery.of(this).size.width;
  double get toPadding=>MediaQuery.of(this).viewPadding.bottom+160;//تكبير الحجم وتصغيره
  double get insets=>MediaQuery.of(this).viewInsets.bottom+300;//للحجم

}