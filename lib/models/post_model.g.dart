// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'post_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$PostModelImpl _$$PostModelImplFromJson(Map<String, dynamic> json) =>
    _$PostModelImpl(
      id: json['id'] as String,
      authorId: json['authorId'] as String,
      authorName: json['authorName'] as String,
      title: json['title'] as String,
      description: json['description'] as String,
      category: json['category'] as String?,
      birthDate: _$JsonConverterFromJson<Timestamp, DateTime>(
          json['birthDate'], const TimestampConverter().fromJson),
      images: (json['images'] as List<dynamic>)
          .map((e) => ImageData.fromJson(e as Map<String, dynamic>))
          .toList(),
      customDetails: Map<String, String>.from(json['customDetails'] as Map),
      status: json['status'] as String,
      rejectionReason: json['rejectionReason'] as String?,
      upvotes: (json['upvotes'] as num).toInt(),
      downvotes: (json['downvotes'] as num).toInt(),
      commentCount: (json['commentCount'] as num).toInt(),
      createdAt:
          const TimestampConverter().fromJson(json['createdAt'] as Timestamp),
      updatedAt:
          const TimestampConverter().fromJson(json['updatedAt'] as Timestamp),
    );

Map<String, dynamic> _$$PostModelImplToJson(_$PostModelImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'authorId': instance.authorId,
      'authorName': instance.authorName,
      'title': instance.title,
      'description': instance.description,
      'category': instance.category,
      'birthDate': _$JsonConverterToJson<Timestamp, DateTime>(
          instance.birthDate, const TimestampConverter().toJson),
      'images': instance.images,
      'customDetails': instance.customDetails,
      'status': instance.status,
      'rejectionReason': instance.rejectionReason,
      'upvotes': instance.upvotes,
      'downvotes': instance.downvotes,
      'commentCount': instance.commentCount,
      'createdAt': const TimestampConverter().toJson(instance.createdAt),
      'updatedAt': const TimestampConverter().toJson(instance.updatedAt),
    };

Value? _$JsonConverterFromJson<Json, Value>(
  Object? json,
  Value? Function(Json json) fromJson,
) =>
    json == null ? null : fromJson(json as Json);

Json? _$JsonConverterToJson<Json, Value>(
  Value? value,
  Json? Function(Value value) toJson,
) =>
    value == null ? null : toJson(value);

_$ImageDataImpl _$$ImageDataImplFromJson(Map<String, dynamic> json) =>
    _$ImageDataImpl(
      url: json['url'] as String,
      publicId: json['publicId'] as String,
      status: json['status'] as String,
    );

Map<String, dynamic> _$$ImageDataImplToJson(_$ImageDataImpl instance) =>
    <String, dynamic>{
      'url': instance.url,
      'publicId': instance.publicId,
      'status': instance.status,
    };
