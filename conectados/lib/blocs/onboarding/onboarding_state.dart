// ignore_for_file: prefer_const_constructors_in_immutables

part of 'onboarding_bloc.dart';

abstract class OnboardingState extends Equatable {
  const OnboardingState();

  @override
  List<Object> get props => [];
}

class OnboardingLoading extends OnboardingState {}

class OnboardingLoaded extends OnboardingState {
  final User user;

  OnboardingLoaded({required this.user});

  @override
  List<Object> get props => [user];
}
