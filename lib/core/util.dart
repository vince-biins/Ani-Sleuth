import 'package:flutter/widgets.dart';

extension ContextExtension on BuildContext {
  bool get isCompact {
    return MediaQuery.of(this).size.width < 600;
  }

  bool get isMedium {
    return MediaQuery.of(this).size.width >= 600 &&
        MediaQuery.of(this).size.width < 840;
  }

  bool get isExpanded {
    return MediaQuery.of(this).size.width >= 840;
  }

  double get screenWidth {
    return MediaQuery.of(this).size.width;
  }

  double get screenHeight {
    return MediaQuery.of(this).size.height;
  }
}
