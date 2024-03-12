part of 'header_bloc.dart';

@freezed
class HeaderEvent with _$HeaderEvent {
  const factory HeaderEvent.updateBasketCount({required int count}) =
      _UpdateBasketCount;
}
