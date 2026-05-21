import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'discover_book_state.dart';

class FindBookCubit extends Cubit<FindBookState> {
  FindBookCubit() : super(FindBookInitial());

  
}
