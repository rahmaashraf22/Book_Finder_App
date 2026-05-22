import 'package:book_finder_app/features/home/enums/home_enum.dart';
import 'package:book_finder_app/features/home/view_model/home_intent.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:injectable/injectable.dart';
part 'home_state.dart';

@injectable
class HomeViewModel extends Cubit<HomeState> {
  HomeViewModel()
    : super(HomeState(currAppTab: NavBarEnum.home, isBottomNavVisible: true));

  void doIntent(HomeIntent intent) {
    switch (intent) {
      case ChangeCurrentTabIndexIntent(navBarEnum: final tab):
        _changeNavBar(tab);
      case ScrollDirectionChangedIntent(isScrollingDown: final isScrollingDown):
        _onScrollDirectionChanged(isScrollingDown);
    }
  }

  void _changeNavBar(NavBarEnum tab) {
    emit(state.copyWith(currAppTab: tab));
  }

  void _onScrollDirectionChanged(bool isScrollingDown) {
    if (isScrollingDown) {
      _onScrollDirectionChanged(true);
    } else {
      _onScrollDirectionChanged(false);
    }
  }
}
