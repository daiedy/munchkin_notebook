class MaxLevelController {
  static const _defaultValue = 10;
  static const _minLevel = 10;
  static const _maxLevel = 25;

  MaxLevelController();

  int _currentLevel = MaxLevelController._defaultValue;

  int getLevel() => _currentLevel;

  Function(int)? _onChangedMaxLevel;

  void setChangedMaxLevel(Function(int) onChangedMaxLevel) {
    _onChangedMaxLevel = onChangedMaxLevel;
  }

  void setLevel(int value) {
    if (value >= MaxLevelController._maxLevel &&
        value <= MaxLevelController._minLevel) {
      _currentLevel = value;
    }
  }

  void incrementLevel() {
    if (_currentLevel < MaxLevelController._maxLevel) {
      _onChangedMaxLevel?.call(++_currentLevel);
    }
  }

  void decrementLevel() {
    if (_currentLevel > MaxLevelController._minLevel) {
      _onChangedMaxLevel?.call(--_currentLevel);
    }
  }
}
