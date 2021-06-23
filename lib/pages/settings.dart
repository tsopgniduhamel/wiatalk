import 'package:flutter/material.dart';
import 'package:list_tile_switch/list_tile_switch.dart';
import 'package:bluetooth_enable/bluetooth_enable.dart';

class Settings extends StatefulWidget {
  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  bool value = false;

  void onChanged1(bool value) {
    setState(() {
      value = !value;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Settings",
          textAlign: TextAlign.center,
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(height: 10),
            const Text(
              'Mode de connexion',
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 22,
              ),
            ),
            const SizedBox(height: 15),
            ListTileSwitch(
              value: value,
              onChanged: onChanged1,
              toggleSelectedOnValueChange: true,
              leading: const Icon(Icons.bluetooth),
              subtitle: Text(
                  'Avec le mode "bluetooth", vous pouvez envoyer des messages et fichiers sur WiaTalk à tout appareil connecté au votre par bluetooth'),
              switchActiveColor: Colors.blue,
              title: Text(
                'Utiliser le bluetooth',
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  // fontSize: 22,
                ),
              ),
            ),
            const SizedBox(height: 10),
            InkWell(
              onTap: () {
// Request to turn on Bluetooth within an app
                BluetoothEnable.enableBluetooth.then((value) {
                  if (value == "true") {
                    //Bluetooth has been enabled
                  } else if (value == "false") {
                    //Bluetooth has not been enabled
                  }
                });
              },
              child: ListTileSwitch(
                value: !value,
                onChanged: onChanged1,
                toggleSelectedOnValueChange: true,
                leading: const Icon(Icons.wifi_tethering),
                subtitle: Text(
                    'Avec le mode "réseau local", vous pouvez envoyer des messages et fichiers sur WiaTalk à tout appareil qui se trouve dans le même réseau local que vous'),
                switchActiveColor: Colors.blue,
                title: Text(
                  'Utiliser le réseau local',
                  style: const TextStyle(
                    fontWeight: FontWeight.w500,
                    // fontSize: 22,
                  ),
                ),
              ),
            ),
            const SizedBox(height: 10),
            ListTileSwitch(
              value: value,
              onChanged: onChanged1,
              toggleSelectedOnValueChange: true,
              leading: InkWell(
                  onTap: () {
                    onChanged1(value);
                  },
                  child: const Icon(Icons.network_wifi)),
              subtitle: Text(
                  'Avec le mode "Internet", vous pouvez envoyer des messages et fichiers à toute personne (possedant WiaTalk) sur internet'),
              switchActiveColor: Colors.blue,
              title: Text(
                'Utiliser Internet',
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  // fontSize: 22,
                ),
              ),
            ),
            const SizedBox(height: 10),
            const SizedBox(height: 10),
            const Text(
              "Infos sur l'application",
              style: const TextStyle(
                fontWeight: FontWeight.w500,
                fontSize: 22,
              ),
            ),
            const SizedBox(height: 15),
            ListTile(
              leading: const Icon(Icons.library_books),
              subtitle: Text(
                  'Parcourez ce guide utilisateur pour savoir comment utiliser WiaTalk'),
              // switchActiveColor: Colors.blue,
              title: Text(
                'Guide utilisateur',
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  // fontSize: 22,
                ),
              ),
            ),
            const SizedBox(height: 10),
            ListTile(
              leading: const Icon(Icons.info),
              subtitle: Text(
                  "Trouvez ici quelques informations sur les réalisateurs de l'application WiaTalk"),
              title: Text(
                'A propos des auteurs',
                style: const TextStyle(
                  fontWeight: FontWeight.w500,
                  // fontSize: 22,
                ),
              ),
            ),
            const SizedBox(height: 10),
          ],
        ),
      ),
    );
  }
}
