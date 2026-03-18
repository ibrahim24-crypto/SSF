
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'comment_model.freezed.dart';
part 'comment_model.g.dart';

@freezed
abstract class CommentModel with _$CommentModel {
  const factory CommentModel({
    required String id,
    required String postId,
    required String authorId,
    required String authorName,
    required String content,
    @TimestampConverter() required DateTime createdAt,
  }) = _CommentModel;

  factory CommentModel.fromJson(Map<String, dynamic> json) => _$CommentModelFromJson(json);
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
