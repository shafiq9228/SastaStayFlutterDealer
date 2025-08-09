import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'dart:io';
import 'package:get/get.dart';

import 'package:permission_handler/permission_handler.dart';
import 'package:image_picker/image_picker.dart';
import '../view_models/auth_view_model.dart';

class ImagePickerControllerComponent extends GetxController {
  Rx<File> uploadingFile = File('').obs;
  final authViewModel = Get.put(AuthViewModel());
  final ImagePicker _cameraPicker = ImagePicker(); // Add this for camera


  Future<File?> pickPdfFile() async {
    await _requestStoragePermission();
    FilePickerResult? result = await FilePicker.platform.pickFiles(
      type: FileType.custom,
      allowedExtensions: ['pdf'],
    );
    Get.back();
    if (result != null && result.files.single.path != null) {
      File file = File(result.files.single.path!);
      uploadingFile.value = file;
      return file;
    } else {
      return null;
    }
  }

  Future _requestStoragePermission() async {
    final status = await Permission.storage.status;
    if (!status.isGranted) {
      await Permission.storage.request();
    }
  }

  Future requestCameraPermission() async {
    final status = await Permission.camera.status;
    if (!status.isGranted) {
      await Permission.camera.request();
    }
  }

  Future<File?> captureImageFromCamera() async {
    try {
      final pickedFile = await _cameraPicker.pickImage(source: ImageSource.camera);
      if (pickedFile != null) {
        final cameraImageFile = File(pickedFile.path);
        uploadingFile.value = cameraImageFile;
        return cameraImageFile;
      } else {
        return null; // User canceled or no file captured
      }
    } catch (e) {
      debugPrint("Error capturing image from camera: $e");
      return null;
    }
  }

}
