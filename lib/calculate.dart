import 'dart:math';

class Calculate {
  Calculate({this.height, this.weight});

  final int height;
  final int weight;

  double _bmi;

  String CalculateBMI() {
    _bmi = weight / pow(height/100, 2);
    return _bmi.toStringAsFixed(1);
  }

  String BMIChart(){
    if(_bmi>=29.4){
      return '<< 29.4 -- 33.7 >>';
    }
    else if (_bmi >= 25.3) {
      return '<< 25.3 -- 29.3 >>';
    } else if (_bmi >= 18.6) {
      return '<< 18.6 -- 25.2 >>';
    } else if (_bmi > 13.9) {
      return '<< 13.9 -- 18.5 >>';
    } else {
      return '<< 10.7 -- 13.8 >>';
    }
  }

  String Interpretation() {
    if(_bmi>=29.4){
      return 'It is recommended to do heavy exercise/Workout like cycling,diet control in order to reduce your fats';
    }
    else if (_bmi >= 25.3) {
      return 'It is recommended to do heavy exercise/Workout like cycling,diet control in order to reduce your fats';
    } else if (_bmi >= 18.6) {
      return 'Maintain your body level as constant, you have better BMI rate';
    } else if (_bmi > 13.9) {
      return 'Intake some healthy foods, like nuts etc..(** also intake some of Fatty foods) to increase the weight of your body';
    } else {
      return 'Intake some healthy foods, like nuts etc..(** also intake some of Fatty foods) to increase the weight of your body';
    }
  }

  String BMINotation() {
    if(_bmi>=29.4){
      return 'Extreme weight';
    }
    else if (_bmi >= 25.3) {
      return 'Overweight';
    } else if (_bmi >= 18.6) {
      return 'Average';
    } else if (_bmi > 13.9) {
      return 'Lean';
    } else {
      return 'Ultra lean';
    }
  }
}
