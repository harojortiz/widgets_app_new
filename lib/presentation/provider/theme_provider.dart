import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app_new/config/menu/theme/app_theme.dart';

// Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

// Un simple boolea
final isDarkModeProvider = StateProvider((ref) => false);

//Un simple int
final selectedColorProvider = StateProvider((ref) => 0);
