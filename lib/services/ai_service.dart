// lib/services/ai_service.dart
import 'dart:convert';
import 'package:http/http.dart' as http;

class AIService {
  // DİKKAT: Normal bir uygulamada bu anahtar ASLA doğrudan koda yazılmaz.
  // Bu, sadece eğitim amaçlı bir basitleştirmedir.
  final String _apiKey = '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';
  final String _apiUrl = 'https://api-inference.huggingface.co/models/mistralai/Mistral-7B-Instruct-v0.2';

  Future<String> getDynamicResponse(String characterName, String prompt) async {
    try {
      final response = await http.post(
        Uri.parse(_apiUrl),
        headers: {
          'Authorization': 'Bearer $_apiKey',
          'Content-Type': 'application/json',
        },
        body: jsonEncode({
          'inputs': "Bir dedektiflik oyununda, $characterName adlı karakter sensin. Dedektifin sana sorduğu şu soruya karakterin ağzından, kısa ve gizemli bir cevap ver: '$prompt'",
        }),
      );

      if (response.statusCode == 200) {
        final List<dynamic> jsonResponse = jsonDecode(response.body);
        if (jsonResponse.isNotEmpty && jsonResponse[0].containsKey('generated_text')) {
          // Cevabın içinden sadece karakterin konuşmasını alalım.
          String fullText = jsonResponse[0]['generated_text'];
          // Soru cümlesini yanıttan temizleyelim
          String characterResponse = fullText.split("'$prompt'").last.trim();
          return characterResponse.replaceAll('"', ''); // Tırnak işaretlerini temizle
        }
        return "Cevap formatı beklenmedik.";
      } else {
        return "(Karakter şu an düşüncelere dalmış durumda... Hata: ${response.statusCode})";
      }
    } catch (e) {
      return "(Karakterin zihni şu an çok karışık... Bağlantı hatası.)";
    }
  }
}