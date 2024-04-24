import 'package:file_picker/file_picker.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../repository/target_repository.dart';
import '../../utils/utils.dart';

class TargetController extends GetxController {
  final _repo = TargetRepository();
  final targetIdController = TextEditingController().obs;
  final userIdController = TextEditingController().obs;
  final targetIdFocusNode = FocusNode().obs;
  final userIdFocusNode = FocusNode().obs;

  RxBool loading = false.obs, isError = false.obs;
  RxString filePath = ''.obs, errorStr = ''.obs;

  Future pickFile() async {
    try {
      FilePickerResult? result = await FilePicker.platform.pickFiles();

      if (result != null) {
        filePath.value = result.files.single.path!;
      } else {
        // User canceled the file picker.
        Utils.toastMsg("No file selected");
      }
    } catch (e) {
      debugPrint("Error picking file: $e");
    }
  }

  Future<void> getTarget(String targetId) async {
    try {
      isError.value = false;
      loading.value = true;
      final Map<String, String> params = {
        'target_id': targetId,
      };
      final Map<String, dynamic> data = await _repo.getTarget(params);

      // final TargetModel fileModel = TargetModel.fromJson(data);
      // files.assignAll(fileModel.files);
      loading.value = false; // Update collections
    } catch (error) {
      loading.value = false;
      isError.value = true;
      errorStr.value = error.toString();
    }
  }

  Future<void> getTargetFileDownload(String targetId) async {
    try {
      isError.value = false;
      loading.value = true;
      final Map<String, String> params = {
        'target_id': targetId,
        'file_ref': '',
      };
      final Map<String, dynamic> data = await _repo.getTarget(params);

      // final TargetModel fileModel = TargetModel.fromJson(data);
      // files.assignAll(fileModel.files);
      loading.value = false; // Update collections
    } catch (error) {
      loading.value = false;
      isError.value = true;
      errorStr.value = error.toString();
    }
  }

  Future<void> getAllTargets() async {
    try {
      isError.value = false;
      loading.value = true;
      final Map<String, dynamic> data = await _repo.getAllTargets();

      // final TargetModel fileModel = TargetModel.fromJson(data);
      // files.assignAll(fileModel.files);
      loading.value = false; // Update collections
    } catch (error) {
      loading.value = false;
      isError.value = true;
      errorStr.value = error.toString();
    }
  }

  Future<void> getAllTargetsOnline() async {
    try {
      isError.value = false;
      loading.value = true;
      final Map<String, dynamic> data = await _repo.getAllTargetsOnline();

      // final TargetModel fileModel = TargetModel.fromJson(data);
      // files.assignAll(fileModel.files);
      loading.value = false; // Update collections
    } catch (error) {
      loading.value = false;
      isError.value = true;
      errorStr.value = error.toString();
    }
  }

  Future<void> getAllTargetFiles() async {
    try {
      isError.value = false;
      loading.value = true;
      final Map<String, dynamic> data = await _repo.getAllTargetFiles();

      // final TargetModel fileModel = TargetModel.fromJson(data);
      // files.assignAll(fileModel.files);
      loading.value = false; // Update collections
    } catch (error) {
      loading.value = false;
      isError.value = true;
      errorStr.value = error.toString();
    }
  }

  Future createTarget() async {
    try {
      Utils.showLoadingDialog('Creating...');
      Map data = {
        "accessible_by_users": '',
        "name": "",
        "icon_base64": "",
      };
      await _repo.createTarget(data).then((response) async {
        Utils.dismissLoadingDialog();
        Utils.toastMsg("Target created successfully");
        Get.back();
      });
    } catch (error) {
      Utils.dismissLoadingDialog();
      Utils.toastMsg("Error: $error");
    }
  }

  Future addUserToTarget() async {
    try {
      Utils.showLoadingDialog('Adding...');
      await _repo.addUserToTarget(
        targetId: "",
        userId: "",
      ).then((response) async {
        Utils.dismissLoadingDialog();
        Utils.toastMsg("User added successfully");
        Get.back();
      });
    } catch (error) {
      Utils.dismissLoadingDialog();
      Utils.toastMsg("Error: $error");
    }
  }

  Future removeUserFromTarget() async {
    try {
      Utils.showLoadingDialog('Removing...');
      await _repo.removeUserFromTarget(
        targetId: "",
        userId: "",
      ).then((response) async {
        Utils.dismissLoadingDialog();
        Utils.toastMsg("User removed successfully");
        Get.back();
      });
    } catch (error) {
      Utils.dismissLoadingDialog();
      Utils.toastMsg("Error: $error");
    }
  }

  Future deleteTarget(String targetId) async {
    try {
      Utils.showLoadingDialog('Deleting...');
      final Map<String, String> params = {
        'target_id': targetId,
      };
      await _repo.deleteTarget(params).then((response) async {
        Utils.dismissLoadingDialog();
        if (response['detail'] != null) {
          Utils.toastMsg(response['detail']);
        } else {
          Utils.toastMsg("Target deleted successfully");
        }
      });
    } catch (error) {
      Utils.dismissLoadingDialog();
      Utils.toastMsg("Error: $error");
    }
  }

}
