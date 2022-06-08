import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:conectados/repositories/database/database_repository.dart';
import 'package:equatable/equatable.dart';

part 'images_event.dart';
part 'images_state.dart';

class ImagesBloc extends Bloc<ImagesEvent, ImagesState> {
  final DatabaseRepository _databaseRepository;
  StreamSubscription? _databaseSubscription;

  ImagesBloc({required DatabaseRepository databaseRepository})
      : _databaseRepository = databaseRepository,
        super(ImagesLoading());

  @override
  Stream<ImagesState> mapEventToState(ImagesEvent event) async* {
    if (event is LoadImages) {
      yield* _mapLoadImagesToState();
    }

    if (event is UpdateImages) {
      yield* _mapUpdateImagesToState(event);
    }
  }

  Stream<ImagesState> _mapLoadImagesToState() async* {
    _databaseSubscription?.cancel();

    _databaseRepository.getUsers().listen(
          (user) => add(
            UpdateImages(user.imageUrls),
          ),
        );
  }

  Stream<ImagesState> _mapUpdateImagesToState(UpdateImages event) async* {
    yield ImagesLoaded(imageUrls: event.imageUrls);
  }
}
