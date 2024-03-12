part of 'header_bloc.dart';

@freezed
class HeaderState with _$HeaderState {
  const factory HeaderState({
    @Default(0) int count,
  }) = _HeaderState;

  factory HeaderState.initial() => const HeaderState(
        count: 0,
      );
}
