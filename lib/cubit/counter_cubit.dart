

import 'package:basketball_app/cubit/counter_state.dart';
import 'package:bloc/bloc.dart';

class CounterCubit extends Cubit<CounterState>{
  CounterCubit():super(CounterAIncrementState());
  int teamAPoint =0;
  int teamBPoint =0;
  void TeamIcrement({required String team,required int buttonNumber} ){
if(team=='A')
{
  teamAPoint+=buttonNumber;
  emit(CounterAIncrementState());
}
else if (team=='B'){
  teamBPoint+=buttonNumber;
  emit(CounterBIncrementState());
}else{
  teamAPoint=0;
  teamBPoint=0;
  emit(CounterABState());
    }

  }

}