// Mocks generated by Mockito 5.4.5 from annotations
// in tdd_clean/test/features/news/bloc/news_bloc_test.dart.
// Do not manually edit this file.

// ignore_for_file: no_leading_underscores_for_library_prefixes
import 'dart:async' as _i5;

import 'package:dartz/dartz.dart' as _i3;
import 'package:mockito/mockito.dart' as _i1;
import 'package:tdd_clean/core/error/failures.dart' as _i6;
import 'package:tdd_clean/features/news/domain/get_query_news.dart' as _i4;
import 'package:tdd_clean/features/news/domain/get_country_news.dart' as _i8;
import 'package:tdd_clean/features/news/domain/news_entity.dart' as _i7;
import 'package:tdd_clean/features/news/domain/news_repo.dart' as _i2;

// ignore_for_file: type=lint
// ignore_for_file: avoid_redundant_argument_values
// ignore_for_file: avoid_setters_without_getters
// ignore_for_file: comment_references
// ignore_for_file: deprecated_member_use
// ignore_for_file: deprecated_member_use_from_same_package
// ignore_for_file: implementation_imports
// ignore_for_file: invalid_use_of_visible_for_testing_member
// ignore_for_file: must_be_immutable
// ignore_for_file: prefer_const_constructors
// ignore_for_file: unnecessary_parenthesis
// ignore_for_file: camel_case_types
// ignore_for_file: subtype_of_sealed_class

class _FakeNewsRepo_0 extends _i1.SmartFake implements _i2.NewsRepo {
  _FakeNewsRepo_0(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

class _FakeEither_1<L, R> extends _i1.SmartFake implements _i3.Either<L, R> {
  _FakeEither_1(Object parent, Invocation parentInvocation)
    : super(parent, parentInvocation);
}

/// A class which mocks [GetQueryNews].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetQueryNews extends _i1.Mock implements _i4.GetQueryNews {
  MockGetQueryNews() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.NewsRepo get repository =>
      (super.noSuchMethod(
            Invocation.getter(#repository),
            returnValue: _FakeNewsRepo_0(this, Invocation.getter(#repository)),
          )
          as _i2.NewsRepo);

  @override
  _i5.Future<_i3.Either<_i6.Failure, List<_i7.NewsEntity>>> call(
    _i4.GetQueryNewsParams? params,
  ) =>
      (super.noSuchMethod(
            Invocation.method(#call, [params]),
            returnValue:
                _i5.Future<_i3.Either<_i6.Failure, List<_i7.NewsEntity>>>.value(
                  _FakeEither_1<_i6.Failure, List<_i7.NewsEntity>>(
                    this,
                    Invocation.method(#call, [params]),
                  ),
                ),
          )
          as _i5.Future<_i3.Either<_i6.Failure, List<_i7.NewsEntity>>>);
}

/// A class which mocks [GetCountryNews].
///
/// See the documentation for Mockito's code generation for more information.
class MockGetCountryNews extends _i1.Mock implements _i8.GetCountryNews {
  MockGetCountryNews() {
    _i1.throwOnMissingStub(this);
  }

  @override
  _i2.NewsRepo get repository =>
      (super.noSuchMethod(
            Invocation.getter(#repository),
            returnValue: _FakeNewsRepo_0(this, Invocation.getter(#repository)),
          )
          as _i2.NewsRepo);

  @override
  _i5.Future<_i3.Either<_i6.Failure, List<_i7.NewsEntity>>> call(
    _i8.GetCountryNewsParams? params,
  ) =>
      (super.noSuchMethod(
            Invocation.method(#call, [params]),
            returnValue:
                _i5.Future<_i3.Either<_i6.Failure, List<_i7.NewsEntity>>>.value(
                  _FakeEither_1<_i6.Failure, List<_i7.NewsEntity>>(
                    this,
                    Invocation.method(#call, [params]),
                  ),
                ),
          )
          as _i5.Future<_i3.Either<_i6.Failure, List<_i7.NewsEntity>>>);
}
