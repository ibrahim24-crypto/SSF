
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'post_model.freezed.dart';
part 'post_model.g.dart';

@freezed
abstract class PostModel with _$PostModel {
  const factory PostModel({
    required String id,
    required String authorId,
    required String authorName,
    required String title,
    required String description,
    String? category,
    @TimestampConverter() DateTime? birthDate,
    required List<ImageData> images,
    required Map<String, String> customDetails,
    required String status,
    String? rejectionReason,
    required int upvotes,
    required int downvotes,
    required int commentCount,
    @TimestampConverter() required DateTime createdAt,
    @TimestampConverter() required DateTime updatedAt,
  }) = _PostModel;

  factory PostModel.fromJson(Map<String, dynamic> json) => _$PostModelFromJson(json);
}

@freezed
abstract class ImageData with _$ImageData {
  const factory ImageData({
    required String url,
    required String publicId,
    required String status,
  }) = _ImageData;

  factory ImageData.fromJson(Map<String, dynamic> json) => _$ImageDataFromJson(json);
}

class TimestampConverter implements JsonConverter<DateTime, Timestamp> {
  const TimestampConverter();

  @override
  DateTime fromJson(Timestamp timestamp) {
    return timestamp.toDate();
  }

  @override
  Timestamp toJson(DateTime date) => Timestamp.fromDate(date);
}
