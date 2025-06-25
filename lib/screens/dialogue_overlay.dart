// lib/screens/dialogue_overlay.dart (HATALARI DÜZELTİLMİŞ HALİ)
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:midnight_confessions/game/game.dart';
import 'package:midnight_confessions/game_logic/game_bloc.dart';
import 'package:midnight_confessions/models/case_file.dart';
import 'package:midnight_confessions/services/ai_service.dart';

class ChatMessage {
  final String sender;
  final String text;
  ChatMessage({required this.sender, required this.text});
}

class DialogueOverlay extends StatefulWidget {
  final MidnightConfessionsGame game;
  const DialogueOverlay({super.key, required this.game});

  @override
  State<DialogueOverlay> createState() => _DialogueOverlayState();
}

class _DialogueOverlayState extends State<DialogueOverlay> {
  final AIService _aiService = AIService();
  final TextEditingController _textController = TextEditingController();
  final ScrollController _scrollController = ScrollController();

  final List<ChatMessage> _conversationHistory = [];
  List<String> _suggestions = [];
  bool _isCharacterTyping = false;
  bool _isLoadingSuggestions = true;

  late Character _character;
  late String _characterImagePath;

  @override
  void initState() {
    super.initState();
    _character = widget.game.currentCharacter!;
    _characterImagePath = 'assets/images/${widget.game.caseFile.id}/portraits/${_character.id}.png';
    _getInitialSuggestions();
  }

  @override
  void dispose() {
    _textController.dispose();
    _scrollController.dispose();
    super.dispose();
  }

  void _scrollToBottom() {
    WidgetsBinding.instance.addPostFrameCallback((_) {
      if (_scrollController.hasClients) {
        _scrollController.animateTo(
          _scrollController.position.maxScrollExtent,
          duration: const Duration(milliseconds: 300),
          curve: Curves.easeOut,
        );
      }
    });
  }

  Future<void> _getInitialSuggestions() async {
    setState(() => _isLoadingSuggestions = true);
    // Başlangıçta yapay zekadan öneri almayı deneyelim
    await _fetchNewSuggestions();
    // Eğer öneri gelmezse (API hatası vb.), standart önerileri kullan
    if (_suggestions.isEmpty && mounted) {
      setState(() {
        _suggestions = [
          "Olay anında neredeydin?",
          "Kurban hakkında ne biliyorsun?",
          "Burada şüpheli bir şey gördün mü?"
        ];
      });
    }
    if (mounted) {
      setState(() => _isLoadingSuggestions = false);
    }
  }

  // Yeni ve merkezi öneri getirme fonksiyonu
  Future<void> _fetchNewSuggestions() async {
    if (!mounted) return;
    setState(() => _isLoadingSuggestions = true);

    final gameState = context.read<GameBloc>().state;
    final collectedEvidenceDetails = widget.game.caseFile.evidence
        .where((e) => gameState.collectedEvidenceIds.contains(e.id))
        .map((e) => e.name)
        .toList();

    final caseInfo = "Kurban: ${widget.game.caseFile.victim.name}, Olay Yeri: ${widget.game.caseFile.location}";
    final historyString = _conversationHistory.map((m) => "${m.sender}: ${m.text}").join('\n');

    final newSuggestions = await _aiService.getDialogueSuggestions(
      characterName: _character.name,
      caseInfo: caseInfo,
      collectedEvidence: collectedEvidenceDetails,
      conversationHistory: historyString,
    );

    if (mounted) {
      setState(() {
        _suggestions = newSuggestions;
        _isLoadingSuggestions = false;
      });
    }
  }


