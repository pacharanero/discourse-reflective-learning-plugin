import { ajax } from 'discourse/lib/ajax';
import { userPath } from 'discourse/lib/url';

export default Ember.Route.extend({
  model() {
    return ajax("")
  }
});
