import 'package:mvc_exercise/model/number.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class NumberController extends ControllerMVC {
  // 생성자 기본으로 작성해야 될 부분
  factory NumberController([StateMVC? state]) =>
      _this ??= NumberController._(state);

  // controller 생성자에 모델 생성자 초기화
  NumberController._(StateMVC? state)
      : _number = Number(),
        super(state);

  final Number _number;
  static NumberController? _this;

  get num => _number.num;

  // 화면 업데이트
  void update() => setState(() {});

  // num 증가
  void incrementNum() {
    _number.increment();
    update();
  }

  // num 감소
  void decrementNum() {
    _number.decrement();
    update();
  }
}
