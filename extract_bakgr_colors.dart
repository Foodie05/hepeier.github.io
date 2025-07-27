import 'dart:io';
import 'dart:typed_data';
import 'package:image/image.dart' as img;
import 'package:path/path.dart' as path;

void main() async {
  // Get directory path from user input
  stdout.write('Enter the directory path containing images (e.g., img/cats): ');
  String? directoryPath = stdin.readLineSync();

  if (directoryPath == null || directoryPath.isEmpty) {
    print('Error: No directory path provided.');
    exit(1);
  }

  // Normalize path
  final Directory directory = Directory(directoryPath);

  // Check if directory exists
  if (!await directory.exists()) {
    print('Error: Directory "$directoryPath" does not exist.');
    exit(1);
  }

  print(
      '\nExtracting top-left pixel colors from images in $directoryPath...\n');
  print('Format: Filename, RGB Color');
  print('----------------------------------------');

  try {
    // List all files in the directory
    final List<FileSystemEntity> entities = await directory.list().toList();

    // Filter for image files
    final List<File> imageFiles = entities.whereType<File>().where((file) {
      final ext = path.extension(file.path).toLowerCase();
      return ['.png', '.jpg', '.jpeg', '.gif', '.webp', '.bmp'].contains(ext);
    }).toList();

    if (imageFiles.isEmpty) {
      print('No image files found in the directory.');
      exit(0);
    }

    // Process each image file
    for (final File imageFile in imageFiles) {
      final String filename = path.basename(imageFile.path);

      try {
        // Read image file
        final Uint8List bytes = await imageFile.readAsBytes();

        // Decode image
        final img.Image? decodedImage = img.decodeImage(bytes);

        if (decodedImage == null) {
          print('$filename: Failed to decode image');
          continue;
        }

        // Get top-left pixel color (0,0)
        final img.Pixel pixel = decodedImage.getPixel(0, 0);

        // Extract RGB values
        final int r = pixel.r.toInt();
        final int g = pixel.g.toInt();
        final int b = pixel.b.toInt();

        // Output filename and RGB values
        print('$filename: { r: $r, g: $g, b: $b }');
      } catch (e) {
        print('$filename: Error processing image - $e');
      }
    }

    print('\nColor extraction complete.');
  } catch (e) {
    print('Error: $e');
    exit(1);
  }
}
