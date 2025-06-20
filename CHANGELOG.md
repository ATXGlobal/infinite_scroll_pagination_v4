## 4.1.0 - 2024-11-09
### Added
- [PagedSliverMasonryGrid](https://pub.dev/documentation/infinite_scroll_pagination_v4/latest/infinite_scroll_pagination_v4/PagedSliverMasonryGrid-class.html).

### Changed
- Updates example.

### Removed
- `pubspec.lock` from version control.

## [4.0.0] - 2023-08-17
### Added
- [PagedMasonryGridView](https://pub.dev/documentation/infinite_scroll_pagination_v4/4.0.0/infinite_scroll_pagination_v4/PagedMasonryGridView-class.html).
- [PagedPageView](https://pub.dev/documentation/infinite_scroll_pagination_v4/4.0.0/infinite_scroll_pagination_v4/PagedPageView-class.html).
- Support for the box protocol in [PagedLayoutBuilder](https://pub.dev/documentation/infinite_scroll_pagination_v4/4.0.0/infinite_scroll_pagination_v4/PagedLayoutBuilder-class.html).

### Changed
- Renames `PagedSliverBuilder` to [PagedLayoutBuilder](https://pub.dev/documentation/infinite_scroll_pagination_v4/4.0.0/infinite_scroll_pagination_v4/PagedLayoutBuilder-class.html).

## [3.2.0] - 2022-05-23
### Changed
- Migrates to Flutter 3.

## [3.1.0] - 2021-07-04
### Added
- [animated status transitions](https://pub.dev/packages/infinite_scroll_pagination_v4/example#animating-status-transitions).

## [3.0.1+1] - 2021-05-23
### Added
- [Flutter Favorite](https://flutter.dev/docs/development/packages-and-plugins/favorites) status to the README.

## [3.0.1] - 2021-03-08
### Added
- New unit tests.

### Changed
- Updates [sliver\_tools](https://pub.dev/packages/sliver_tools) dependency.

### Fixed
- Code formatting in `ListenableListener`.

## [3.0.0] - 2021-03-04
### Changed
- Promotes null safety to stable release.
- Migrates example project to null safety.
- Migrates code samples to null safety.

## [3.0.0-nullsafety.0] - 2021-02-06
### Changed
- Migrates to null safety.

## [2.3.0] - 2021-01-15
### Added
- [alternative constructor](https://pub.dev/documentation/infinite_scroll_pagination_v4/latest/infinite_scroll_pagination_v4/PagingController/PagingController.fromValue.html) to [PagingController](https://pub.dev/documentation/infinite_scroll_pagination_v4/latest/infinite_scroll_pagination_v4/PagingController-class.html) receiving an initial [PagingState](https://pub.dev/documentation/infinite_scroll_pagination_v4/latest/infinite_scroll_pagination_v4/PagingState-class.html).

### Changed
- Cookbook file name.
- LICENSE file.

## [2.2.4] - 2021-01-08
### Fixed
- New page requests happening before the end of the current frame.

## [2.2.3] - 2020-12-14
### Fixed
- Bug in which manually resetting to a previous page would stop requesting subsequent pages.

## [2.2.2] - 2020-11-04
### Added
- Condition to avoid requesting the first page when there are preloaded items.

## [2.2.1] - 2020-10-21
### Added
- `shrinkWrapFirstPageIndicators` property to [PagedSliverList](https://pub.dev/documentation/infinite_scroll_pagination_v4/latest/infinite_scroll_pagination_v4/PagedSliverList-class.html), [PagedSliverGrid](https://pub.dev/documentation/infinite_scroll_pagination_v4/latest/infinite_scroll_pagination_v4/PagedSliverGrid-class.html), and [PagedSliverBuilder](https://pub.dev/documentation/infinite_scroll_pagination_v4/latest/infinite_scroll_pagination_v4/PagedSliverBuilder-class.html).

### Changed
- Improve error message displayed when calling a disposed [PagingController](https://pub.dev/documentation/infinite_scroll_pagination_v4/latest/infinite_scroll_pagination_v4/PagingController-class.html).

### Fixed
- Separator being displayed on completed lists.

## [2.2.0+1] - 2020-10-19
### Changed
- Constraints the Flutter SDK dependency to a minimum version of 1.22.0.

## [2.2.0] - 2020-10-18
### Added
- New constructor parameters from [ScrollView](https://api.flutter.dev/flutter/widgets/ScrollView-class.html) to [PagedListView](https://pub.dev/documentation/infinite_scroll_pagination_v4/latest/infinite_scroll_pagination_v4/PagedListView-class.html) and [PagedGridView](https://pub.dev/documentation/infinite_scroll_pagination_v4/latest/infinite_scroll_pagination_v4/PagedGridView-class.html).

## [2.1.0+1] - 2020-10-13
### Added
- Link to [raywenderlich.com tutorial](https://www.raywenderlich.com/265121/infinite-scrolling-pagination-in-flutter).

### Changed
- Examples to async/await.

## [2.1.0] - 2020-10-10
### Added
- [noMoreItemsIndicatorBuilder](https://pub.dev/documentation/infinite_scroll_pagination_v4/latest/infinite_scroll_pagination_v4/PagedChildBuilderDelegate/noMoreItemsIndicatorBuilder.html) to [PagedChildBuilderDelegate](https://pub.dev/documentation/infinite_scroll_pagination_v4/latest/infinite_scroll_pagination_v4/PagedChildBuilderDelegate-class.html).
- Properties to both grid widgets to let you choose whether to display the progress, error, and completed listing indicators as grid items or below the grid, as in the list widgets.

## [2.0.1] - 2020-10-03
### Fixed
- [PagingController](https://pub.dev/documentation/infinite_scroll_pagination_v4/latest/infinite_scroll_pagination_v4/PagingController-class.html) not calling its status listeners.

## [2.0.0] - 2020-10-02
### Changed
- **BREAKING CHANGE**: Replaces [PagedDataSource](https://pub.dev/documentation/infinite_scroll_pagination_v4/1.1.1/infinite_scroll_pagination_v4/PagedDataSource-class.html) and [PagedStateChangeListener](https://pub.dev/documentation/infinite_scroll_pagination_v4/1.1.1/infinite_scroll_pagination_v4/PagedStateChangeListener-class.html) with [PagingController](https://pub.dev/documentation/infinite_scroll_pagination_v4/latest/infinite_scroll_pagination_v4/PagingController-class.html), favoring composition over inheritance.

## [1.1.1] - 2020-09-23
### Removed
- Scroll from first page progress indicator, first page error indicator, and no items found indicator.

## [1.1.0] - 2020-09-18
### Added
- [PagedStateChangeListener](https://pub.dev/documentation/infinite_scroll_pagination_v4/1.1.0/infinite_scroll_pagination_v4/PagedStateChangeListener-class.html).

## [1.0.0+2] - 2020-08-22
### Added
- Documentation to `PagedDataSource` properties.

### Changed
- README images reference URL.

## [1.0.0+1] - 2020-08-22
### Added
- Images to README.md.
- Initial release.

[4.0.0]: https://github.com/EdsonBueno/infinite_scroll_pagination_v4/compare/3.2.0..4.0.0
[3.2.0]: https://github.com/EdsonBueno/infinite_scroll_pagination_v4/compare/3.1.0..3.2.0
[3.1.0]: https://github.com/EdsonBueno/infinite_scroll_pagination_v4/compare/3.0.1+1..3.1.0
[3.0.1+1]: https://github.com/EdsonBueno/infinite_scroll_pagination_v4/compare/3.0.1..3.0.1+1
[3.0.1]: https://github.com/EdsonBueno/infinite_scroll_pagination_v4/compare/3.0.0..3.0.1
[3.0.0]: https://github.com/EdsonBueno/infinite_scroll_pagination_v4/compare/3.0.0-nullsafety.0..3.0.0
[3.0.0-nullsafety.0]: https://github.com/EdsonBueno/infinite_scroll_pagination_v4/compare/2.3.0..3.0.0-nullsafety.0
[2.3.0]: https://github.com/EdsonBueno/infinite_scroll_pagination_v4/compare/2.2.4..2.3.0
[2.2.4]: https://github.com/EdsonBueno/infinite_scroll_pagination_v4/compare/2.2.3..2.2.4
[2.2.3]: https://github.com/EdsonBueno/infinite_scroll_pagination_v4/compare/2.2.2..2.2.3
[2.2.2]: https://github.com/EdsonBueno/infinite_scroll_pagination_v4/compare/2.2.1..2.2.2
[2.2.1]: https://github.com/EdsonBueno/infinite_scroll_pagination_v4/compare/2.2.0+1..2.2.1
[2.2.0+1]: https://github.com/EdsonBueno/infinite_scroll_pagination_v4/compare/2.2.0..2.2.0+1
[2.2.0]: https://github.com/EdsonBueno/infinite_scroll_pagination_v4/compare/2.1.0+1..2.2.0
[2.1.0+1]: https://github.com/EdsonBueno/infinite_scroll_pagination_v4/compare/2.1.0..2.1.0+1
[2.1.0]: https://github.com/EdsonBueno/infinite_scroll_pagination_v4/compare/2.0.1..2.1.0
[2.0.1]: https://github.com/EdsonBueno/infinite_scroll_pagination_v4/compare/2.0.0..2.0.1
[2.0.0]: https://github.com/EdsonBueno/infinite_scroll_pagination_v4/compare/1.1.1..2.0.0
[1.1.1]: https://github.com/EdsonBueno/infinite_scroll_pagination_v4/compare/1.1.0..1.1.1
[1.1.0]: https://github.com/EdsonBueno/infinite_scroll_pagination_v4/compare/1.0.0+2..1.1.0
[1.0.0+2]: https://github.com/EdsonBueno/infinite_scroll_pagination_v4/compare/1.0.0+1..1.0.0+2
[1.0.0+1]: https://github.com/EdsonBueno/infinite_scroll_pagination_v4/compare/1.0.0..1.0.0+1
