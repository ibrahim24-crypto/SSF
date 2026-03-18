// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

UserModel _$UserModelFromJson(Map<String, dynamic> json) {
  return _UserModel.fromJson(json);
}

/// @nodoc
mixin _$UserModel {
  String get uid => throw _privateConstructorUsedError;
  String? get email => throw _privateConstructorUsedError;
  String get displayName => throw _privateConstructorUsedError;
  String get role => throw _privateConstructorUsedError;
  Permissions get permissions => throw _privateConstructorUsedError;
  @TimestampConverter()
  DateTime get createdAt => throw _privateConstructorUsedError;
  bool get isAnonymous => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserModelCopyWith<UserModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserModelCopyWith<$Res> {
  factory $UserModelCopyWith(UserModel value, $Res Function(UserModel) then) =
      _$UserModelCopyWithImpl<$Res, UserModel>;
  @useResult
  $Res call(
      {String uid,
      String? email,
      String displayName,
      String role,
      Permissions permissions,
      @TimestampConverter() DateTime createdAt,
      bool isAnonymous});

  $PermissionsCopyWith<$Res> get permissions;
}

/// @nodoc
class _$UserModelCopyWithImpl<$Res, $Val extends UserModel>
    implements $UserModelCopyWith<$Res> {
  _$UserModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = freezed,
    Object? displayName = null,
    Object? role = null,
    Object? permissions = null,
    Object? createdAt = null,
    Object? isAnonymous = null,
  }) {
    return _then(_value.copyWith(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Permissions,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isAnonymous: null == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }

  @override
  @pragma('vm:prefer-inline')
  $PermissionsCopyWith<$Res> get permissions {
    return $PermissionsCopyWith<$Res>(_value.permissions, (value) {
      return _then(_value.copyWith(permissions: value) as $Val);
    });
  }
}

/// @nodoc
abstract class _$$UserModelImplCopyWith<$Res>
    implements $UserModelCopyWith<$Res> {
  factory _$$UserModelImplCopyWith(
          _$UserModelImpl value, $Res Function(_$UserModelImpl) then) =
      __$$UserModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {String uid,
      String? email,
      String displayName,
      String role,
      Permissions permissions,
      @TimestampConverter() DateTime createdAt,
      bool isAnonymous});

  @override
  $PermissionsCopyWith<$Res> get permissions;
}

/// @nodoc
class __$$UserModelImplCopyWithImpl<$Res>
    extends _$UserModelCopyWithImpl<$Res, _$UserModelImpl>
    implements _$$UserModelImplCopyWith<$Res> {
  __$$UserModelImplCopyWithImpl(
      _$UserModelImpl _value, $Res Function(_$UserModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? uid = null,
    Object? email = freezed,
    Object? displayName = null,
    Object? role = null,
    Object? permissions = null,
    Object? createdAt = null,
    Object? isAnonymous = null,
  }) {
    return _then(_$UserModelImpl(
      uid: null == uid
          ? _value.uid
          : uid // ignore: cast_nullable_to_non_nullable
              as String,
      email: freezed == email
          ? _value.email
          : email // ignore: cast_nullable_to_non_nullable
              as String?,
      displayName: null == displayName
          ? _value.displayName
          : displayName // ignore: cast_nullable_to_non_nullable
              as String,
      role: null == role
          ? _value.role
          : role // ignore: cast_nullable_to_non_nullable
              as String,
      permissions: null == permissions
          ? _value.permissions
          : permissions // ignore: cast_nullable_to_non_nullable
              as Permissions,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      isAnonymous: null == isAnonymous
          ? _value.isAnonymous
          : isAnonymous // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$UserModelImpl implements _UserModel {
  const _$UserModelImpl(
      {required this.uid,
      this.email,
      required this.displayName,
      required this.role,
      required this.permissions,
      @TimestampConverter() required this.createdAt,
      required this.isAnonymous});

  factory _$UserModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$UserModelImplFromJson(json);

  @override
  final String uid;
  @override
  final String? email;
  @override
  final String displayName;
  @override
  final String role;
  @override
  final Permissions permissions;
  @override
  @TimestampConverter()
  final DateTime createdAt;
  @override
  final bool isAnonymous;

  @override
  String toString() {
    return 'UserModel(uid: $uid, email: $email, displayName: $displayName, role: $role, permissions: $permissions, createdAt: $createdAt, isAnonymous: $isAnonymous)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$UserModelImpl &&
            (identical(other.uid, uid) || other.uid == uid) &&
            (identical(other.email, email) || other.email == email) &&
            (identical(other.displayName, displayName) ||
                other.displayName == displayName) &&
            (identical(other.role, role) || other.role == role) &&
            (identical(other.permissions, permissions) ||
                other.permissions == permissions) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.isAnonymous, isAnonymous) ||
                other.isAnonymous == isAnonymous));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, uid, email, displayName, role,
      permissions, createdAt, isAnonymous);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      __$$UserModelImplCopyWithImpl<_$UserModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$UserModelImplToJson(
      this,
    );
  }
}

