export default {
  resource: 'user',
  map () {
    this.route('reflection', { resetNamespace: true }, function() {
      this.route('list');
      this.route('sent');
      this.route('archive');
    })
  }
}
