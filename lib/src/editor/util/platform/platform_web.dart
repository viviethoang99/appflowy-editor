import 'package:web/web.dart' show window;

String getWebPlatform() {
  return window.navigator.platform.toLowerCase();
}