  Future<void> _onPlayerAction(String query) async {
    if (query.trim().isEmpty || _isCharacterTyping) return;

    setState(() {
      _conversationHistory.add(ChatMessage(sender: 'player', text: query));
      _isCharacterTyping = true;
      _suggestions = [];
      _isLoadingSuggestions = true;
    });
    _textController.clear();
    _scrollToBottom();

    final gameState = context.read<GameBloc>().state;
    final collectedEvidenceDetails = widget.game.caseFile.evidence
        .where((e) => gameState.collectedEvidenceIds.contains(e.id))
        .map((e) => e.name)
        .toList();

    final caseInfo = "Kurban: ${widget.game.caseFile.victim.name}, Olay Yeri: ${widget.game.caseFile.location}";
    final historyString = _conversationHistory.map((m) => "${m.sender}: ${m.text}").join('\n');

    final characterResponse = await _aiService.getCharacterResponse(
      characterName: _character.name,
      caseInfo: caseInfo,
      collectedEvidence: collectedEvidenceDetails,
      conversationHistory: historyString,
      playerQuestion: query,
    );

    if (!mounted) return;
    setState(() {
      _isCharacterTyping = false;
      _conversationHistory.add(ChatMessage(sender: 'character', text: characterResponse));
    });
    _scrollToBottom();

    // Cevap geldikten sonra yeni önerileri getir
    await _fetchNewSuggestions();
  }

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => FocusScope.of(context).unfocus(),
      child: Material(
        color: Colors.transparent,
        child: Align(
          alignment: Alignment.bottomCenter,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.8,
            padding: const EdgeInsets.all(16),
            margin: const EdgeInsets.all(20),
            decoration: BoxDecoration(
              color: const Color.fromRGBO(0, 0, 0, 0.9),
              borderRadius: BorderRadius.circular(10),
              border: Border.all(color: Colors.white54, width: 1),
            ),
            child: Column(
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Image.asset(
                      _characterImagePath,
                      width: 60,
                      height: 60,
                      fit: BoxFit.cover,
                      errorBuilder: (context, error, stackTrace) {
                        return const Icon(Icons.person, size: 60, color: Colors.white);
                      },
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Text(
                        _character.name,
                        style: Theme.of(context).textTheme.headlineSmall?.copyWith(color: Colors.white),
                      ),
                    ),
                    IconButton(
                      icon: const Icon(Icons.close, color: Colors.white),
                      onPressed: () => widget.game.overlays.remove('DialogueOverlay'),
                    ),
                  ],
                ),
                const Divider(color: Colors.white24),
                Expanded(
                  child: ListView.builder(
                    controller: _scrollController,
                    itemCount: _conversationHistory.length,
                    itemBuilder: (context, index) {
                      final message = _conversationHistory[index];
                      final isPlayer = message.sender == 'player';
                      return Align(
                        alignment: isPlayer ? Alignment.centerRight : Alignment.centerLeft,
                        child: Container(
                          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 12),
                          margin: const EdgeInsets.symmetric(vertical: 4),
                          decoration: BoxDecoration(
                            color: isPlayer ? Colors.deepPurple[700] : Colors.grey[800],
                            borderRadius: BorderRadius.circular(12),
                          ),
                          child: Text(message.text, style: const TextStyle(color: Colors.white)),
                        ),
                      );
                    },
                  ),
                ),
                if (_isCharacterTyping)
                  const Padding(
                    padding: EdgeInsets.all(8.0),
                    child: Align(alignment: Alignment.centerLeft, child: Text("Yazıyor...", style: TextStyle(color: Colors.white54, fontStyle: FontStyle.italic))),
                  ),
                const Divider(color: Colors.white24),
                SizedBox(
                  height: 120,
                  child: _isLoadingSuggestions
                      ? const Center(child: CircularProgressIndicator())
                      : SingleChildScrollView(
                    child: Wrap(
                      spacing: 8.0,
                      runSpacing: 4.0,
                      alignment: WrapAlignment.center,
                      children: _suggestions.map((suggestion) {
                        return ActionChip(
                          label: Text(suggestion),
                          onPressed: () => _onPlayerAction(suggestion),
                          backgroundColor: Colors.deepPurple[900],
                        );
                      }).toList(),
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0),
                  child: Row(
                    children: [
                      Expanded(
                        child: TextField(
                          controller: _textController,
                          decoration: const InputDecoration(
                            hintText: 'Kendi sorunu yaz...',
                            filled: true,
                            fillColor: Colors.black26,
                            border: OutlineInputBorder(),
                          ),
                          onSubmitted: _onPlayerAction,
                        ),
                      ),
                      const SizedBox(width: 8),
                      IconButton(
                        icon: const Icon(Icons.send, size: 28),
                        onPressed: () => _onPlayerAction(_textController.text),
                        style: IconButton.styleFrom(
                          backgroundColor: Colors.deepPurple,
                          foregroundColor: Colors.white,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}