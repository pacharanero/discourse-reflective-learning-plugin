import { ajax } from 'discourse/lib/ajax';
import { popupAjaxError } from 'discourse/lib/ajax-error';
import EmberObject from "@ember/object";

const Reflection = EmberObject.extend();
const ReflectionPath = `/u/${Discourse.User.current().username}/reflection/index`;

Reflection.reopenClass({
  all() {
    return ajax(ReflectionPath)
      .then(result => result.reflections.map(r => Reflection.create(r)))
      .catch(popupAjaxError)
  },

  create(reflection) {
    return ajax(ReflectionPath, {
      method: "POST",
      data: {
        reflection
      }
    }).catch(popupAjaxError)
  },

  update(reflection) {
    return ajax(ReflectionPath, {
      method: "PUT",
      data: {
        reflection
      }
    }).catch(popupAjaxError)
  },

  destroy(reflection) {
    return ajax(ReflectionPath, {
      method: "DELETE",
      data: {
        reflection
      }
    }).catch(popupAjaxError)
  }
});

export default Reflection;
