import 'package:file_picker/file_picker.dart';

class MediaService {
  //constructor
  MediaService() {}

  //function to pick images correctly from our device
  Future<PlatformFile?> pickImageFromLibrary() async {
    FilePickerResult? _result =
        await FilePicker.platform.pickFiles(type: FileType.image); //enum
    if (_result != null) {
      return _result.files[0];
    }
    return null;
  }
}
