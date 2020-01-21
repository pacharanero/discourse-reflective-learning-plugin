import Controller from "@ember/controller";

export default Controller.extend({
  actions: {
    createReflection() {
      this.toggleProperty('showReflectionCompose')
    }
  }
})