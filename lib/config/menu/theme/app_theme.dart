import 'package:flutter/material.dart';

const colorList = <Color>[
  Colors.red,
  Colors.blue,
  Colors.green,
  Colors.teal,
  Colors.purple,
  Colors.orange,
  Colors.pink,
  Colors.pinkAccent,
  Colors.deepPurple,
];

class AppTheme {
  final int selectedColor;
  final bool isDarkmode;

  AppTheme({
    this.selectedColor = 0,
    this.isDarkmode = false,
  })  : assert(selectedColor >= 0, 'Selected colos must be greater then 0'),
        assert(selectedColor < colorList.length,
            'Select color must be less or equal than ${colorList.length - 1}');

  ThemeData getTheme() => ThemeData(
      useMaterial3: true,
      brightness: isDarkmode ? Brightness.dark : Brightness.light,
      colorSchemeSeed: colorList[selectedColor],
      appBarTheme: const AppBarTheme(centerTitle: false));

  AppTheme copyWitch({int? selectColor, bool? isDarkmode}) => AppTheme(
      selectedColor: selectColor ?? selectedColor,
      isDarkmode: isDarkmode ?? this.isDarkmode);
}
