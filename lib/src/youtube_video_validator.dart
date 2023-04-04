import 'package:http/http.dart' as http;

class VideoURLValidator {
  /// It Validates if URL is a YouTube Video URL (Also Validates Links Shared from Mobile)
  static const String youtubeRegex =
      r'^((?:https?:)?\/\/)?((?:www|m)\.)?((?:youtube(-nocookie)?\.com|youtu.be))(\/(?:[\w\-]+\?v=|embed\/|v\/)?)([\w\-]+)(\S+)?$';
  static bool validateYouTubeVideoURL({required String url}) {
    final RegExp pattern = RegExp(youtubeRegex);
    final bool match = pattern.hasMatch(url);
    return match;
  }

  /// Check Youtube Video or Playlist is Available or Not - Its Require Internet
  static Future<bool> checkVideoIsAvailOnYoutube({required String url}) async {
    var uri = Uri.parse("https://www.youtube.com/oembed?url=$url");
    var res = await http.get(uri);
    if (res.body.contains("title")) {
      return true;
    }
    return false;
  }

  /// CHECK URL is video url or playlist url Youtube
  static Future<String> checkURLisVideoOrPlaylistYoutube(
      {required String url}) async {
    if (validateYouTubeVideoURL(url: url)) {
      if (url.contains("playlist")) {
        return "Playlist";
      } else {
        return "Video";
      }
    }
    return "None";
  }
}
