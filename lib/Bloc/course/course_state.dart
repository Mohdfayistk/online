part of 'course_bloc.dart';

@immutable
abstract class CourseState {}

class CourseInitial extends CourseState {}


class CourseBlocLoading extends CourseState {}
class CourseBlocLoaded extends CourseState {}
class CourseBlocError extends CourseState{}