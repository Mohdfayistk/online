

import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

import '../../Repository/Api/course/course_api.dart';
import '../../Repository/Modelclass/course.dart';


part 'course_event.dart';
part 'course_state.dart';

class CourseBloc extends Bloc<CourseEvent, CourseState> {
  late List<Course> courseModel;
  CourseApi courseApi=CourseApi();
  CourseBloc() : super(CourseInitial()) {
    on<CourseEvent>((event, emit) async{
      emit(CourseBlocLoading());
      try{

        courseModel = await courseApi.getCourse();
        emit(CourseBlocLoaded());
      } catch(e){
        print(e);
        emit(CourseBlocError());}
    });
  }
}
