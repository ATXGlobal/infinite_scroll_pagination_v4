import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';
import 'package:infinite_scroll_pagination_v4/infinite_scroll_pagination_v4.dart';
import 'package:mockito/mockito.dart';

import 'utils/paging_controller_utils.dart';
import 'utils/screen_size_utils.dart';

double get _itemHeight => (screenSize.height / pageSize) * 2;

void main() {
  group('Page requests', () {
    late MockPageRequestListener mockPageRequestListener;

    setUp(() {
      mockPageRequestListener = MockPageRequestListener();
    });

    testWidgets('Requests first page only once', (tester) async {
      final pagingController = PagingController<int, String>(
        firstPageKey: 1,
      );

      pagingController.addPageRequestListener(mockPageRequestListener.call);

      await _pumpPagedStaggeredGridView(
        tester: tester,
        pagingController: pagingController,
      );

      verify(mockPageRequestListener(1)).called(1);
    });

    testWidgets(
        'Requests second page immediately if the first page isn\'t enough',
        (tester) async {
      tester.applyPreferredTestScreenSize();

      final controllerLoadedWithFirstPage =
          buildPagingControllerWithPopulatedState(
        PopulatedStateOption.ongoingWithOnePage,
      );

      controllerLoadedWithFirstPage.addPageRequestListener(
        mockPageRequestListener.call,
      );

      await _pumpPagedStaggeredGridView(
        tester: tester,
        pagingController: controllerLoadedWithFirstPage,
      );

      verify(mockPageRequestListener(2)).called(1);
    });

    testWidgets('Doesn\'t request a page unnecessarily', (tester) async {
      tester.applyPreferredTestScreenSize();

      final pagingController = buildPagingControllerWithPopulatedState(
        PopulatedStateOption.ongoingWithTwoPages,
      );
      pagingController.addPageRequestListener(mockPageRequestListener.call);

      await _pumpPagedStaggeredGridView(
        tester: tester,
        pagingController: pagingController,
      );

      verifyZeroInteractions(mockPageRequestListener);
    });

    testWidgets('Requests a new page on scroll', (tester) async {
      tester.applyPreferredTestScreenSize();

      final pagingController = buildPagingControllerWithPopulatedState(
        PopulatedStateOption.ongoingWithTwoPages,
      );
      pagingController.addPageRequestListener(mockPageRequestListener.call);

      await _pumpPagedStaggeredGridView(
        tester: tester,
        pagingController: pagingController,
      );

      await tester.scrollUntilVisible(
        find.text(
          secondPageItemList[5],
        ),
        _itemHeight,
      );

      verify(mockPageRequestListener(3)).called(1);
    });

    group('Displays indicators as grid children', () {
      testWidgets('Appends the new page progress indicator to the grid items',
          (tester) async {
        tester.applyPreferredTestScreenSize();

        final pagingController = buildPagingControllerWithPopulatedState(
          PopulatedStateOption.ongoingWithOnePage,
        );

        final customIndicatorKey = UniqueKey();
        final customNewPageProgressIndicator = CircularProgressIndicator(
          key: customIndicatorKey,
        );

        await _pumpPagedStaggeredGridView(
          tester: tester,
          pagingController: pagingController,
          newPageProgressIndicator: customNewPageProgressIndicator,
          crossAxisCount: 2,
        );

        await tester.scrollUntilVisible(
          find.byKey(customIndicatorKey),
          _itemHeight,
        );

        expectWidgetToHaveHalfOfTheScreenWidth(
          customIndicatorKey,
          tester,
        );
      });

      testWidgets('Appends the new page error indicator to the grid items',
          (tester) async {
        tester.applyPreferredTestScreenSize();

        final pagingController = buildPagingControllerWithPopulatedState(
          PopulatedStateOption.errorOnSecondPage,
        );

        final customIndicatorKey = UniqueKey();
        final customNewPageErrorIndicator = Text(
          'Error',
          key: customIndicatorKey,
        );

        await _pumpPagedStaggeredGridView(
          tester: tester,
          pagingController: pagingController,
          newPageErrorIndicator: customNewPageErrorIndicator,
          crossAxisCount: 2,
        );

        await tester.scrollUntilVisible(
          find.byKey(customIndicatorKey),
          _itemHeight,
        );

        expectWidgetToHaveHalfOfTheScreenWidth(
          customIndicatorKey,
          tester,
        );
      });

      testWidgets('Appends the no more items indicator to the grid items',
          (tester) async {
        tester.applyPreferredTestScreenSize();

        final pagingController = buildPagingControllerWithPopulatedState(
          PopulatedStateOption.completedWithOnePage,
        );

        final customIndicatorKey = UniqueKey();
        final customNoMoreItemsIndicator = Text(
          'No More Items',
          key: customIndicatorKey,
        );

        await _pumpPagedStaggeredGridView(
          tester: tester,
          pagingController: pagingController,
          noMoreItemsIndicator: customNoMoreItemsIndicator,
          crossAxisCount: 2,
        );

        await tester.scrollUntilVisible(
          find.byKey(customIndicatorKey),
          _itemHeight,
        );

        expectWidgetToHaveHalfOfTheScreenWidth(
          customIndicatorKey,
          tester,
        );
      });
    });
  });
}

class MockPageRequestListener extends Mock {
  void call(int pageKey);
}

Future<void> _pumpPagedStaggeredGridView({
  required WidgetTester tester,
  required PagingController<int, String> pagingController,
  int crossAxisCount = 2,
  Widget? newPageProgressIndicator,
  Widget? newPageErrorIndicator,
  Widget? noMoreItemsIndicator,
}) =>
    tester.pumpWidget(
      MaterialApp(
        home: Scaffold(
          body: PagedMasonryGridView.count(
            pagingController: pagingController,
            builderDelegate: PagedChildBuilderDelegate<String>(
              itemBuilder: _buildItem,
              newPageProgressIndicatorBuilder: newPageProgressIndicator != null
                  ? (context) => newPageProgressIndicator
                  : null,
              newPageErrorIndicatorBuilder: newPageErrorIndicator != null
                  ? (context) => newPageErrorIndicator
                  : null,
              noMoreItemsIndicatorBuilder: noMoreItemsIndicator != null
                  ? (context) => noMoreItemsIndicator
                  : null,
            ),
            crossAxisCount: 2,
          ),
        ),
      ),
    );

Widget _buildItem(
  BuildContext context,
  String item,
  int index,
) =>
    SizedBox(
      height: _itemHeight,
      child: Text(
        item,
      ),
    );
