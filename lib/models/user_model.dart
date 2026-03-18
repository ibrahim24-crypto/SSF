
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

part 'user_model.freezed.dart';
part 'user_model.g.dart';

@freezed
abstract class UserModel with _$UserModel {
  const factory UserModel({
    required String uid,
    String? email,
    required String displayName,
    required String role,
    required Permissions permissions,
    @TimestampConverter() required DateTime createdAt,
    required bool isAnonymous,
  }) = _UserModel;

  factory UserModel.fromJson(Map<String, dynamic> json) => _$UserModelFromJson(json);
}

@freezed
abstract class Permissions with _$Permissions {
  const factory Permissions({
    @Default(false) bool approvePictures,
    @Default(false) bool deletePosts,
    @Default(false) bool deleteComments,
    @Default(false) bool manageAdmins,
    @Default(false) bool deleteUsers,
    @Default(false) bool manageForbiddenWords,
    @Default(false) bool manageProtectedNames,
  }) = _Permissions;

  factory Permissions.fromJson(Map<String, dynamic> json) => _$PermissionsFromJson(json);
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
