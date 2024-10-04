// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'song_infomation_cubit.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$SongInfomationState {
  bool get isMinimized => throw _privateConstructorUsedError;
  double? get scrollPosition => throw _privateConstructorUsedError;
  bool get isPlayingMusic => throw _privateConstructorUsedError;
  List<SongByArtist> get listSongByArtist => throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMinimized, double? scrollPosition,
            bool isPlayingMusic, List<SongByArtist> listSongByArtist)
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMinimized, double? scrollPosition,
            bool isPlayingMusic, List<SongByArtist> listSongByArtist)?
        initial,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMinimized, double? scrollPosition,
            bool isPlayingMusic, List<SongByArtist> listSongByArtist)?
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

  /// Create a copy of SongInfomationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $SongInfomationStateCopyWith<SongInfomationState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $SongInfomationStateCopyWith<$Res> {
  factory $SongInfomationStateCopyWith(
          SongInfomationState value, $Res Function(SongInfomationState) then) =
      _$SongInfomationStateCopyWithImpl<$Res, SongInfomationState>;
  @useResult
  $Res call(
      {bool isMinimized,
      double? scrollPosition,
      bool isPlayingMusic,
      List<SongByArtist> listSongByArtist});
}

/// @nodoc
class _$SongInfomationStateCopyWithImpl<$Res, $Val extends SongInfomationState>
    implements $SongInfomationStateCopyWith<$Res> {
  _$SongInfomationStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of SongInfomationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMinimized = null,
    Object? scrollPosition = freezed,
    Object? isPlayingMusic = null,
    Object? listSongByArtist = null,
  }) {
    return _then(_value.copyWith(
      isMinimized: null == isMinimized
          ? _value.isMinimized
          : isMinimized // ignore: cast_nullable_to_non_nullable
              as bool,
      scrollPosition: freezed == scrollPosition
          ? _value.scrollPosition
          : scrollPosition // ignore: cast_nullable_to_non_nullable
              as double?,
      isPlayingMusic: null == isPlayingMusic
          ? _value.isPlayingMusic
          : isPlayingMusic // ignore: cast_nullable_to_non_nullable
              as bool,
      listSongByArtist: null == listSongByArtist
          ? _value.listSongByArtist
          : listSongByArtist // ignore: cast_nullable_to_non_nullable
              as List<SongByArtist>,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$InitialImplCopyWith<$Res>
    implements $SongInfomationStateCopyWith<$Res> {
  factory _$$InitialImplCopyWith(
          _$InitialImpl value, $Res Function(_$InitialImpl) then) =
      __$$InitialImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {bool isMinimized,
      double? scrollPosition,
      bool isPlayingMusic,
      List<SongByArtist> listSongByArtist});
}

/// @nodoc
class __$$InitialImplCopyWithImpl<$Res>
    extends _$SongInfomationStateCopyWithImpl<$Res, _$InitialImpl>
    implements _$$InitialImplCopyWith<$Res> {
  __$$InitialImplCopyWithImpl(
      _$InitialImpl _value, $Res Function(_$InitialImpl) _then)
      : super(_value, _then);

  /// Create a copy of SongInfomationState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? isMinimized = null,
    Object? scrollPosition = freezed,
    Object? isPlayingMusic = null,
    Object? listSongByArtist = null,
  }) {
    return _then(_$InitialImpl(
      isMinimized: null == isMinimized
          ? _value.isMinimized
          : isMinimized // ignore: cast_nullable_to_non_nullable
              as bool,
      scrollPosition: freezed == scrollPosition
          ? _value.scrollPosition
          : scrollPosition // ignore: cast_nullable_to_non_nullable
              as double?,
      isPlayingMusic: null == isPlayingMusic
          ? _value.isPlayingMusic
          : isPlayingMusic // ignore: cast_nullable_to_non_nullable
              as bool,
      listSongByArtist: null == listSongByArtist
          ? _value._listSongByArtist
          : listSongByArtist // ignore: cast_nullable_to_non_nullable
              as List<SongByArtist>,
    ));
  }
}

/// @nodoc

class _$InitialImpl implements _Initial {
  const _$InitialImpl(
      {this.isMinimized = false,
      this.scrollPosition = 0.0,
      this.isPlayingMusic = true,
      final List<SongByArtist> listSongByArtist = const []})
      : _listSongByArtist = listSongByArtist;

  @override
  @JsonKey()
  final bool isMinimized;
  @override
  @JsonKey()
  final double? scrollPosition;
  @override
  @JsonKey()
  final bool isPlayingMusic;
  final List<SongByArtist> _listSongByArtist;
  @override
  @JsonKey()
  List<SongByArtist> get listSongByArtist {
    if (_listSongByArtist is EqualUnmodifiableListView)
      return _listSongByArtist;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_listSongByArtist);
  }

  @override
  String toString() {
    return 'SongInfomationState.initial(isMinimized: $isMinimized, scrollPosition: $scrollPosition, isPlayingMusic: $isPlayingMusic, listSongByArtist: $listSongByArtist)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$InitialImpl &&
            (identical(other.isMinimized, isMinimized) ||
                other.isMinimized == isMinimized) &&
            (identical(other.scrollPosition, scrollPosition) ||
                other.scrollPosition == scrollPosition) &&
            (identical(other.isPlayingMusic, isPlayingMusic) ||
                other.isPlayingMusic == isPlayingMusic) &&
            const DeepCollectionEquality()
                .equals(other._listSongByArtist, _listSongByArtist));
  }

  @override
  int get hashCode => Object.hash(runtimeType, isMinimized, scrollPosition,
      isPlayingMusic, const DeepCollectionEquality().hash(_listSongByArtist));

  /// Create a copy of SongInfomationState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      __$$InitialImplCopyWithImpl<_$InitialImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function(bool isMinimized, double? scrollPosition,
            bool isPlayingMusic, List<SongByArtist> listSongByArtist)
        initial,
  }) {
    return initial(
        isMinimized, scrollPosition, isPlayingMusic, listSongByArtist);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function(bool isMinimized, double? scrollPosition,
            bool isPlayingMusic, List<SongByArtist> listSongByArtist)?
        initial,
  }) {
    return initial?.call(
        isMinimized, scrollPosition, isPlayingMusic, listSongByArtist);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function(bool isMinimized, double? scrollPosition,
            bool isPlayingMusic, List<SongByArtist> listSongByArtist)?
        initial,
    required TResult orElse(),
  }) {
    if (initial != null) {
      return initial(
          isMinimized, scrollPosition, isPlayingMusic, listSongByArtist);
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

abstract class _Initial implements SongInfomationState {
  const factory _Initial(
      {final bool isMinimized,
      final double? scrollPosition,
      final bool isPlayingMusic,
      final List<SongByArtist> listSongByArtist}) = _$InitialImpl;

  @override
  bool get isMinimized;
  @override
  double? get scrollPosition;
  @override
  bool get isPlayingMusic;
  @override
  List<SongByArtist> get listSongByArtist;

  /// Create a copy of SongInfomationState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$InitialImplCopyWith<_$InitialImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
