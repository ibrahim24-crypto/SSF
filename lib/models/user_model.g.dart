// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$UserModelImpl _$$UserModelImplFromJson(Map<String, dynamic> json) =>
    _$UserModelImpl(
      uid: json['uid'] as String,
      email: json['email'] as String?,
      displayName: json['displayName'] as String,
      role: json['role'] as String,
      permissions:
          Permissions.fromJson(json['permissions'] as Map<String, dynamic>),
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp),
      isAnonymous: json['isAnonymous'] as bool,
    );

Map<String, dynamic> _$$UserModelImplToJson(_$UserModelImpl instance) =>
    <String, dynamic>{
      'uid': instance.uid,
      'email': instance.email,
      'displayName': instance.displayName,
      'role': instance.role,
      'permissions': instance.permissions,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'isAnonymous': instance.isAnonymous,
    };

_$PermissionsImpl _$$PermissionsImplFromJson(Map<String, dynamic> json) =>
    _$PermissionsImpl(
      approvePictures: json['approvePictures'] as bool? ?? false,
      deletePosts: json['deletePosts'] as bool? ?? false,
      deleteComments: json['deleteComments'] as bool? ?? false,
      manageAdmins: json['manageAdmins'] as bool? ?? false,
      deleteUsers: json['deleteUsers'] as bool? ?? false,
      manageForbiddenWords: json['manageForbiddenWords'] as bool? ?? false,
      manageProtectedNames: json['manageProtectedNames'] as bool? ?? false,
    );

Map<String, dynamic> _$$PermissionsImplToJson(_$PermissionsImpl instance) =>
    <String, dynamic>{
      'approvePictures': instance.approvePictures,
      'deletePosts': instance.deletePosts,
      'deleteComments': instance.deleteComments,
      'manageAdmins': instance.manageAdmins,
      'deleteUsers': instance.deleteUsers,
      'manageForbiddenWords': instance.manageForbiddenWords,
      'manageProtectedNames': instance.manageProtectedNames,
    };
