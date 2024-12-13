part of 'home_cubit.dart';

@freezed
class HomeState with _$HomeState {
  const factory HomeState({
    @Default(DataStatus.initial) DataStatus status,
    @Default(0) int index,
    @Default(NavbarItem.home) NavbarItem navbarItem,
    @Default(false) bool onClick,
    File? pickedImage, 
    @Default(false) bool isImageLoading, 
    String? imageErrorMessage, 
    String? selectedImagePath,
    @Default('') String selectFolder,
  })= _HomeState;
}
