sealed class PagesState{}

class HomePageState implements PagesState{}

class SecondPageState implements PagesState{}

class ThirdPageState implements PagesState{}

class FourthPageState implements PagesState{}

class PageExceptionState implements PagesState{
  final String error;

  PageExceptionState(this.error);
}