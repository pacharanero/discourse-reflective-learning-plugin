export default {
  resource: 'user',
  map () {
    this.route(
      'reflection',
      { path: 'reflection', resetNamespace: true },
      function () {
        this.route('index');
      }
    )
  }
}
