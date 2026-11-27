abstract class Camera {
  void takePhoto();
}

abstract class MusicPlayer {
  void playMusic();
}

class Smartphone implements Camera, MusicPlayer {
  @override
  void takePhoto() {
    print("Taking photo...");
  }

  @override
  void playMusic() {
    print("Playing music...");
  }
}

void main() {
  Smartphone phone = Smartphone();

  phone.takePhoto();
  phone.playMusic();
}