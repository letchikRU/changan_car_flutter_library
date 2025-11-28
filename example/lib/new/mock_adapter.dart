import 'package:android_automotive_plugin_example/new/automotive_adapter.dart';

class MockAutomotiveAdapter extends AutomotiveAdapter {
  // Симулированные состояния
  bool _ignitionOn = false;
  double _insideTemperature = 20.0;
  int _driverHeatLevel = 0;
  int _driverVentilationLevel = 0;
  int _passengerHeatLevel = 0;
  int _passengerVentilationLevel = 0;

  MockAutomotiveAdapter();

  // Коллбеки
  @override
  Function(bool ignitionOn)? onIgnitionChange;
  @override
  Function(double temperature)? onTemperatureChange;
  @override
  Function(bool isDriver, int heatLevel)? onSeatHeatChange;
  @override
  Function(bool isDriver, int ventilationLevel)? onSeatVentilationChange;

  // Управление симулированным состоянием
  void simulateIgnitionChange(bool ignitionOn) {
    _ignitionOn = ignitionOn;
    onIgnitionChange?.call(_ignitionOn);
  }

  void simulateTemperatureChange(double temperature) {
    _insideTemperature = temperature;
    onTemperatureChange?.call(_insideTemperature);
  }

  void simulateSeatHeatChange(bool isDriver, int heatLevel) {
    if (isDriver) {
      _driverHeatLevel = heatLevel;
    } else {
      _passengerHeatLevel = heatLevel;
    }
    onSeatHeatChange?.call(isDriver, heatLevel);
  }

  void simulateSeatVentilationChange(bool isDriver, int ventilationLevel) {
    if (isDriver) {
      _driverVentilationLevel = ventilationLevel;
    } else {
      _passengerVentilationLevel = ventilationLevel;
    }
    onSeatVentilationChange?.call(isDriver, ventilationLevel);
  }

  // Методы управления (заглушки)
  @override
  Future<void> setDriverHeatLevel(int level) async {
    _driverHeatLevel = level;
    onSeatHeatChange?.call(true, level);
  }

  @override
  Future<void> setPassengerHeatLevel(int level) async {
    _passengerHeatLevel = level;
    onSeatHeatChange?.call(false, level);
  }

  @override
  Future<void> setDriverVentilationLevel(int level) async {
    _driverVentilationLevel = level;
    onSeatVentilationChange?.call(true, level);
  }

  @override
  Future<void> setPassengerVentilationLevel(int level) async {
    _passengerVentilationLevel = level;
    onSeatVentilationChange?.call(false, level);
  }

  @override
  Future<double> getInsideTemperature() async {
    return _insideTemperature;
  }

  @override
  Future<bool> getIgnitionOn() async {
    return _ignitionOn;
  }
}
