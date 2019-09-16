export default {
  resource: 'user',
  map () {
    this.route(
      'userReflection',
      { path: 'reflection', resetNamespace: true },
      function () {
        this.route('index');
      }
    )
  }
}
