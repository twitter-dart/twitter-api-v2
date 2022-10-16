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
    final dynamic onPaging,
    final PageFlipper<D, M> flipper,
  ) =>
      _PaginationContext(
        rootPage,
        onPaging,
        flipper,
      );

  Future<void> execute();
}

class _PaginationContext<D, M extends Pageable>
    implements PaginationContext<D, M> {
  /// Returns the new instance of [_PaginationContext].
  const _PaginationContext(
    this.rootPage,
    this.onPaging,
    this.flipper,
  ) : assert(onPaging is Paging<D, M> || onPaging is ForwardPaging<D, M>);

  /// The root page
  final PaginationResponse<D, M> rootPage;

  /// The paging callback
  final dynamic onPaging;

  /// The flipper for next page.
  final PageFlipper<D, M> flipper;

  @override
  Future<void> execute() async {
    if (onPaging is Paging<D, M>) {
      await BidirectionalPagination<D, M>(
        rootPage,
        onPaging,
        flipper,
      ).execute();

      return;
    }

    await UnidirectionalPagination<D, M>(
      rootPage,
      onPaging,
      flipper,
    ).execute();
  }
}
