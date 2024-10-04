// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'song_screen_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SongScreenState {
  DeezerSongModel? get songModel => throw _privateConstructorUsedError;
  bool get isRecognizing => throw _privateConstructorUsedError;
  bool get success => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DeezerSongModel? songModel, bool isRecognizing, bool success)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            DeezerSongModel? songModel, bool isRecognizing, bool success)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DeezerSongModel? songModel, bool isRecognizing, bool success)?
        initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;

  /// Create a copy of SongScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SongScreenStateCopyWith<SongScreenState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongScreenStateCopyWith<$Res> {
  factory $SongScreenStateCopyWith(
          SongScreenState value, $Res Function(SongScreenState) then) =
      _$SongScreenStateCopyWithImpl<$Res, SongScreenState>;
  @useResult
  $Res call({DeezerSongModel? songModel, bool isRecognizing, bool success});
}

/// @nodoc
class _$SongScreenStateCopyWithImpl<$Res, $Val extends SongScreenState>
    implements $SongScreenStateCopyWith<$Res> {
  _$SongScreenStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SongScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songModel = freezed,
    Object? isRecognizing = null,
    Object? success = null,
  }) {
    return _then(_value.copyWith(
      songModel: freezed == songModel
          ? _value.songModel
          : songModel // ignore: cast_nullable_to_non_nullable
              as DeezerSongModel?,
      isRecognizing: null == isRecognizing
          ? _value.isRecognizing
          : isRecognizing // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $SongScreenStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({DeezerSongModel? songModel, bool isRecognizing, bool success});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SongScreenStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SongScreenState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? songModel = freezed,
    Object? isRecognizing = null,
    Object? success = null,
  }) {
    return _then(_$InitialImpl(
      songModel: freezed == songModel
          ? _value.songModel
          : songModel // ignore: cast_nullable_to_non_nullable
              as DeezerSongModel?,
      isRecognizing: null == isRecognizing
          ? _value.isRecognizing
          : isRecognizing // ignore: cast_nullable_to_non_nullable
              as bool,
      success: null == success
          ? _value.success
          : success // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.songModel, this.isRecognizing = false, this.success = false});

  @override
  final DeezerSongModel? songModel;
  @override
  @JsonKey()
  final bool isRecognizing;
  @override
  @JsonKey()
  final bool success;

  @override
  String toString() {
    return 'SongScreenState.initial(songModel: $songModel, isRecognizing: $isRecognizing, success: $success)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.songModel, songModel) ||
                other.songModel == songModel) &&
            (identical(other.isRecognizing, isRecognizing) ||
                other.isRecognizing == isRecognizing) &&
            (identical(other.success, success) || other.success == success));
  }

  @override
  int get hashCode =>
      Object.hash(runtimeType, songModel, isRecognizing, success);

  /// Create a copy of SongScreenState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(
            DeezerSongModel? songModel, bool isRecognizing, bool success)
        initial,
  }) {
    return initial(songModel, isRecognizing, success);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(
            DeezerSongModel? songModel, bool isRecognizing, bool success)?
        initial,
  }) {
    return initial?.call(songModel, isRecognizing, success);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(
            DeezerSongModel? songModel, bool isRecognizing, bool success)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(songModel, isRecognizing, success);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(_Initial value) initial,
  }) {
    return initial(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(_Initial value)? initial,
  }) {
    return initial?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(_Initial value)? initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(this);
    }
    return orElse();
  }
}

abstract class _Initial implements SongScreenState {
  const factory _Initial(
      {final DeezerSongModel? songModel,
      final bool isRecognizing,
      final bool success}) = _$InitialImpl;

  @override
  DeezerSongModel? get songModel;
  @override
  bool get isRecognizing;
  @override
  bool get success;

  /// Create a copy of SongScreenState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
