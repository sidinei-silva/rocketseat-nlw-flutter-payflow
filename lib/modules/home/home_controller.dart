class HomeControler {
  var _currentPage = 0;

  int get currentPage => _currentPage;

  void setPage(int index) {
    _currentPage = index;
  }
}
