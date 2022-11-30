import 'package:app_structure/Features/home/data/repositiries/some_repo.dart';
import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'home_details_state.dart';

class HomeDetailsCubit extends Cubit<HomeDetailsState> {
  HomeDetailsCubit(this.repoName) : super(HomeDetailsInitial());

  final RepoName repoName;

  void methoNamde() async {
    emit(HomeDetailsLoading());

    var result = await repoName.methodNanme();

    result.fold((failure) {
      emit(HomeDetailsFailure());
    }, (result) {
      emit(HomeDetailsSuccess());
    });
  }
}
