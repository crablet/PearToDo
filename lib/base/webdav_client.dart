import 'package:flutter/foundation.dart';
import 'package:pear_todo/base/network_file_interface.dart';
import 'package:webdav_client/webdav_client.dart';

class WebDavClient implements NetworkFileInterface {
  WebDavClient({
    required this.webDavServerAddress,
    required this.userName,
    required this.password,
  }) {
    client = newClient(
      webDavServerAddress,
      user: userName,
      password: password,
      debug: kDebugMode,
    )
      // Set the public request headers
      ..setHeaders({'accept-charset': 'utf-8'})
      // Set the connection server timeout time in milliseconds.
      ..setConnectTimeout(5253)
      // Set send data timeout time in milliseconds.
      ..setSendTimeout(5253)
      // Set transfer data time in milliseconds.
      ..setReceiveTimeout(9999);
  }

  final String webDavServerAddress;
  final String userName;
  final String password;
  late final Client client;

  @override
  Future<bool> deleteFile(String path) async {
    try {
      await client.remove(path);

      return true;
    } catch (e) {
      debugPrint("[deleteFile] e = $e");

      return false;
    }
  }

  @override
  Future<bool> deleteFiles() async {
    try {
      await client.removeAll("");

      return true;
    } catch (e) {
      debugPrint("[deleteFiles] e = $e");

      return false;
    }
  }

  @override
  Future<bool> downloadFile(String path) async {
    try {
      await client.read2File(path, path);

      return true;
    } catch (e) {
      debugPrint("[downloadFile] e = $e");

      return false;
    }
  }

  @override
  Future<bool> downloadFiles() async {
    try {
      // todo: download all remote pear-todo files to local

      return true;
    } catch (e) {
      debugPrint("[downloadFiles] e = $e");

      return false;
    }
  }

  @override
  Future<bool> renameFile(String oldName, String newName) async {
    try {
      return true;
    } catch (e) {
      debugPrint("[renameFile] e = $e");

      return false;
    }
  }

  @override
  Future<bool> uploadFile(String path, String content) async {
    try {
      // convert content to Uint8List
      final contentBytes = content.codeUnits;
      final data = Uint8List.fromList(contentBytes);
      await client.write(path, data);

      return true;
    } catch (e) {
      debugPrint("[uploadFile] e = $e");

      return false;
    }
  }

  @override
  Future<bool> uploadFiles() async {
    try {
      // todo: upload all local pear-todo files to remote

      return true;
    } catch (e) {
      debugPrint("[uploadFiles] e = $e");

      return false;
    }
  }

  Future<void> testConnection() async {
    try {
      await client.ping();
    } catch (e) {
      debugPrint("[testConnection] e = $e");
    }
  }
}
