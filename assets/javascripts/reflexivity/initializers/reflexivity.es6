import { withPluginApi } from "discourse/lib/plugin-api";

function initializeReflexivity(api) {

  // see app/assets/javascripts/discourse/lib/plugin-api
  // for the functions available via the api object

}

export default {
  name: "reflexivity",

  initialize() {
    withPluginApi("0.8.24", initializeReflexivity);
  }
};
