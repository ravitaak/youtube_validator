### Video URL Validator validates URLs from Popular Video Platforms

#### Platforms Supported

- Youtube
    - Check url is valid video url.
    - Check url is valid playlist url.
    - Check url is availble on youtube or not.
    - Check url is a youtube url or not.

## Usage

![Example](https://github.com/ravitaak/youtube_video_validator/blob/master/example/screenshots/example.png)

```
import 'package:youtube_video_validator/youtube_validator.dart';

void main() {
  print(
      'isValid: ${VideoURLValidator.validateYouTubeVideoURL(url: 'https://youtube.com/watch?v=23433')}');
  print(
      'Playlist/Video: ${VideoURLValidator.checkURLisVideoOrPlaylistYoutube(url: 'https://youtube.com/watch?v=23433')}');
  print(
      'Available: ${VideoURLValidator.checkVideoIsAvailOnYoutube(url: 'https://youtube.com/watch?v=23433')}');
}
```


## Contributors

[Ravi Taak](https://www.linkedin.com/in/ravitaak/)



## Having Issues

File the Issue [here](https://github.com/ravitaak/youtube_video_validator/issues)

## Looking to contribute to this package:

**🤘🏻 Great!**
 Fork the [Repo](https://github.com/ravitaak/youtube_video_validator), Update Code, Write a meaningful Commit Message, Send a PR. That's all you need to Contribute.


