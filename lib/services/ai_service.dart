// lib/services/ai_service.dart (YENİ HALİ - GEMINI)
import 'dart:convert';
import 'package:google_generative_ai/google_generative_ai.dart';

class AIService {
  // DİKKAT: Kendi Gemini API Anahtarınızı buraya yapıştırın.
  static const String _apiKey = 'AIzaSyBuNF3VdjwzZekmzWirvjPr4-V0Omdsadg';

  Future<String> getCharacterResponse({
    required String characterName,
    required String caseInfo,
    required List<String> collectedEvidence,
    required String conversationHistory,
    required String playerQuestion,
  }) async {
    final prompt = """
    Sen bir dedektiflik oyunundaki $characterName adlı karaktersin. Oyuncunun (dedektifin) sana sorduğu soruya, karakterin ağzından, kısa, gizemli ve hikayeye uygun bir cevap ver. Konuşma geçmişini ve bilinen kanıtları dikkate al.

    VAKA BİLGİSİ: $caseInfo
    BİLİNEN KANITLAR:
    - ${collectedEvidence.join('\n- ')}
    
    KONUŞMA GEÇMİŞİ:
    $conversationHistory

    Dedektifin son sorusu: "$playerQuestion"
    
    Cevabında kendi ismini kullanma. Sadece konuşma metnini yaz.
    """;
    return _generateContent(prompt);
  }

  Future<List<String>> getDialogueSuggestions({
    required String characterName,
    required String caseInfo,
    required List<String> collectedEvidence,
    required String conversationHistory,
  }) async {
    final prompt = """
    Sen bir dedektiflik oyununda oyuncuya yardımcı olan bir asistansın. Aşağıdaki bilgilere dayanarak, dedektifin $characterName adlı karaktere şimdi sorması için en mantıklı, kısa ve birbirinden farklı 3 soru önerisi üret. Cevabı sadece ve sadece bir JSON listesi formatında ver. Örnek: ["Soru 1?", "Soru 2?", "Bunu neden yaptın?"]

    VAKA BİLGİSİ: $caseInfo
    BİLİNEN KANITLAR:
    - ${collectedEvidence.join('\n- ')}
    
    KONUŞMA GEÇMİŞİ ($characterName ile):
    $conversationHistory
    """;

    try {
      final responseText = await _generateContent(prompt);
      final jsonListRegex = RegExp(r'\[\s*".*?"\s*(,\s*".*?"\s*)*\]');
      final match = jsonListRegex.firstMatch(responseText);

      if (match != null) {
        final jsonString = match.group(0)!;
        final List<dynamic> parsedList = jsonDecode(jsonString);
        return parsedList.cast<String>();
      }
      return [];
    } catch (e) {
      print("Suggestion generation error: $e");
      return [];
    }
  }

  Future<String> _generateContent(String prompt) async {
    try {
      final model = GenerativeModel(model: 'gemini-2.5-flash', apiKey: _apiKey);
      final content = [Content.text(prompt)];
      final response = await model.generateContent(content);

      if (response.text != null) {
        return response.text!;
      }
      return "(Karakterin zihni anlaşılamıyor... Cevap boş geldi.)";
    } catch (e) {
      print("Gemini API Error: $e");
      // Gemini'ın spesifik hata mesajlarını yakalayıp daha anlamlı hale getirebiliriz.
      if (e is GenerativeAIException) {
        return "(Karakterin zihni bulanık... API Hatası: ${e.message})";
      }
      return "(Karakterin zihni şu an çok karışık... Bağlantı hatası.)";
    }
  }
}