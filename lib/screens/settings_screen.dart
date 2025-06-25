// lib/screens/settings_screen.dart

import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SettingsScreen extends StatefulWidget {
  const SettingsScreen({super.key});

  @override
  State<SettingsScreen> createState() => _SettingsScreenState();
}

class _SettingsScreenState extends State<SettingsScreen> {
  double _masterVolume = 0.8; // Varsayılan ses seviyesi
  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _loadSettings();
  }

  // Kayıtlı ayarları yükleyen fonksiyon
  Future<void> _loadSettings() async {
    final prefs = await SharedPreferences.getInstance();
    setState(() {
      // Cihazda 'master_volume' adında bir kayıt varsa onu al, yoksa varsayılanı kullan.
      _masterVolume = prefs.getDouble('master_volume') ?? 0.8;
      _isLoading = false;
    });
  }

  // Yeni ses ayarını cihaza kaydeden fonksiyon
  Future<void> _saveVolume(double value) async {
    final prefs = await SharedPreferences.getInstance();
    prefs.setDouble('master_volume', value);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Ayarlar')),
      body: _isLoading
          ? const Center(child: CircularProgressIndicator())
          : Padding(
              padding: const EdgeInsets.all(16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    'Genel Ses Seviyesi',
                    style: Theme.of(context).textTheme.titleLarge,
                  ),
                  Slider(
                    value: _masterVolume,
                    min: 0.0,
                    max: 1.0,
                    divisions: 10,
                    label: (_masterVolume * 100).toStringAsFixed(0),
                    onChanged: (newValue) {
                      setState(() {
                        _masterVolume = newValue;
                      });
                    },
                    // Sürükleme bittiğinde ayarı kaydet
                    onChangeEnd: (newValue) {
                      _saveVolume(newValue);
                    },
                  ),
                ],
              ),
            ),
    );
  }
}