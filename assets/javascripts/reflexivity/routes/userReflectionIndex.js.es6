import { ajax } from 'discourse/lib/ajax';
import { userPath } from 'discourse/lib/url';
import OpenComposer from "discourse/mixins/open-composer";


export default Discourse.Route.extend(OpenComposer, {
  redirect () {
    return this.redirectIfLoginRequired();
  },

  actions: {

  createReflection () {
      // const model = this.controllerFor("discovery/topics").get("model");
      // if (model.draft) {
      //   this.openTopicDraft(model);
      // } else {
      console.log("createReflection route ran")
        this.openComposer(this.controllerFor("discovery/topics"));
      // }
    },
  }


});
