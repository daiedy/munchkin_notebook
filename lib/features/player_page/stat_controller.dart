class StatController {
  StatController({required int initStat, int minStat = 0, int? maxStat}) {
    _stat = initStat;
    _minStat = minStat;
    _maxStat = maxStat;
  }

  late int _stat;
  late final int _minStat;
  late final int? _maxStat;
  final List<Function(int)> _onStatChangedListeners = [];

  int get minStat => _minStat;
  int? get maxStat => _maxStat;
  int get stat => _stat;

  void addStatChangedListener(Function(int) onStatChanged) {
    _onStatChangedListeners.add(onStatChanged);
  }

  void _invokeListeners() {
    for (var element in _onStatChangedListeners) {
      element.call(stat);
    }
  }

  void setStat(int stat) {
    if (stat > _minStat && (_maxStat != null ? stat < _maxStat! : true)) {
      _stat = stat;
    }
    _invokeListeners();
  }

  void decrement() {
    if (stat > _minStat) {
      _stat--;
      _invokeListeners();
    }
  }

  void increment() {
    if (_maxStat != null ? stat < _maxStat! : true) {
      _stat++;
      _invokeListeners();
    }
  }
}
