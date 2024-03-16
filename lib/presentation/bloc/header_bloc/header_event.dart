part of 'header_bloc.dart';

@freezed
class HeaderEvent with _$HeaderEvent {
  const factory HeaderEvent.updateBasketCount({required int count}) =
      _UpdateBasketCount;

  const factory HeaderEvent.changeThemeMode() = _ChangeThemeMode;

  const factory HeaderEvent.changeLanguage({required Locale locale}) =
      _ChangeLanguage;
}
