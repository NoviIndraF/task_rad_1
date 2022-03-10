import 'package:flutter/cupertino.dart';

extension Media on BuildContext {
  MediaQueryData get mediaq {
    return MediaQuery.of(this);
  }

  double get screenHeight {
    return mediaq.size.height;
  }

  double get screenWidth {
    return mediaq.size.width;
  }

  double get textScaleFactor {
    return mediaq.textScaleFactor;
  }
}
