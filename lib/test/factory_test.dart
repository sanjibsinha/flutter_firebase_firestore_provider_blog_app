class Piano {
  late final String sound;
  bool mute = false;

  Piano._internal(this.sound);

  static final Map<String, Piano> _privateLibrary = <String, Piano>{};

  factory Piano(String sound) {
    if (_privateLibrary.containsKey(sound)) {
      return _privateLibrary[sound]!;
    } else {
      final piano = Piano._internal(sound);
      _privateLibrary[sound] = piano;
      return piano;
    }
  }

  void play(String message) {
    if (!mute) print(message);
  }
}

/* void main() {
  //runApp(const FirstApp());
  var piano = Piano('sound');
  piano.mute = true;
  piano.play('It\'s playing');
} */