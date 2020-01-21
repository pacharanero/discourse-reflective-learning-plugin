export default Discourse.Route.extend({
  redirect() {
    this.transitionTo("userReflection.index");
  }
});
