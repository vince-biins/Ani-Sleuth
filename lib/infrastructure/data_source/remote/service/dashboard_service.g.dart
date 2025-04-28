// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'dashboard_service.dart';

// **************************************************************************
// RetrofitGenerator
// **************************************************************************

// ignore_for_file: unnecessary_brace_in_string_interps,no_leading_underscores_for_local_identifiers,unused_element,unnecessary_string_interpolations

class _DashboardService implements DashboardService {
  _DashboardService(this._dio, {this.baseUrl, this.errorLogger});

  final Dio _dio;

  String? baseUrl;

  final ParseErrorLogger? errorLogger;

  @override
  Future<ApiSuccess<List<AnimeDto>>> getTopAnime({int? limit}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'limit': limit};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<ApiSuccess<List<AnimeDto>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/v4/top/anime',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiSuccess<List<AnimeDto>> _value;
    try {
      _value = ApiSuccess<List<AnimeDto>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                .map<AnimeDto>(
                  (i) => AnimeDto.fromJson(i as Map<String, dynamic>),
                )
                .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiSuccess<List<CharacterDto>>> getTopCharacters({int? limit}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'limit': limit};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<ApiSuccess<List<CharacterDto>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/v4/top/characters',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiSuccess<List<CharacterDto>> _value;
    try {
      _value = ApiSuccess<List<CharacterDto>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                .map<CharacterDto>(
                  (i) => CharacterDto.fromJson(i as Map<String, dynamic>),
                )
                .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiSuccess<List<GenreDto>>> getAllGenre() async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{};
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<ApiSuccess<List<GenreDto>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/v4/genres/anime',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiSuccess<List<GenreDto>> _value;
    try {
      _value = ApiSuccess<List<GenreDto>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                .map<GenreDto>(
                  (i) => GenreDto.fromJson(i as Map<String, dynamic>),
                )
                .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  @override
  Future<ApiSuccess<List<AnimeDto>>> getAllSeasonalAnime({int? limit}) async {
    final _extra = <String, dynamic>{};
    final queryParameters = <String, dynamic>{r'limit': limit};
    queryParameters.removeWhere((k, v) => v == null);
    final _headers = <String, dynamic>{};
    const Map<String, dynamic>? _data = null;
    final _options = _setStreamType<ApiSuccess<List<AnimeDto>>>(
      Options(method: 'GET', headers: _headers, extra: _extra)
          .compose(
            _dio.options,
            '/v4/seasons/now',
            queryParameters: queryParameters,
            data: _data,
          )
          .copyWith(baseUrl: _combineBaseUrls(_dio.options.baseUrl, baseUrl)),
    );
    final _result = await _dio.fetch<Map<String, dynamic>>(_options);
    late ApiSuccess<List<AnimeDto>> _value;
    try {
      _value = ApiSuccess<List<AnimeDto>>.fromJson(
        _result.data!,
        (json) => json is List<dynamic>
            ? json
                .map<AnimeDto>(
                  (i) => AnimeDto.fromJson(i as Map<String, dynamic>),
                )
                .toList()
            : List.empty(),
      );
    } on Object catch (e, s) {
      errorLogger?.logError(e, s, _options);
      rethrow;
    }
    return _value;
  }

  RequestOptions _setStreamType<T>(RequestOptions requestOptions) {
    if (T != dynamic &&
        !(requestOptions.responseType == ResponseType.bytes ||
            requestOptions.responseType == ResponseType.stream)) {
      if (T == String) {
        requestOptions.responseType = ResponseType.plain;
      } else {
        requestOptions.responseType = ResponseType.json;
      }
    }
    return requestOptions;
  }

  String _combineBaseUrls(String dioBaseUrl, String? baseUrl) {
    if (baseUrl == null || baseUrl.trim().isEmpty) {
      return dioBaseUrl;
    }

    final url = Uri.parse(baseUrl);

    if (url.isAbsolute) {
      return url.toString();
    }

    return Uri.parse(dioBaseUrl).resolveUri(url).toString();
  }
}