abstract class _UserModel implements UserModel {
  const factory _UserModel(
      {required final String uid,
      final String? email,
      required final String displayName,
      required final String role,
      required final Permissions permissions,
      @TimestampConverter() required final DateTime createdAt,
      required final bool isAnonymous}) = _$UserModelImpl;

  factory _UserModel.fromJson(Map<String, dynamic> json) =
      _$UserModelImpl.fromJson;

  @override
  String get uid;
  @override
  String? get email;
  @override
  String get displayName;
  @override
  String get role;
  @override
  Permissions get permissions;
  @override
  @TimestampConverter()
  DateTime get createdAt;
  @override
  bool get isAnonymous;
  @override
  @JsonKey(ignore: true)
  _$$UserModelImplCopyWith<_$UserModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

Permissions _$PermissionsFromJson(Map<String, dynamic> json) {
  return _Permissions.fromJson(json);
}

/// @nodoc
mixin _$Permissions {
  bool get approvePictures => throw _privateConstructorUsedError;
  bool get deletePosts => throw _privateConstructorUsedError;
  bool get deleteComments => throw _privateConstructorUsedError;
  bool get manageAdmins => throw _privateConstructorUsedError;
  bool get deleteUsers => throw _privateConstructorUsedError;
  bool get manageForbiddenWords => throw _privateConstructorUsedError;
  bool get manageProtectedNames => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $PermissionsCopyWith<Permissions> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $PermissionsCopyWith<$Res> {
  factory $PermissionsCopyWith(
          Permissions value, $Res Function(Permissions) then) =
      _$PermissionsCopyWithImpl<$Res, Permissions>;
  @useResult
  $Res call(
      {bool approvePictures,
      bool deletePosts,
      bool deleteComments,
      bool manageAdmins,
      bool deleteUsers,
      bool manageForbiddenWords,
      bool manageProtectedNames});
}

/// @nodoc
class _$PermissionsCopyWithImpl<$Res, $Val extends Permissions>
    implements $PermissionsCopyWith<$Res> {
  _$PermissionsCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approvePictures = null,
    Object? deletePosts = null,
    Object? deleteComments = null,
    Object? manageAdmins = null,
    Object? deleteUsers = null,
    Object? manageForbiddenWords = null,
    Object? manageProtectedNames = null,
  }) {
    return _then(_value.copyWith(
      approvePictures: null == approvePictures
          ? _value.approvePictures
          : approvePictures // ignore: cast_nullable_to_non_nullable
              as bool,
      deletePosts: null == deletePosts
          ? _value.deletePosts
          : deletePosts // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteComments: null == deleteComments
          ? _value.deleteComments
          : deleteComments // ignore: cast_nullable_to_non_nullable
              as bool,
      manageAdmins: null == manageAdmins
          ? _value.manageAdmins
          : manageAdmins // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteUsers: null == deleteUsers
          ? _value.deleteUsers
          : deleteUsers // ignore: cast_nullable_to_non_nullable
              as bool,
      manageForbiddenWords: null == manageForbiddenWords
          ? _value.manageForbiddenWords
          : manageForbiddenWords // ignore: cast_nullable_to_non_nullable
              as bool,
      manageProtectedNames: null == manageProtectedNames
          ? _value.manageProtectedNames
          : manageProtectedNames // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$PermissionsImplCopyWith<$Res>
    implements $PermissionsCopyWith<$Res> {
  factory _$$PermissionsImplCopyWith(
          _$PermissionsImpl value, $Res Function(_$PermissionsImpl) then) =
      __$$PermissionsImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool approvePictures,
      bool deletePosts,
      bool deleteComments,
      bool manageAdmins,
      bool deleteUsers,
      bool manageForbiddenWords,
      bool manageProtectedNames});
}

/// @nodoc
class __$$PermissionsImplCopyWithImpl<$Res>
    extends _$PermissionsCopyWithImpl<$Res, _$PermissionsImpl>
    implements _$$PermissionsImplCopyWith<$Res> {
  __$$PermissionsImplCopyWithImpl(
      _$PermissionsImpl _value, $Res Function(_$PermissionsImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? approvePictures = null,
    Object? deletePosts = null,
    Object? deleteComments = null,
    Object? manageAdmins = null,
    Object? deleteUsers = null,
    Object? manageForbiddenWords = null,
    Object? manageProtectedNames = null,
  }) {
    return _then(_$PermissionsImpl(
      approvePictures: null == approvePictures
          ? _value.approvePictures
          : approvePictures // ignore: cast_nullable_to_non_nullable
              as bool,
      deletePosts: null == deletePosts
          ? _value.deletePosts
          : deletePosts // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteComments: null == deleteComments
          ? _value.deleteComments
          : deleteComments // ignore: cast_nullable_to_non_nullable
              as bool,
      manageAdmins: null == manageAdmins
          ? _value.manageAdmins
          : manageAdmins // ignore: cast_nullable_to_non_nullable
              as bool,
      deleteUsers: null == deleteUsers
          ? _value.deleteUsers
          : deleteUsers // ignore: cast_nullable_to_non_nullable
              as bool,
      manageForbiddenWords: null == manageForbiddenWords
          ? _value.manageForbiddenWords
          : manageForbiddenWords // ignore: cast_nullable_to_non_nullable
              as bool,
      manageProtectedNames: null == manageProtectedNames
          ? _value.manageProtectedNames
          : manageProtectedNames // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$PermissionsImpl implements _Permissions {
  const _$PermissionsImpl(
      {this.approvePictures = false,
      this.deletePosts = false,
      this.deleteComments = false,
      this.manageAdmins = false,
      this.deleteUsers = false,
      this.manageForbiddenWords = false,
      this.manageProtectedNames = false});

  factory _$PermissionsImpl.fromJson(Map<String, dynamic> json) =>
      _$$PermissionsImplFromJson(json);

  @override
  @JsonKey()
  final bool approvePictures;
  @override
  @JsonKey()
  final bool deletePosts;
  @override
  @JsonKey()
  final bool deleteComments;
  @override
  @JsonKey()
  final bool manageAdmins;
  @override
  @JsonKey()
  final bool deleteUsers;
  @override
  @JsonKey()
  final bool manageForbiddenWords;
  @override
  @JsonKey()
  final bool manageProtectedNames;

  @override
  String toString() {
    return 'Permissions(approvePictures: $approvePictures, deletePosts: $deletePosts, deleteComments: $deleteComments, manageAdmins: $manageAdmins, deleteUsers: $deleteUsers, manageForbiddenWords: $manageForbiddenWords, manageProtectedNames: $manageProtectedNames)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$PermissionsImpl &&
            (identical(other.approvePictures, approvePictures) ||
                other.approvePictures == approvePictures) &&
            (identical(other.deletePosts, deletePosts) ||
                other.deletePosts == deletePosts) &&
            (identical(other.deleteComments, deleteComments) ||
                other.deleteComments == deleteComments) &&
            (identical(other.manageAdmins, manageAdmins) ||
                other.manageAdmins == manageAdmins) &&
            (identical(other.deleteUsers, deleteUsers) ||
                other.deleteUsers == deleteUsers) &&
            (identical(other.manageForbiddenWords, manageForbiddenWords) ||
                other.manageForbiddenWords == manageForbiddenWords) &&
            (identical(other.manageProtectedNames, manageProtectedNames) ||
                other.manageProtectedNames == manageProtectedNames));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      approvePictures,
      deletePosts,
      deleteComments,
      manageAdmins,
      deleteUsers,
      manageForbiddenWords,
      manageProtectedNames);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$PermissionsImplCopyWith<_$PermissionsImpl> get copyWith =>
      __$$PermissionsImplCopyWithImpl<_$PermissionsImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$PermissionsImplToJson(
      this,
    );
  }
}

abstract class _Permissions implements Permissions {
  const factory _Permissions(
      {final bool approvePictures,
      final bool deletePosts,
      final bool deleteComments,
      final bool manageAdmins,
      final bool deleteUsers,
      final bool manageForbiddenWords,
      final bool manageProtectedNames}) = _$PermissionsImpl;

  factory _Permissions.fromJson(Map<String, dynamic> json) =
      _$PermissionsImpl.fromJson;

  @override
  bool get approvePictures;
  @override
  bool get deletePosts;
  @override
  bool get deleteComments;
  @override
  bool get manageAdmins;
  @override
  bool get deleteUsers;
  @override
  bool get manageForbiddenWords;
  @override
  bool get manageProtectedNames;
  @override
  @JsonKey(ignore: true)
  _$$PermissionsImplCopyWith<_$PermissionsImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
