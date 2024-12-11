void main(List<String> args) {
  // In maths composition formulae is f(g(x))
  final _composeVal = compose(doubler,increment);
  print(_composeVal.call(10));

  final _pipeVal = pipe(doubler,increment);
  print(_pipeVal.call(10));
}

int increment(int value) => value + 1;
int doubler(int value) => value * 2;

// Composition form right to left
Function compose(Function f, Function g) => (x) => f(g(x));

// Pipe is from left to right
Function pipe(Function f, Function g) => (x) => g(f(x));
