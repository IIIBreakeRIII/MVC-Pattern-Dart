## Design Pattern : MVC Pattern

<h3>0. Abstract</h3>

> Wikipedia에 따르면,<br>
> **Model-View-Controller는 소프트웨어 공학에서 사용되는 소프트웨어 디자인 패턴이다. 이 패턴을 성공적으로 사용하면, 사용자 인터페이스로부터 비즈니스 로직을 분리하여 애플리케이션의 시각적 요소나 그 이면에서 실행되는 비즈니스 로직을 서로 영향 없이 쉽게 고칠 수 있는 애플리케이션을 만들 수 있다.**<br>
> 고 기술되어있다.

**MVC Pattern**은 소프트웨어 디자인 패턴 중 하나로 **Model**, **View**, **Controller**로 이루어진 형태이다.
<br>
일반적으로 가장 많이 사용되는 형태의 디자인 패턴 중 하나로 어플리케이션을 세개의 독립된 형태로 분리하고 각각에게 고유한 역할을 부여함으로 서로 영향을 주지 않고 유지보수가 가능하게 해준다.
<br><br>

<h3>1. Structure</h3>
시작하기에 앞서, MVC 패턴을 다음과 같은 그림으로 표현할 수 있다.
<br><br>

![MVC](https://github.com/IIIBreakeRIII/IIIBreakeRIII.github.io/assets/89850286/3b081d88-49a0-4a3b-aab3-47c50a66acb7)

<h4>1.1. Model</h4>
> Data의 저장 및 가공 등 관리하고 Logic을 관리하는 Component

모델은 어플리케이션이 포함하는 데이터에 대한 모든 내용을 정의한다. 만약 데이터에 변화가 생길 경우, 필요에 따라서는 View에 있는 내용들이 변경될 수 있도록 알려주는 역할을 하게 된다.
<br><br>
해당하는 레포지토리의 어플리케이션은 [`lib > model > number.dart`](https://github.com/IIIBreakeRIII/mvc_pattern_exercise/blob/main/lib/model/number.dart)에 해당하는 파일이다.
<br>
`Number`클래스 안에서 `increment()`, `decrement()`, `reset()`이라는 역할에 따라 `_num` 데이터가 변화를 가질 수 있도록 해준다.