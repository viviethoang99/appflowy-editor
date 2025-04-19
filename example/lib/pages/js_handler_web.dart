import 'package:web/web.dart' as web;
import 'dart:js_interop';

/// Hàm xuất file trên nền tảng web
void exportFileToWeb(String result, String fileName, String fileType) {
  final blob = web.Blob(
    <web.BlobPart>[result.toJS].toJS,
    web.BlobPropertyBag(type: 'text/plain', endings: 'native'),
  );
  web.HTMLAnchorElement()
    ..href = web.URL.createObjectURL(blob)
    ..setAttribute('download', '$fileName.$fileType')
    ..click();
}
