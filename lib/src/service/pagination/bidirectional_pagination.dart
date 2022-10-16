// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Dart imports:
import 'dart:async';

// Project imports:
import '../pagination_response.dart';
import 'pageable.dart';
import 'pagination.dart';
import 'paging_control.dart';
import 'paging_event.dart';

typedef Paging<D, M extends Pageable> = FutureOr<PagingControl> Function(
  PagingEvent<D, M> event,
);

/// This class is an object representing bidirectional
/// (Forward, Backward) paging.
class BidirectionalPagination<D, M extends Pageable> extends Pagination<D, M> {
  /// Returns the new instance of [BidirectionalPagination].
  const BidirectionalPagination(
    super.rootPage,
    this.onPaging,
    super.flipper,
  );

  /// The paging callback
  final Paging<D, M> onPaging;

  @override
  Future<void> execute() async {
    PaginationResponse<D, M> thisPage = rootPage;
    int count = 1;

    PagingControl control = await onPaging.call(
      PagingEvent<D, M>(count, thisPage),
    );

    do {
      //! Do not edit map directly.
      final newQueryParameters = Map<String, dynamic>.from(
        thisPage.queryParameters,
      );

      if (!_updatePaginationToken(
        newQueryParameters,
        control == PagingControl.forward
            ? thisPage.meta!.nextToken
            : thisPage.meta!.previousToken,
      )) {
        //! There is no more next page.
        break;
      }

      thisPage = await flipper.call(
        thisPage.unencodedPath,
        newQueryParameters,
      );

      control = await onPaging.call(
        PagingEvent<D, M>(++count, thisPage),
      );
    } while (control != PagingControl.stop);
  }

  /// Update pagination token based on [nextToken].
  ///
  /// Also it returns true if there is a next page, otherwise false.
  bool _updatePaginationToken(
    final Map<String, dynamic> queryParameters,
    final String? nextToken,
  ) {
    if (nextToken?.isEmpty ?? true) {
      //! There is no more next (or previous) page.
      return false;
    }

    queryParameters['pagination_token'] = nextToken;

    return true;
  }
}
