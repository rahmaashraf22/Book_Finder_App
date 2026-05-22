part of 'home_view_model.dart';

class HomeState {
  final NavBarEnum currAppTab;
  final bool isBottomNavVisible;

  HomeState({required this.currAppTab, required this.isBottomNavVisible});
  HomeState copyWith({NavBarEnum? currAppTab, bool? isBottomNavVisible}) {
    return HomeState(
      currAppTab: currAppTab ?? this.currAppTab,
      isBottomNavVisible: isBottomNavVisible ?? this.isBottomNavVisible,
    );
  }
}

