// Copyright 2022 Kato Shinya. All rights reserved.
// Redistribution and use in source and binary forms, with or without
// modification, are permitted provided the conditions.

// Project imports:
import '../pagination_response.dart';
import 'bidirectional_pagination.dart';
import 'pageable.dart';
import 'pagination.dart';
import 'unidirectional_pagination.dart';

abstract class PaginationContext<D, M extends Pageable> {
  factory PaginationContext(
    final PaginationResponse<D, M> rootPage,
    final dynamic paging,
    final PageFlipper<D, M> flipper,
  ) =>
      _PaginationContext(
        rootPage,
        paging,
        flipper,
      );

  Future<void> execute();
}

class _PaginationContext<D, M extends Pageable>
    implements PaginationContext<D, M> {
  /// Returns the new instance of [_PaginationContext].
  const _PaginationContext(
    this.rootPage,
    this.paging,
    this.flipper,
  ) : assert(paging is Paging<D, M> || paging is ForwardPaging<D, M>);

  /// The root page
  final PaginationResponse<D, M> rootPage;

  /// The paging callback
  final dynamic paging;

  /// The flipper for next page.
  final PageFlipper<D, M> flipper;

  @override
  Future<void> execute() async {
    if (paging is Paging<D, M>) {
      await BidirectionalPagination<D, M>(
        rootPage,
        paging,
        flipper,
      ).execute();

      return;
    }

    await UnidirectionalPagination<D, M>(
      rootPage,
      paging,
      flipper,
    ).execute();
  }
}
