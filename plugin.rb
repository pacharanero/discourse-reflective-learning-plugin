# name: reflexivity
# about:
# version: 0.1
# authors: pacharanero
# url: https://github.com/pacharanero


register_asset "stylesheets/common/reflexivity.scss"

enabled_site_setting :reflexivity_enabled

PLUGIN_NAME ||= "reflexivity".freeze

after_initialize do

  # see lib/plugin/instance.rb for the methods available in this context

  module ::Reflexivity
    class Engine < ::Rails::Engine
      engine_name PLUGIN_NAME
      isolate_namespace Reflexivity
    end
  end

  require_dependency "application_controller"
  class ::Reflexivity::ActionsController < ::ApplicationController
    requires_plugin PLUGIN_NAME

    before_action :ensure_logged_in

    def list
      render json: success_json
    end
  end

  Reflexivity::Engine.routes.draw do
    get "/list" => "actions#list"
  end

  Discourse::Application.routes.append do
    mount ::Reflexivity::Engine, at: "/reflexivity"
  end

end
