import 'dart:convert';

import 'package:figma/figma.dart';
import 'package:figma/src/query.dart';
import 'package:http/http.dart';

const base = 'api.figma.com';

class FigmaClient {
  /// The personal access token for the Figma Account to be used
  final String accessToken;

  /// Specifies the Figma API version to be used. Should only be
  /// specified if package is not updated with a new API release.
  final String apiVersion;

  FigmaClient(this.accessToken, [this.apiVersion = 'v1']);

  Future<FileResponse> getFile(String key, [FigmaQuery query]) async {
    return await _getFigma('/files/$key', query)
        .then((data) => FileResponse.fromJson(data));
  }

  /// Gets the file nodes specified
  Future<NodesResponse> getFileNodes(String key, FigmaQuery query) async =>
      await _getFigma('/files/$key/nodes', query)
          .then((data) => NodesResponse.fromJson(data));

  Future<ImageResponse> getImages(String key, FigmaQuery query) async =>
      await _getFigma('/images/$key', query)
          .then((data) => ImageResponse.fromJson(data));

  Future<ImageResponse> getImageFills(String key) async =>
      await _getFigma('/files/$key/images')
          .then((data) => ImageResponse.fromJson(data));

  Future<List<Comment>> getComments(String key) async =>
      await _getFigma('/files/$key/comments')
          .then((data) => CommentsResponse.fromJson(data).comments);

  Future<Comment> postComment(String key, PostComment comment) async =>
      await _postFigma('/files/$key/comments', jsonEncode(comment))
          .then((data) => Comment.fromJson(data));

  Future<void> deleteComment(String key, String id) async =>
      await _deleteFigma('/files/$key/comments/$id');

  Future<User> getMe() async =>
      await _getFigma('/me').then((data) => User.fromJson(data));

  Future<List<Version>> getFileVersions(String key) async =>
      await _getFigma('/files/$key/versions')
          .then((data) => VersionsResponse.fromJson(data).versions);

  Future<TeamProjectsResponse> getTeamProjects(String team) async =>
      await _getFigma('/teams/$team/projects')
          .then((data) => TeamProjectsResponse.fromJson(data));

  Future<ProjectFilesResponse> getProjectFiles(String project) async =>
      _getFigma('/projects/$project/files')
          .then((data) => ProjectFilesResponse.fromJson(data));

  Future<ComponentsResponse> getTeamComponents(String team,
          [FigmaQuery query]) async =>
      _getFigma('/teams/$team/components', query)
          .then((data) => ComponentsResponse.fromJson(data));

  Future<ComponentsResponse> getFileComponents(String key,
          [FigmaQuery query]) async =>
      _getFigma('/files/$key/components', query)
          .then((data) => ComponentsResponse.fromJson(data));

  Future<ComponentResponse> getComponent(String key) async =>
      _getFigma('/components/$key')
          .then((data) => ComponentResponse.fromJson(data));

  Future<StylesResponse> getTeamStyles(String team, [FigmaQuery query]) async =>
      _getFigma('/teams/$team/styles', query)
          .then((data) => StylesResponse.fromJson(data));

  Future<StylesResponse> getFileStyles(String key, [FigmaQuery query]) async =>
      _getFigma('/files/$key/styles', query)
          .then((data) => StylesResponse.fromJson(data));

  Future<StyleResponse> getStyle(String key) async =>
      _getFigma('/styles/$key').then((data) => StyleResponse.fromJson(data));

  Future<Map<String, dynamic>> _getFigma(String path,
      [FigmaQuery query]) async {
    final uri = Uri.https(base, '$apiVersion$path', query?.params);

    return await get(uri.toString(), headers: _authHeaders).then((res) {
      if (res.statusCode >= 200 && res.statusCode < 300) {
        return jsonDecode(res.body);
      } else {
        throw FigmaError(code: res.statusCode, message: res.body);
      }
    });
  }

  Future<dynamic> _postFigma(String path, String body) async {
    final uri = Uri.https(base, '$apiVersion$path');

    return await post(uri.toString(), body: body, headers: _authHeaders)
        .then((res) {
      if (res.statusCode >= 200 && res.statusCode < 300) {
        return jsonDecode(res.body);
      } else {
        throw FigmaError(code: res.statusCode, message: res.body);
      }
    });
  }

  Future<dynamic> _deleteFigma(String path) async {
    final uri = Uri.https(base, '$apiVersion$path');

    return await delete(uri.toString(), headers: _authHeaders).then((res) {
      if (res.statusCode >= 200 && res.statusCode < 300) {
        return;
      } else {
        throw FigmaError(code: res.statusCode, message: res.body);
      }
    });
  }

  Map<String, String> get _authHeaders =>
      {'X-Figma-Token': accessToken, 'Content-Type': 'application/json'};
}

class FigmaError extends Error {
  final int code;
  final String message;

  FigmaError({this.code, this.message});

  @override
  String toString() => '{code: $code, message: $message}';
}
