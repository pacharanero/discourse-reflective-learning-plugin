import { ajax } from 'discourse/lib/ajax'
import { url } from "discourse/lib/computed";


export default Ember.Route.extend({
  model () {
    var reflections = ajax(`/u/${this.currentUser.username}/reflection/index.json`, { type: 'GET' })
    return reflections
  }
})
