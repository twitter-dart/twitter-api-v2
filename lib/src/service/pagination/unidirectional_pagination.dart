// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Dart imports:
import 'dart:async';

// Project imports:
import '../pagination_response.dart';
import 'pageable.dart';
import 'pagination.dart';

typedef ForwardPaging<D, M extends Pageable> = dynamic Function(
  PaginationResponse<D, M> response,
);

/// This class is an object representing unidirectional paging.
class UnidirectionalPagination<D, M extends Pageable> extends Pagination<D, M> {
  /// Returns the new instance of [UnidirectionalPagination].
  const UnidirectionalPagination(
    super.rootPage, {
    required this.onPaging,
    required this.flipper,
  });

  /// The paging callback
  final ForwardPaging<D, M> onPaging;

  /// The flipper for next page.
  final PageFlipper<D, M> flipper;

  @override
  Future<void> execute() async {
    var thisPage = rootPage;
    var direction = await onPaging.call(rootPage);

    do {
      //! Do not edit map directly.
      final newQueryParameters = Map<String, dynamic>.from(
        rootPage.queryParameters,
      );

      final nextToken = thisPage.meta!.nextToken;
      if (nextToken?.isEmpty ?? true) {
        //! There is no next page.
        break;
      }

      newQueryParameters['next_token'] = nextToken;

      thisPage = await flipper.call(
        rootPage.unencodedPath,
        newQueryParameters,
      );

      await onPaging.call(thisPage);
    } while (direction != null);
  }
}
