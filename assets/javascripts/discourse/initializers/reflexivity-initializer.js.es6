import { withPluginApi } from "discourse/lib/plugin-api";
import Composer from 'discourse/models/composer';
import { default as discourseComputed } from 'discourse-common/utils/decorators';

function initializeReflexivity(api) {
  
  Composer.serializeOnCreate('reflection', 'reflection');
    
  api.modifyClass('route:application', {
    actions: {
      composeReflection(user, post) {
        const recipients = user ? user.get("username") : "";
        const reply = post
          ? `${window.location.protocol}//${window.location.host}${post.url}`
          : null;
        const title = post
          ? I18n.t("composer.reference_topic_title", {
              title: post.topic.title
            })
          : null;

        // used only once, one less dependency
        return this.controllerFor("composer").open({
          action: Composer.PRIVATE_MESSAGE,
          recipients,
          archetypeId: "private_message",
          draftKey: Composer.NEW_PRIVATE_MESSAGE_KEY,
          reply,
          title,
          reflection: true
        });
      }
    }
  });

  api.modifyClass('controller:composer', {
    _setModel(composerModel, opts) {
      this._super(composerModel, opts);
      if (opts.reflection !== undefined) {
        this.model.set('reflection', opts.reflection);
      }
    }
  });
  
  api.modifyClass("component:composer-action-title", {
    @discourseComputed("options", "action", "model.reflection")
    actionTitle(opts, action, reflection) {
      if (reflection) {
        return 'Start a reflection';
      } else {
        return this._super(opts, action);
      }
    }
  });

}

export default {
  name: "reflexivity",

  initialize() {
    withPluginApi("0.8.24", initializeReflexivity);
  }
};
