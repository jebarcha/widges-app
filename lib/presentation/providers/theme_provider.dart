import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/theme/app_theme.dart';

// List of colors immutable
final colorListProvider = Provider((ref) => colorList); 

// a simple boolean
final isDarkmodeProvider = StateProvider((ref) => false);


final selectedColorProvider = StateProvider((ref) => 0);

