part of flutter_bluetooth_serial;

class BluetoothDiscoveryResult {
  final BluetoothSerialDevice device;
  final int rssi;

  BluetoothDiscoveryResult({
    required this.device,
    this.rssi = 0,
  });

  factory BluetoothDiscoveryResult.fromMap(Map map) {
    return BluetoothDiscoveryResult(
      device: BluetoothSerialDevice.fromMap(map),
      rssi: map['rssi'] ?? 0,
    );
  }
}
