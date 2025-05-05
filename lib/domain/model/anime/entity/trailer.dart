import 'package:ani_sleuth/domain/model/common/aimage.dart';

class Trailer {
  final String? youtubeId;
  final String? url;

  final String? embedUrl;
  final AimageFormat? images;

  Trailer({
    required this.youtubeId,
    required this.url,
    required this.embedUrl,
    required this.images,
  });
}
