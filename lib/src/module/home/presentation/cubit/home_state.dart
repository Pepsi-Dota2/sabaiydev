part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(DataStatus.initial) DataStatus status,
    @Default(0) int index,
    @Default(NavbarItem.home) NavbarItem navbarItem,
  })= _HomeState;
}