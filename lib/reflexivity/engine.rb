module ::Reflexivity
  class Engine < ::Rails::Engine
    engine_name Reflexivity

    def reflexivity_require(path)
      require Rails.root.join('plugins', 'discourse-reflective-learning-plugin', 'app', path).to_s
    end

    reflexivity_require 'models/reflection.rb'

    config.after_initialize do

      # add a per-user enable switch (not working)
      # DiscoursePluginRegistry.serialized_current_user_fields << "enable_reflexivity"
      # User.register_custom_field_type('enable_reflexivity', :boolean)

      # see lib/plugin/instance.rb for the methods available in this context
      class ::User
        has_many :reflections
      end
    end
  end
end
