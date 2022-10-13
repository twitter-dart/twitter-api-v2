// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Dart imports:
import 'dart:async';

// Project imports:
import '../pagination_response.dart';
import 'pageable.dart';
import 'pagination.dart';
import 'paging_direction.dart';

typedef Paging<D, M extends Pageable> = FutureOr<PagingDirection>? Function(
  PaginationResponse<D, M> response,
);

/// This class is an object representing bidirectional
/// (Forward, Backward) paging.
class BidirectionalPagination<D, M extends Pageable> extends Pagination<D, M> {
  /// Returns the new instance of [BidirectionalPagination].
  const BidirectionalPagination(
    super.rootPage, {
    required this.onPaging,
    required this.flipper,
  });

  /// The paging callback
  final Paging<D, M> onPaging;

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

      if (direction == PagingDirection.forward) {
        _updatePaginationToken(
          newQueryParameters,
          thisPage.meta!.nextToken,
        );
      } else {
        _updatePaginationToken(
          newQueryParameters,
          thisPage.meta!.previousToken,
        );
      }

      thisPage = await flipper.call(
        rootPage.unencodedPath,
        newQueryParameters,
      );

      direction = await onPaging.call(thisPage);
    } while (direction != null);
  }

  /// Update pagination token based on [nextToken].
  ///
  /// Also it returns true if there is a next page, otherwise false.
  bool _updatePaginationToken(
    final Map<String, dynamic> queryParameters,
    final String? nextToken,
  ) {
    if (nextToken?.isEmpty ?? true) {
      //! There is no next (or previous) page.
      return false;
    }

    queryParameters['pagination_token'] = nextToken;

    return true;
  }
}
