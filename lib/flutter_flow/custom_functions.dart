import 'dart:convert';
import 'dart:math' as math;

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:intl/intl.dart';
import 'package:timeago/timeago.dart' as timeago;
import 'lat_lng.dart';
import 'place.dart';
import 'uploaded_file.dart';

String getResultStringFromJson(dynamic json) {
  try {
    return json['result']?.toString() ?? '';
  } catch (e) {
    return '';
  }
}

String base64ToDataUri(String base64) {
  String mimeType = 'image/jpeg'; // default

  if (base64.startsWith('/9j/')) {
    mimeType = 'image/jpeg'; // JPEG
  } else if (base64.startsWith('iVBOR')) {
    mimeType = 'image/png'; // PNG
  } else if (base64.startsWith('R0lGOD')) {
    mimeType = 'image/gif'; // GIF
  } else if (base64.startsWith('UklGR')) {
    mimeType = 'image/webp'; // WebP
  }

  return 'data:$mimeType;base64,$base64';
}

FFUploadedFile? base64ToUploadedFile(String base64) {
  final bytes = base64Decode(base64);
  final id = DateTime.now().microsecondsSinceEpoch.toString();
  // final extension = base64.split('/').first.split(':').last;
  String extension = 'png'; // default fallback
  if (base64.contains('image/jpeg')) {
    extension = 'jpg';
  } else if (base64.contains('image/png')) {
    extension = 'png';
  } else if (base64.contains('image/gif')) {
    extension = 'gif';
  } else if (base64.contains('image/webp')) {
    extension = 'webp';
  }
  final fileName = '$id.$extension';
  return FFUploadedFile(
    name: fileName,
    bytes: bytes,
    // height: 500,
    // width: 500,
  );
}

String? extractFilename(FFUploadedFile decodedImage) {
  return decodedImage.name;
}
