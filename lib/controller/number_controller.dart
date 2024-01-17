import 'package:mvc_exercise/model/number.dart';
import 'package:mvc_pattern/mvc_pattern.dart';

class NumberController extends ControllerMVC {
  // 생성자(constructor) 기본으로 작성해야 될 부분
  // 생성자란, 객체 지향 프로그래밍에서 클래스를 초기화하기 위해 사용하는 함수
  // Factory : Use the factory keyword when implementing a constructor that doesn’t always create a new instance of its class. (From. Dart Document)
  // 즉, 새로운 인스턴스를 생성하고 싶지 않을 때 사용하는 생성자
  // 싱글톤 패턴을 따라감
  factory NumberController([StateMVC? state]) =>
      _this ??= NumberController._(state);

  // controller 생성자에 모델 생성자 초기화
  NumberController._(super.state) : _number = Number();

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

  // num 초기화
  void resetNum() {
    _number.reset();
    update();
  }
}
