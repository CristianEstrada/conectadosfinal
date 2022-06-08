// ignore_for_file: non_constant_identifier_names, prefer_const_constructors_in_immutables

part of 'images_bloc.dart';

abstract class ImagesState extends Equatable {
  const ImagesState();

  @override
  List<Object> get props => [];
}

class ImagesLoading extends ImagesState {}

class ImagesLoaded extends ImagesState {
  final List<dynamic> imageUrls;

  ImagesLoaded({this.imageUrls = const []});

  @override
  List<Object> get props => [imageUrls];
}
