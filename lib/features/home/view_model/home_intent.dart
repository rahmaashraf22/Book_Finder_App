import 'package:book_finder_app/features/home/enums/home_enum.dart';

sealed class HomeIntent {
  final int selectedIndex;
  HomeIntent(this.selectedIndex);
}

class ChangeCurrentTabIndexIntent extends HomeIntent {
  final NavBarEnum navBarEnum;
  ChangeCurrentTabIndexIntent(this.navBarEnum) : super(navBarEnum.index);
}

class ScrollDirectionChangedIntent extends HomeIntent {
  final bool isScrollingDown;
  ScrollDirectionChangedIntent(int selectedIndex, this.isScrollingDown) : super(selectedIndex);
}