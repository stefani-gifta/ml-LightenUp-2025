import '/backend/api_requests/api_calls.dart';
import '/flutter_flow/flutter_flow_util.dart';
import 'upload_page_widget.dart' show UploadPageWidget;
import 'package:flutter/material.dart';

class UploadPageModel extends FlutterFlowModel<UploadPageWidget> {
  ///  Local state fields for this page.

  String? uploadedPhoto;

  bool hasImage = false;

  /// API result in String, not decoded
  String base64APIResult = 'null';

  /// Image converted from base64
  FFUploadedFile? decodedImage;

  bool imageEnhanced = false;

  String imageFilename = 'lighten_up.png';

  ///  State fields for stateful widgets in this page.

  bool isDataUploading_uploadDataK6i = false;
  FFUploadedFile uploadedLocalFile_uploadDataK6i =
      FFUploadedFile(bytes: Uint8List.fromList([]));

  // Stores action output result for [Backend Call - API (EnhanceImage)] action in EnhanceBtn widget.
  ApiCallResponse? apiResultitc;

  @override
  void initState(BuildContext context) {}

  @override
  void dispose() {}
}
