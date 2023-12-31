// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'location_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

LocationModel _$LocationModelFromJson(Map<String, dynamic> json) {
  return _LocationModel.fromJson(json);
}

/// @nodoc
mixin _$LocationModel {
  double? get latitude => throw _privateConstructorUsedError;
  double? get longitude => throw _privateConstructorUsedError;
  double? get accuracy => throw _privateConstructorUsedError;
  double? get verticalAccuracy => throw _privateConstructorUsedError;
  double? get altitude => throw _privateConstructorUsedError;
  double? get speed => throw _privateConstructorUsedError;
  double? get speedAccuracy => throw _privateConstructorUsedError;
  double? get heading => throw _privateConstructorUsedError;
  double? get time => throw _privateConstructorUsedError;
  bool? get isMock => throw _privateConstructorUsedError;
  double? get headingAccuracy => throw _privateConstructorUsedError;
  double? get elapsedRealtimeNanos => throw _privateConstructorUsedError;
  double? get elapsedRealtimeUncertaintyNanos =>
      throw _privateConstructorUsedError;
  int? get satelliteNumber => throw _privateConstructorUsedError;
  String? get provider => throw _privateConstructorUsedError;
  @JsonKey(fromJson: _placemarksFromJson, toJson: _placemarksToJson)
  List<Placemark>? get placemarks => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $LocationModelCopyWith<LocationModel> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $LocationModelCopyWith<$Res> {
  factory $LocationModelCopyWith(
          LocationModel value, $Res Function(LocationModel) then) =
      _$LocationModelCopyWithImpl<$Res, LocationModel>;
  @useResult
  $Res call(
      {double? latitude,
      double? longitude,
      double? accuracy,
      double? verticalAccuracy,
      double? altitude,
      double? speed,
      double? speedAccuracy,
      double? heading,
      double? time,
      bool? isMock,
      double? headingAccuracy,
      double? elapsedRealtimeNanos,
      double? elapsedRealtimeUncertaintyNanos,
      int? satelliteNumber,
      String? provider,
      @JsonKey(fromJson: _placemarksFromJson, toJson: _placemarksToJson)
      List<Placemark>? placemarks});
}

/// @nodoc
class _$LocationModelCopyWithImpl<$Res, $Val extends LocationModel>
    implements $LocationModelCopyWith<$Res> {
  _$LocationModelCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? accuracy = freezed,
    Object? verticalAccuracy = freezed,
    Object? altitude = freezed,
    Object? speed = freezed,
    Object? speedAccuracy = freezed,
    Object? heading = freezed,
    Object? time = freezed,
    Object? isMock = freezed,
    Object? headingAccuracy = freezed,
    Object? elapsedRealtimeNanos = freezed,
    Object? elapsedRealtimeUncertaintyNanos = freezed,
    Object? satelliteNumber = freezed,
    Object? provider = freezed,
    Object? placemarks = freezed,
  }) {
    return _then(_value.copyWith(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      accuracy: freezed == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      verticalAccuracy: freezed == verticalAccuracy
          ? _value.verticalAccuracy
          : verticalAccuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      altitude: freezed == altitude
          ? _value.altitude
          : altitude // ignore: cast_nullable_to_non_nullable
              as double?,
      speed: freezed == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double?,
      speedAccuracy: freezed == speedAccuracy
          ? _value.speedAccuracy
          : speedAccuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      heading: freezed == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as double?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as double?,
      isMock: freezed == isMock
          ? _value.isMock
          : isMock // ignore: cast_nullable_to_non_nullable
              as bool?,
      headingAccuracy: freezed == headingAccuracy
          ? _value.headingAccuracy
          : headingAccuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      elapsedRealtimeNanos: freezed == elapsedRealtimeNanos
          ? _value.elapsedRealtimeNanos
          : elapsedRealtimeNanos // ignore: cast_nullable_to_non_nullable
              as double?,
      elapsedRealtimeUncertaintyNanos: freezed ==
              elapsedRealtimeUncertaintyNanos
          ? _value.elapsedRealtimeUncertaintyNanos
          : elapsedRealtimeUncertaintyNanos // ignore: cast_nullable_to_non_nullable
              as double?,
      satelliteNumber: freezed == satelliteNumber
          ? _value.satelliteNumber
          : satelliteNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      placemarks: freezed == placemarks
          ? _value.placemarks
          : placemarks // ignore: cast_nullable_to_non_nullable
              as List<Placemark>?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$LocationModelImplCopyWith<$Res>
    implements $LocationModelCopyWith<$Res> {
  factory _$$LocationModelImplCopyWith(
          _$LocationModelImpl value, $Res Function(_$LocationModelImpl) then) =
      __$$LocationModelImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {double? latitude,
      double? longitude,
      double? accuracy,
      double? verticalAccuracy,
      double? altitude,
      double? speed,
      double? speedAccuracy,
      double? heading,
      double? time,
      bool? isMock,
      double? headingAccuracy,
      double? elapsedRealtimeNanos,
      double? elapsedRealtimeUncertaintyNanos,
      int? satelliteNumber,
      String? provider,
      @JsonKey(fromJson: _placemarksFromJson, toJson: _placemarksToJson)
      List<Placemark>? placemarks});
}

/// @nodoc
class __$$LocationModelImplCopyWithImpl<$Res>
    extends _$LocationModelCopyWithImpl<$Res, _$LocationModelImpl>
    implements _$$LocationModelImplCopyWith<$Res> {
  __$$LocationModelImplCopyWithImpl(
      _$LocationModelImpl _value, $Res Function(_$LocationModelImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? latitude = freezed,
    Object? longitude = freezed,
    Object? accuracy = freezed,
    Object? verticalAccuracy = freezed,
    Object? altitude = freezed,
    Object? speed = freezed,
    Object? speedAccuracy = freezed,
    Object? heading = freezed,
    Object? time = freezed,
    Object? isMock = freezed,
    Object? headingAccuracy = freezed,
    Object? elapsedRealtimeNanos = freezed,
    Object? elapsedRealtimeUncertaintyNanos = freezed,
    Object? satelliteNumber = freezed,
    Object? provider = freezed,
    Object? placemarks = freezed,
  }) {
    return _then(_$LocationModelImpl(
      latitude: freezed == latitude
          ? _value.latitude
          : latitude // ignore: cast_nullable_to_non_nullable
              as double?,
      longitude: freezed == longitude
          ? _value.longitude
          : longitude // ignore: cast_nullable_to_non_nullable
              as double?,
      accuracy: freezed == accuracy
          ? _value.accuracy
          : accuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      verticalAccuracy: freezed == verticalAccuracy
          ? _value.verticalAccuracy
          : verticalAccuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      altitude: freezed == altitude
          ? _value.altitude
          : altitude // ignore: cast_nullable_to_non_nullable
              as double?,
      speed: freezed == speed
          ? _value.speed
          : speed // ignore: cast_nullable_to_non_nullable
              as double?,
      speedAccuracy: freezed == speedAccuracy
          ? _value.speedAccuracy
          : speedAccuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      heading: freezed == heading
          ? _value.heading
          : heading // ignore: cast_nullable_to_non_nullable
              as double?,
      time: freezed == time
          ? _value.time
          : time // ignore: cast_nullable_to_non_nullable
              as double?,
      isMock: freezed == isMock
          ? _value.isMock
          : isMock // ignore: cast_nullable_to_non_nullable
              as bool?,
      headingAccuracy: freezed == headingAccuracy
          ? _value.headingAccuracy
          : headingAccuracy // ignore: cast_nullable_to_non_nullable
              as double?,
      elapsedRealtimeNanos: freezed == elapsedRealtimeNanos
          ? _value.elapsedRealtimeNanos
          : elapsedRealtimeNanos // ignore: cast_nullable_to_non_nullable
              as double?,
      elapsedRealtimeUncertaintyNanos: freezed ==
              elapsedRealtimeUncertaintyNanos
          ? _value.elapsedRealtimeUncertaintyNanos
          : elapsedRealtimeUncertaintyNanos // ignore: cast_nullable_to_non_nullable
              as double?,
      satelliteNumber: freezed == satelliteNumber
          ? _value.satelliteNumber
          : satelliteNumber // ignore: cast_nullable_to_non_nullable
              as int?,
      provider: freezed == provider
          ? _value.provider
          : provider // ignore: cast_nullable_to_non_nullable
              as String?,
      placemarks: freezed == placemarks
          ? _value._placemarks
          : placemarks // ignore: cast_nullable_to_non_nullable
              as List<Placemark>?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$LocationModelImpl extends _LocationModel {
  const _$LocationModelImpl(
      {this.latitude,
      this.longitude,
      this.accuracy,
      this.verticalAccuracy,
      this.altitude,
      this.speed,
      this.speedAccuracy,
      this.heading,
      this.time,
      this.isMock,
      this.headingAccuracy,
      this.elapsedRealtimeNanos,
      this.elapsedRealtimeUncertaintyNanos,
      this.satelliteNumber,
      this.provider,
      @JsonKey(fromJson: _placemarksFromJson, toJson: _placemarksToJson)
      final List<Placemark>? placemarks})
      : _placemarks = placemarks,
        super._();

  factory _$LocationModelImpl.fromJson(Map<String, dynamic> json) =>
      _$$LocationModelImplFromJson(json);

  @override
  final double? latitude;
  @override
  final double? longitude;
  @override
  final double? accuracy;
  @override
  final double? verticalAccuracy;
  @override
  final double? altitude;
  @override
  final double? speed;
  @override
  final double? speedAccuracy;
  @override
  final double? heading;
  @override
  final double? time;
  @override
  final bool? isMock;
  @override
  final double? headingAccuracy;
  @override
  final double? elapsedRealtimeNanos;
  @override
  final double? elapsedRealtimeUncertaintyNanos;
  @override
  final int? satelliteNumber;
  @override
  final String? provider;
  final List<Placemark>? _placemarks;
  @override
  @JsonKey(fromJson: _placemarksFromJson, toJson: _placemarksToJson)
  List<Placemark>? get placemarks {
    final value = _placemarks;
    if (value == null) return null;
    if (_placemarks is EqualUnmodifiableListView) return _placemarks;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(value);
  }

  @override
  String toString() {
    return 'LocationModel(latitude: $latitude, longitude: $longitude, accuracy: $accuracy, verticalAccuracy: $verticalAccuracy, altitude: $altitude, speed: $speed, speedAccuracy: $speedAccuracy, heading: $heading, time: $time, isMock: $isMock, headingAccuracy: $headingAccuracy, elapsedRealtimeNanos: $elapsedRealtimeNanos, elapsedRealtimeUncertaintyNanos: $elapsedRealtimeUncertaintyNanos, satelliteNumber: $satelliteNumber, provider: $provider, placemarks: $placemarks)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$LocationModelImpl &&
            (identical(other.latitude, latitude) ||
                other.latitude == latitude) &&
            (identical(other.longitude, longitude) ||
                other.longitude == longitude) &&
            (identical(other.accuracy, accuracy) ||
                other.accuracy == accuracy) &&
            (identical(other.verticalAccuracy, verticalAccuracy) ||
                other.verticalAccuracy == verticalAccuracy) &&
            (identical(other.altitude, altitude) ||
                other.altitude == altitude) &&
            (identical(other.speed, speed) || other.speed == speed) &&
            (identical(other.speedAccuracy, speedAccuracy) ||
                other.speedAccuracy == speedAccuracy) &&
            (identical(other.heading, heading) || other.heading == heading) &&
            (identical(other.time, time) || other.time == time) &&
            (identical(other.isMock, isMock) || other.isMock == isMock) &&
            (identical(other.headingAccuracy, headingAccuracy) ||
                other.headingAccuracy == headingAccuracy) &&
            (identical(other.elapsedRealtimeNanos, elapsedRealtimeNanos) ||
                other.elapsedRealtimeNanos == elapsedRealtimeNanos) &&
            (identical(other.elapsedRealtimeUncertaintyNanos,
                    elapsedRealtimeUncertaintyNanos) ||
                other.elapsedRealtimeUncertaintyNanos ==
                    elapsedRealtimeUncertaintyNanos) &&
            (identical(other.satelliteNumber, satelliteNumber) ||
                other.satelliteNumber == satelliteNumber) &&
            (identical(other.provider, provider) ||
                other.provider == provider) &&
            const DeepCollectionEquality()
                .equals(other._placemarks, _placemarks));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      latitude,
      longitude,
      accuracy,
      verticalAccuracy,
      altitude,
      speed,
      speedAccuracy,
      heading,
      time,
      isMock,
      headingAccuracy,
      elapsedRealtimeNanos,
      elapsedRealtimeUncertaintyNanos,
      satelliteNumber,
      provider,
      const DeepCollectionEquality().hash(_placemarks));

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$LocationModelImplCopyWith<_$LocationModelImpl> get copyWith =>
      __$$LocationModelImplCopyWithImpl<_$LocationModelImpl>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$LocationModelImplToJson(
      this,
    );
  }
}

abstract class _LocationModel extends LocationModel {
  const factory _LocationModel(
      {final double? latitude,
      final double? longitude,
      final double? accuracy,
      final double? verticalAccuracy,
      final double? altitude,
      final double? speed,
      final double? speedAccuracy,
      final double? heading,
      final double? time,
      final bool? isMock,
      final double? headingAccuracy,
      final double? elapsedRealtimeNanos,
      final double? elapsedRealtimeUncertaintyNanos,
      final int? satelliteNumber,
      final String? provider,
      @JsonKey(fromJson: _placemarksFromJson, toJson: _placemarksToJson)
      final List<Placemark>? placemarks}) = _$LocationModelImpl;
  const _LocationModel._() : super._();

  factory _LocationModel.fromJson(Map<String, dynamic> json) =
      _$LocationModelImpl.fromJson;

  @override
  double? get latitude;
  @override
  double? get longitude;
  @override
  double? get accuracy;
  @override
  double? get verticalAccuracy;
  @override
  double? get altitude;
  @override
  double? get speed;
  @override
  double? get speedAccuracy;
  @override
  double? get heading;
  @override
  double? get time;
  @override
  bool? get isMock;
  @override
  double? get headingAccuracy;
  @override
  double? get elapsedRealtimeNanos;
  @override
  double? get elapsedRealtimeUncertaintyNanos;
  @override
  int? get satelliteNumber;
  @override
  String? get provider;
  @override
  @JsonKey(fromJson: _placemarksFromJson, toJson: _placemarksToJson)
  List<Placemark>? get placemarks;
  @override
  @JsonKey(ignore: true)
  _$$LocationModelImplCopyWith<_$LocationModelImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
