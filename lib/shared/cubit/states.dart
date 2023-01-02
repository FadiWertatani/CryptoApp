abstract class CoinsStates {}

class CoinsInitialState extends CoinsStates {}

class CoinsGetLoadingState extends CoinsStates {}

class CoinsGetSuccessState extends CoinsStates {}

class CoinsGetErrorState extends CoinsStates {
  late final String error;

  CoinsGetErrorState(this.error);
}

class CoinsGetDetailsLoadingState extends CoinsStates {}

class CoinsGetDetailsSuccessState extends CoinsStates {}

class CoinsGetDetailsErrorState extends CoinsStates {
  late final String error;

  CoinsGetDetailsErrorState(this.error);
}