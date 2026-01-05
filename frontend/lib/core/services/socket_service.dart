class SocketService {
  static final SocketService _instance =
      SocketService._internal();

  factory SocketService() => _instance;

  SocketService._internal();

  void joinMatch(String matchId) {
    // emit join_match
  }

  void leaveMatch(String matchId) {
    // emit leave_match
  }

  void sendChatMessage(
    String matchId,
    String message,
  ) {
    // emit chat_message
  }
}