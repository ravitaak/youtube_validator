import 'package:youtube_video_validator/youtube_video_validator.dart';

void main() {
  print(
      'isValid: ${VideoURLValidator.validateYouTubeVideoURL(url: 'https://youtube.com/watch?v=23433')}');
  print(
      'Playlist/Video: ${VideoURLValidator.checkURLisVideoOrPlaylistYoutube(url: 'https://youtube.com/watch?v=23433')}');
  print(
      'Available: ${VideoURLValidator.checkVideoIsAvailOnYoutube(url: 'https://youtube.com/watch?v=23433')}');
}
