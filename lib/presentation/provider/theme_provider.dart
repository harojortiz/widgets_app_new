import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:widgets_app_new/config/menu/theme/app_theme.dart';

// Listado de colores inmutable
final colorListProvider = Provider((ref) => colorList);

// Un simple boolea
final isDarkModeProvider = StateProvider((ref) => false);

//Un simple int
final selectedColorProvider = StateProvider((ref) => 0);

// Un objeto de tipo Apptheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(),
);

// Controller o notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  ThemeNotifier() : super(AppTheme());

  void toggleDarkmode() {
    state = state.copyWitch(isDarkmode: !state.isDarkmode);
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWitch(selectColor: colorIndex);
  }
}
