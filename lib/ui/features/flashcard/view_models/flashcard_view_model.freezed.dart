// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'flashcard_view_model.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
  'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models',
);

/// @nodoc
mixin _$FlashcardState {
  List<Flashcard> get cards => throw _privateConstructorUsedError;
  int get currentIndex => throw _privateConstructorUsedError;
  bool get isFlipped => throw _privateConstructorUsedError;

  /// Create a copy of FlashcardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  $FlashcardStateCopyWith<FlashcardState> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $FlashcardStateCopyWith<$Res> {
  factory $FlashcardStateCopyWith(
    FlashcardState value,
    $Res Function(FlashcardState) then,
  ) = _$FlashcardStateCopyWithImpl<$Res, FlashcardState>;
  @useResult
  $Res call({List<Flashcard> cards, int currentIndex, bool isFlipped});
}

/// @nodoc
class _$FlashcardStateCopyWithImpl<$Res, $Val extends FlashcardState>
    implements $FlashcardStateCopyWith<$Res> {
  _$FlashcardStateCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of FlashcardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cards = null,
    Object? currentIndex = null,
    Object? isFlipped = null,
  }) {
    return _then(
      _value.copyWith(
            cards: null == cards
                ? _value.cards
                : cards // ignore: cast_nullable_to_non_nullable
                      as List<Flashcard>,
            currentIndex: null == currentIndex
                ? _value.currentIndex
                : currentIndex // ignore: cast_nullable_to_non_nullable
                      as int,
            isFlipped: null == isFlipped
                ? _value.isFlipped
                : isFlipped // ignore: cast_nullable_to_non_nullable
                      as bool,
          )
          as $Val,
    );
  }
}

/// @nodoc
abstract class _$$FlashcardStateImplCopyWith<$Res>
    implements $FlashcardStateCopyWith<$Res> {
  factory _$$FlashcardStateImplCopyWith(
    _$FlashcardStateImpl value,
    $Res Function(_$FlashcardStateImpl) then,
  ) = __$$FlashcardStateImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({List<Flashcard> cards, int currentIndex, bool isFlipped});
}

/// @nodoc
class __$$FlashcardStateImplCopyWithImpl<$Res>
    extends _$FlashcardStateCopyWithImpl<$Res, _$FlashcardStateImpl>
    implements _$$FlashcardStateImplCopyWith<$Res> {
  __$$FlashcardStateImplCopyWithImpl(
    _$FlashcardStateImpl _value,
    $Res Function(_$FlashcardStateImpl) _then,
  ) : super(_value, _then);

  /// Create a copy of FlashcardState
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? cards = null,
    Object? currentIndex = null,
    Object? isFlipped = null,
  }) {
    return _then(
      _$FlashcardStateImpl(
        cards: null == cards
            ? _value._cards
            : cards // ignore: cast_nullable_to_non_nullable
                  as List<Flashcard>,
        currentIndex: null == currentIndex
            ? _value.currentIndex
            : currentIndex // ignore: cast_nullable_to_non_nullable
                  as int,
        isFlipped: null == isFlipped
            ? _value.isFlipped
            : isFlipped // ignore: cast_nullable_to_non_nullable
                  as bool,
      ),
    );
  }
}

/// @nodoc

class _$FlashcardStateImpl implements _FlashcardState {
  const _$FlashcardStateImpl({
    final List<Flashcard> cards = const [],
    this.currentIndex = 0,
    this.isFlipped = false,
  }) : _cards = cards;

  final List<Flashcard> _cards;
  @override
  @JsonKey()
  List<Flashcard> get cards {
    if (_cards is EqualUnmodifiableListView) return _cards;
    // ignore: implicit_dynamic_type
    return EqualUnmodifiableListView(_cards);
  }

  @override
  @JsonKey()
  final int currentIndex;
  @override
  @JsonKey()
  final bool isFlipped;

  @override
  String toString() {
    return 'FlashcardState(cards: $cards, currentIndex: $currentIndex, isFlipped: $isFlipped)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$FlashcardStateImpl &&
            const DeepCollectionEquality().equals(other._cards, _cards) &&
            (identical(other.currentIndex, currentIndex) ||
                other.currentIndex == currentIndex) &&
            (identical(other.isFlipped, isFlipped) ||
                other.isFlipped == isFlipped));
  }

  @override
  int get hashCode => Object.hash(
    runtimeType,
    const DeepCollectionEquality().hash(_cards),
    currentIndex,
    isFlipped,
  );

  /// Create a copy of FlashcardState
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$FlashcardStateImplCopyWith<_$FlashcardStateImpl> get copyWith =>
      __$$FlashcardStateImplCopyWithImpl<_$FlashcardStateImpl>(
        this,
        _$identity,
      );
}

abstract class _FlashcardState implements FlashcardState {
  const factory _FlashcardState({
    final List<Flashcard> cards,
    final int currentIndex,
    final bool isFlipped,
  }) = _$FlashcardStateImpl;

  @override
  List<Flashcard> get cards;
  @override
  int get currentIndex;
  @override
  bool get isFlipped;

  /// Create a copy of FlashcardState
  /// with the given fields replaced by the non-null parameter values.
  @override
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$FlashcardStateImplCopyWith<_$FlashcardStateImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
