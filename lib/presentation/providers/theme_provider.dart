import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/theme/app_theme.dart';

// List of colors immutable
final colorListProvider = Provider((ref) => colorList); 

// a simple boolean
final isDarkmodeProvider = StateProvider((ref) => false);


final selectedColorProvider = StateProvider((ref) => 0);

// an object of type AppTheme (custom)
final themeNotifierProvider = StateNotifierProvider<ThemeNotifier, AppTheme>(
  (ref) => ThemeNotifier(), 
);


// Controller/Notifier
class ThemeNotifier extends StateNotifier<AppTheme> {
  // STATE = new AppTheme()  and instance of AppTheme
  ThemeNotifier(): super(AppTheme());

  void toggleDarkmode() {
    state = state.copyWith( isDarkmode: !state.isDarkmode );
  }

  void changeColorIndex(int colorIndex) {
    state = state.copyWith( selectedColor: colorIndex);
  }


}