// Mocks generated by Mockito 5.4.0 from annotations
// in flutter_gpt/test/mocks/open_ai_mocks.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i7;

import 'package:dio/dio.dart' as _i8;
import 'package:dio/src/adapter.dart' as _i3;
import 'package:dio/src/cancel_token.dart' as _i9;
import 'package:dio/src/dio_mixin.dart' as _i5;
import 'package:dio/src/options.dart' as _i2;
import 'package:dio/src/response.dart' as _i6;
import 'package:dio/src/transformer.dart' as _i4;
import 'package:flutter_gpt/src/client/open_ai_client.dart' as _i11;
import 'package:flutter_gpt/src/models/shared/configuration/open_ai_configuration.dart'
    as _i10;
import 'package:mockito/mockito.dart' as _i1;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeBaseOptions_0 extends _i1.SmartFake implements _i2.BaseOptions {
  _FakeBaseOptions_0(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeHttpClientAdapter_1 extends _i1.SmartFake
    implements _i3.HttpClientAdapter {
  _FakeHttpClientAdapter_1(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeTransformer_2 extends _i1.SmartFake implements _i4.Transformer {
  _FakeTransformer_2(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeInterceptors_3 extends _i1.SmartFake implements _i5.Interceptors {
  _FakeInterceptors_3(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeResponse_4<T> extends _i1.SmartFake implements _i6.Response<T> {
  _FakeResponse_4(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeUri_5 extends _i1.SmartFake implements Uri {
  _FakeUri_5(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeRequestOptions_6 extends _i1.SmartFake
    implements _i2.RequestOptions {
  _FakeRequestOptions_6(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

class _FakeFuture_7<T> extends _i1.SmartFake implements _i7.Future<T> {
  _FakeFuture_7(
    Object parent,
    Invocation parentInvocation,
  ) : super(
          parent,
          parentInvocation,
        );
}

/// A class which mocks [Dio].
///
/// See the documentation for Mockito's code generation for more information.
class MockDio extends _i1.Mock implements _i8.Dio {
  MockDio() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.BaseOptions get options => (super.noSuchMethod(
        Invocation.getter(#options),
        returnValue: _FakeBaseOptions_0(
          this,
          Invocation.getter(#options),
        ),
      ) as _i2.BaseOptions);
  @override
  set options(_i2.BaseOptions? _options) => super.noSuchMethod(
        Invocation.setter(
          #options,
          _options,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i3.HttpClientAdapter get httpClientAdapter => (super.noSuchMethod(
        Invocation.getter(#httpClientAdapter),
        returnValue: _FakeHttpClientAdapter_1(
          this,
          Invocation.getter(#httpClientAdapter),
        ),
      ) as _i3.HttpClientAdapter);
  @override
  set httpClientAdapter(_i3.HttpClientAdapter? _httpClientAdapter) =>
      super.noSuchMethod(
        Invocation.setter(
          #httpClientAdapter,
          _httpClientAdapter,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i4.Transformer get transformer => (super.noSuchMethod(
        Invocation.getter(#transformer),
        returnValue: _FakeTransformer_2(
          this,
          Invocation.getter(#transformer),
        ),
      ) as _i4.Transformer);
  @override
  set transformer(_i4.Transformer? _transformer) => super.noSuchMethod(
        Invocation.setter(
          #transformer,
          _transformer,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i5.Interceptors get interceptors => (super.noSuchMethod(
        Invocation.getter(#interceptors),
        returnValue: _FakeInterceptors_3(
          this,
          Invocation.getter(#interceptors),
        ),
      ) as _i5.Interceptors);
  @override
  void close({bool? force = false}) => super.noSuchMethod(
        Invocation.method(
          #close,
          [],
          {#force: force},
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i7.Future<_i6.Response<T>> get<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i2.Options? options,
    _i9.CancelToken? cancelToken,
    _i2.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #get,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i7.Future<_i6.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #get,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i7.Future<_i6.Response<T>>);
  @override
  _i7.Future<_i6.Response<T>> getUri<T>(
    Uri? uri, {
    Object? data,
    _i2.Options? options,
    _i9.CancelToken? cancelToken,
    _i2.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #getUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i7.Future<_i6.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #getUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i7.Future<_i6.Response<T>>);
  @override
  _i7.Future<_i6.Response<T>> post<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i2.Options? options,
    _i9.CancelToken? cancelToken,
    _i2.ProgressCallback? onSendProgress,
    _i2.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i7.Future<_i6.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #post,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i7.Future<_i6.Response<T>>);
  @override
  _i7.Future<_i6.Response<T>> postUri<T>(
    Uri? uri, {
    Object? data,
    _i2.Options? options,
    _i9.CancelToken? cancelToken,
    _i2.ProgressCallback? onSendProgress,
    _i2.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #postUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i7.Future<_i6.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #postUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i7.Future<_i6.Response<T>>);
  @override
  _i7.Future<_i6.Response<T>> put<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i2.Options? options,
    _i9.CancelToken? cancelToken,
    _i2.ProgressCallback? onSendProgress,
    _i2.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #put,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i7.Future<_i6.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #put,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i7.Future<_i6.Response<T>>);
  @override
  _i7.Future<_i6.Response<T>> putUri<T>(
    Uri? uri, {
    Object? data,
    _i2.Options? options,
    _i9.CancelToken? cancelToken,
    _i2.ProgressCallback? onSendProgress,
    _i2.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #putUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i7.Future<_i6.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #putUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i7.Future<_i6.Response<T>>);
  @override
  _i7.Future<_i6.Response<T>> head<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i2.Options? options,
    _i9.CancelToken? cancelToken,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #head,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
          },
        ),
        returnValue: _i7.Future<_i6.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #head,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
            },
          ),
        )),
      ) as _i7.Future<_i6.Response<T>>);
  @override
  _i7.Future<_i6.Response<T>> headUri<T>(
    Uri? uri, {
    Object? data,
    _i2.Options? options,
    _i9.CancelToken? cancelToken,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #headUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
          },
        ),
        returnValue: _i7.Future<_i6.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #headUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
            },
          ),
        )),
      ) as _i7.Future<_i6.Response<T>>);
  @override
  _i7.Future<_i6.Response<T>> delete<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i2.Options? options,
    _i9.CancelToken? cancelToken,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #delete,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
          },
        ),
        returnValue: _i7.Future<_i6.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #delete,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
            },
          ),
        )),
      ) as _i7.Future<_i6.Response<T>>);
  @override
  _i7.Future<_i6.Response<T>> deleteUri<T>(
    Uri? uri, {
    Object? data,
    _i2.Options? options,
    _i9.CancelToken? cancelToken,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #deleteUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
          },
        ),
        returnValue: _i7.Future<_i6.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #deleteUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
            },
          ),
        )),
      ) as _i7.Future<_i6.Response<T>>);
  @override
  _i7.Future<_i6.Response<T>> patch<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i2.Options? options,
    _i9.CancelToken? cancelToken,
    _i2.ProgressCallback? onSendProgress,
    _i2.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #patch,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i7.Future<_i6.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #patch,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i7.Future<_i6.Response<T>>);
  @override
  _i7.Future<_i6.Response<T>> patchUri<T>(
    Uri? uri, {
    Object? data,
    _i2.Options? options,
    _i9.CancelToken? cancelToken,
    _i2.ProgressCallback? onSendProgress,
    _i2.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #patchUri,
          [uri],
          {
            #data: data,
            #options: options,
            #cancelToken: cancelToken,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i7.Future<_i6.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #patchUri,
            [uri],
            {
              #data: data,
              #options: options,
              #cancelToken: cancelToken,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i7.Future<_i6.Response<T>>);
  @override
  _i7.Future<_i6.Response<dynamic>> download(
    String? urlPath,
    dynamic savePath, {
    _i2.ProgressCallback? onReceiveProgress,
    Map<String, dynamic>? queryParameters,
    _i9.CancelToken? cancelToken,
    bool? deleteOnError = true,
    String? lengthHeader = r'content-length',
    Object? data,
    _i2.Options? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #download,
          [
            urlPath,
            savePath,
          ],
          {
            #onReceiveProgress: onReceiveProgress,
            #queryParameters: queryParameters,
            #cancelToken: cancelToken,
            #deleteOnError: deleteOnError,
            #lengthHeader: lengthHeader,
            #data: data,
            #options: options,
          },
        ),
        returnValue:
            _i7.Future<_i6.Response<dynamic>>.value(_FakeResponse_4<dynamic>(
          this,
          Invocation.method(
            #download,
            [
              urlPath,
              savePath,
            ],
            {
              #onReceiveProgress: onReceiveProgress,
              #queryParameters: queryParameters,
              #cancelToken: cancelToken,
              #deleteOnError: deleteOnError,
              #lengthHeader: lengthHeader,
              #data: data,
              #options: options,
            },
          ),
        )),
      ) as _i7.Future<_i6.Response<dynamic>>);
  @override
  _i7.Future<_i6.Response<dynamic>> downloadUri(
    Uri? uri,
    dynamic savePath, {
    _i2.ProgressCallback? onReceiveProgress,
    _i9.CancelToken? cancelToken,
    bool? deleteOnError = true,
    String? lengthHeader = r'content-length',
    Object? data,
    _i2.Options? options,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #downloadUri,
          [
            uri,
            savePath,
          ],
          {
            #onReceiveProgress: onReceiveProgress,
            #cancelToken: cancelToken,
            #deleteOnError: deleteOnError,
            #lengthHeader: lengthHeader,
            #data: data,
            #options: options,
          },
        ),
        returnValue:
            _i7.Future<_i6.Response<dynamic>>.value(_FakeResponse_4<dynamic>(
          this,
          Invocation.method(
            #downloadUri,
            [
              uri,
              savePath,
            ],
            {
              #onReceiveProgress: onReceiveProgress,
              #cancelToken: cancelToken,
              #deleteOnError: deleteOnError,
              #lengthHeader: lengthHeader,
              #data: data,
              #options: options,
            },
          ),
        )),
      ) as _i7.Future<_i6.Response<dynamic>>);
  @override
  _i7.Future<_i6.Response<T>> request<T>(
    String? path, {
    Object? data,
    Map<String, dynamic>? queryParameters,
    _i9.CancelToken? cancelToken,
    _i2.Options? options,
    _i2.ProgressCallback? onSendProgress,
    _i2.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #request,
          [path],
          {
            #data: data,
            #queryParameters: queryParameters,
            #cancelToken: cancelToken,
            #options: options,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i7.Future<_i6.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #request,
            [path],
            {
              #data: data,
              #queryParameters: queryParameters,
              #cancelToken: cancelToken,
              #options: options,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i7.Future<_i6.Response<T>>);
  @override
  _i7.Future<_i6.Response<T>> requestUri<T>(
    Uri? uri, {
    Object? data,
    _i9.CancelToken? cancelToken,
    _i2.Options? options,
    _i2.ProgressCallback? onSendProgress,
    _i2.ProgressCallback? onReceiveProgress,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #requestUri,
          [uri],
          {
            #data: data,
            #cancelToken: cancelToken,
            #options: options,
            #onSendProgress: onSendProgress,
            #onReceiveProgress: onReceiveProgress,
          },
        ),
        returnValue: _i7.Future<_i6.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #requestUri,
            [uri],
            {
              #data: data,
              #cancelToken: cancelToken,
              #options: options,
              #onSendProgress: onSendProgress,
              #onReceiveProgress: onReceiveProgress,
            },
          ),
        )),
      ) as _i7.Future<_i6.Response<T>>);
  @override
  _i7.Future<_i6.Response<T>> fetch<T>(_i2.RequestOptions? requestOptions) =>
      (super.noSuchMethod(
        Invocation.method(
          #fetch,
          [requestOptions],
        ),
        returnValue: _i7.Future<_i6.Response<T>>.value(_FakeResponse_4<T>(
          this,
          Invocation.method(
            #fetch,
            [requestOptions],
          ),
        )),
      ) as _i7.Future<_i6.Response<T>>);
}

/// A class which mocks [RequestOptions].
///
/// See the documentation for Mockito's code generation for more information.
class MockRequestOptions extends _i1.Mock implements _i2.RequestOptions {
  MockRequestOptions() {
    _i1.throwOnMissingStub(this);
  }

  @override
  set sourceStackTrace(StackTrace? _sourceStackTrace) => super.noSuchMethod(
        Invocation.setter(
          #sourceStackTrace,
          _sourceStackTrace,
        ),
        returnValueForMissingStub: null,
      );
  @override
  set data(dynamic _data) => super.noSuchMethod(
        Invocation.setter(
          #data,
          _data,
        ),
        returnValueForMissingStub: null,
      );
  @override
  String get path => (super.noSuchMethod(
        Invocation.getter(#path),
        returnValue: '',
      ) as String);
  @override
  set path(String? _path) => super.noSuchMethod(
        Invocation.setter(
          #path,
          _path,
        ),
        returnValueForMissingStub: null,
      );
  @override
  set cancelToken(_i9.CancelToken? _cancelToken) => super.noSuchMethod(
        Invocation.setter(
          #cancelToken,
          _cancelToken,
        ),
        returnValueForMissingStub: null,
      );
  @override
  set onReceiveProgress(_i2.ProgressCallback? _onReceiveProgress) =>
      super.noSuchMethod(
        Invocation.setter(
          #onReceiveProgress,
          _onReceiveProgress,
        ),
        returnValueForMissingStub: null,
      );
  @override
  set onSendProgress(_i2.ProgressCallback? _onSendProgress) =>
      super.noSuchMethod(
        Invocation.setter(
          #onSendProgress,
          _onSendProgress,
        ),
        returnValueForMissingStub: null,
      );
  @override
  Uri get uri => (super.noSuchMethod(
        Invocation.getter(#uri),
        returnValue: _FakeUri_5(
          this,
          Invocation.getter(#uri),
        ),
      ) as Uri);
  @override
  String get method => (super.noSuchMethod(
        Invocation.getter(#method),
        returnValue: '',
      ) as String);
  @override
  set method(String? _method) => super.noSuchMethod(
        Invocation.setter(
          #method,
          _method,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i2.ResponseType get responseType => (super.noSuchMethod(
        Invocation.getter(#responseType),
        returnValue: _i2.ResponseType.json,
      ) as _i2.ResponseType);
  @override
  set responseType(_i2.ResponseType? _responseType) => super.noSuchMethod(
        Invocation.setter(
          #responseType,
          _responseType,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i2.ValidateStatus get validateStatus => (super.noSuchMethod(
        Invocation.getter(#validateStatus),
        returnValue: (int? status) => false,
      ) as _i2.ValidateStatus);
  @override
  set validateStatus(_i2.ValidateStatus? _validateStatus) => super.noSuchMethod(
        Invocation.setter(
          #validateStatus,
          _validateStatus,
        ),
        returnValueForMissingStub: null,
      );
  @override
  bool get receiveDataWhenStatusError => (super.noSuchMethod(
        Invocation.getter(#receiveDataWhenStatusError),
        returnValue: false,
      ) as bool);
  @override
  set receiveDataWhenStatusError(bool? _receiveDataWhenStatusError) =>
      super.noSuchMethod(
        Invocation.setter(
          #receiveDataWhenStatusError,
          _receiveDataWhenStatusError,
        ),
        returnValueForMissingStub: null,
      );
  @override
  Map<String, dynamic> get extra => (super.noSuchMethod(
        Invocation.getter(#extra),
        returnValue: <String, dynamic>{},
      ) as Map<String, dynamic>);
  @override
  set extra(Map<String, dynamic>? _extra) => super.noSuchMethod(
        Invocation.setter(
          #extra,
          _extra,
        ),
        returnValueForMissingStub: null,
      );
  @override
  bool get followRedirects => (super.noSuchMethod(
        Invocation.getter(#followRedirects),
        returnValue: false,
      ) as bool);
  @override
  set followRedirects(bool? _followRedirects) => super.noSuchMethod(
        Invocation.setter(
          #followRedirects,
          _followRedirects,
        ),
        returnValueForMissingStub: null,
      );
  @override
  int get maxRedirects => (super.noSuchMethod(
        Invocation.getter(#maxRedirects),
        returnValue: 0,
      ) as int);
  @override
  set maxRedirects(int? _maxRedirects) => super.noSuchMethod(
        Invocation.setter(
          #maxRedirects,
          _maxRedirects,
        ),
        returnValueForMissingStub: null,
      );
  @override
  bool get persistentConnection => (super.noSuchMethod(
        Invocation.getter(#persistentConnection),
        returnValue: false,
      ) as bool);
  @override
  set persistentConnection(bool? _persistentConnection) => super.noSuchMethod(
        Invocation.setter(
          #persistentConnection,
          _persistentConnection,
        ),
        returnValueForMissingStub: null,
      );
  @override
  set requestEncoder(_i2.RequestEncoder? _requestEncoder) => super.noSuchMethod(
        Invocation.setter(
          #requestEncoder,
          _requestEncoder,
        ),
        returnValueForMissingStub: null,
      );
  @override
  set responseDecoder(_i2.ResponseDecoder? _responseDecoder) =>
      super.noSuchMethod(
        Invocation.setter(
          #responseDecoder,
          _responseDecoder,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i2.ListFormat get listFormat => (super.noSuchMethod(
        Invocation.getter(#listFormat),
        returnValue: _i2.ListFormat.csv,
      ) as _i2.ListFormat);
  @override
  set listFormat(_i2.ListFormat? _listFormat) => super.noSuchMethod(
        Invocation.setter(
          #listFormat,
          _listFormat,
        ),
        returnValueForMissingStub: null,
      );
  @override
  Map<String, dynamic> get headers => (super.noSuchMethod(
        Invocation.getter(#headers),
        returnValue: <String, dynamic>{},
      ) as Map<String, dynamic>);
  @override
  set headers(Map<String, dynamic>? headers) => super.noSuchMethod(
        Invocation.setter(
          #headers,
          headers,
        ),
        returnValueForMissingStub: null,
      );
  @override
  set sendTimeout(Duration? value) => super.noSuchMethod(
        Invocation.setter(
          #sendTimeout,
          value,
        ),
        returnValueForMissingStub: null,
      );
  @override
  set receiveTimeout(Duration? value) => super.noSuchMethod(
        Invocation.setter(
          #receiveTimeout,
          value,
        ),
        returnValueForMissingStub: null,
      );
  @override
  set contentType(String? contentType) => super.noSuchMethod(
        Invocation.setter(
          #contentType,
          contentType,
        ),
        returnValueForMissingStub: null,
      );
  @override
  String get baseUrl => (super.noSuchMethod(
        Invocation.getter(#baseUrl),
        returnValue: '',
      ) as String);
  @override
  set baseUrl(String? _baseUrl) => super.noSuchMethod(
        Invocation.setter(
          #baseUrl,
          _baseUrl,
        ),
        returnValueForMissingStub: null,
      );
  @override
  Map<String, dynamic> get queryParameters => (super.noSuchMethod(
        Invocation.getter(#queryParameters),
        returnValue: <String, dynamic>{},
      ) as Map<String, dynamic>);
  @override
  set queryParameters(Map<String, dynamic>? _queryParameters) =>
      super.noSuchMethod(
        Invocation.setter(
          #queryParameters,
          _queryParameters,
        ),
        returnValueForMissingStub: null,
      );
  @override
  set connectTimeout(Duration? value) => super.noSuchMethod(
        Invocation.setter(
          #connectTimeout,
          value,
        ),
        returnValueForMissingStub: null,
      );
  @override
  _i2.RequestOptions copyWith({
    String? method,
    Duration? sendTimeout,
    Duration? receiveTimeout,
    Duration? connectTimeout,
    dynamic data,
    String? path,
    Map<String, dynamic>? queryParameters,
    String? baseUrl,
    _i2.ProgressCallback? onReceiveProgress,
    _i2.ProgressCallback? onSendProgress,
    _i9.CancelToken? cancelToken,
    Map<String, dynamic>? extra,
    Map<String, dynamic>? headers,
    _i2.ResponseType? responseType,
    String? contentType,
    _i2.ValidateStatus? validateStatus,
    bool? receiveDataWhenStatusError,
    bool? followRedirects,
    int? maxRedirects,
    bool? persistentConnection,
    _i2.RequestEncoder? requestEncoder,
    _i2.ResponseDecoder? responseDecoder,
    _i2.ListFormat? listFormat,
    bool? setRequestContentTypeWhenNoPayload,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #copyWith,
          [],
          {
            #method: method,
            #sendTimeout: sendTimeout,
            #receiveTimeout: receiveTimeout,
            #connectTimeout: connectTimeout,
            #data: data,
            #path: path,
            #queryParameters: queryParameters,
            #baseUrl: baseUrl,
            #onReceiveProgress: onReceiveProgress,
            #onSendProgress: onSendProgress,
            #cancelToken: cancelToken,
            #extra: extra,
            #headers: headers,
            #responseType: responseType,
            #contentType: contentType,
            #validateStatus: validateStatus,
            #receiveDataWhenStatusError: receiveDataWhenStatusError,
            #followRedirects: followRedirects,
            #maxRedirects: maxRedirects,
            #persistentConnection: persistentConnection,
            #requestEncoder: requestEncoder,
            #responseDecoder: responseDecoder,
            #listFormat: listFormat,
            #setRequestContentTypeWhenNoPayload:
                setRequestContentTypeWhenNoPayload,
          },
        ),
        returnValue: _FakeRequestOptions_6(
          this,
          Invocation.method(
            #copyWith,
            [],
            {
              #method: method,
              #sendTimeout: sendTimeout,
              #receiveTimeout: receiveTimeout,
              #connectTimeout: connectTimeout,
              #data: data,
              #path: path,
              #queryParameters: queryParameters,
              #baseUrl: baseUrl,
              #onReceiveProgress: onReceiveProgress,
              #onSendProgress: onSendProgress,
              #cancelToken: cancelToken,
              #extra: extra,
              #headers: headers,
              #responseType: responseType,
              #contentType: contentType,
              #validateStatus: validateStatus,
              #receiveDataWhenStatusError: receiveDataWhenStatusError,
              #followRedirects: followRedirects,
              #maxRedirects: maxRedirects,
              #persistentConnection: persistentConnection,
              #requestEncoder: requestEncoder,
              #responseDecoder: responseDecoder,
              #listFormat: listFormat,
              #setRequestContentTypeWhenNoPayload:
                  setRequestContentTypeWhenNoPayload,
            },
          ),
        ),
      ) as _i2.RequestOptions);
}

/// A class which mocks [OpenAIConfiguration].
///
/// See the documentation for Mockito's code generation for more information.
class MockOpenAIConfiguration extends _i1.Mock
    implements _i10.OpenAIConfiguration {
  MockOpenAIConfiguration() {
    _i1.throwOnMissingStub(this);
  }

  @override
  String get apiKey => (super.noSuchMethod(
        Invocation.getter(#apiKey),
        returnValue: '',
      ) as String);
}

/// A class which mocks [OpenAIClient].
///
/// See the documentation for Mockito's code generation for more information.
class MockOpenAIClient extends _i1.Mock implements _i11.OpenAIClient {
  MockOpenAIClient() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i7.Future<T> post<T>(
    String? url,
    Map<String, dynamic>? request,
    T Function(Map<String, dynamic>)? onSuccess,
  ) =>
      (super.noSuchMethod(
        Invocation.method(
          #post,
          [
            url,
            request,
            onSuccess,
          ],
        ),
        returnValue: _FakeFuture_7<T>(
          this,
          Invocation.method(
            #post,
            [
              url,
              request,
              onSuccess,
            ],
          ),
        ),
      ) as _i7.Future<T>);
  @override
  _i7.Stream<T> postStream<T>(
    String? url,
    Map<String, dynamic>? request,
    T Function(Map<String, dynamic>)? onSuccess, {
    Duration? debounce = Duration.zero,
  }) =>
      (super.noSuchMethod(
        Invocation.method(
          #postStream,
          [
            url,
            request,
            onSuccess,
          ],
          {#debounce: debounce},
        ),
        returnValue: _i7.Stream<T>.empty(),
      ) as _i7.Stream<T>);
}
