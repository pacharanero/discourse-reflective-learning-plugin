import Reflection from '../models/reflection';

export default Discourse.Route.extend({
  model() {
    return Reflection.all();
  }
});
