module ::Reflexivity
  class Engine < ::Rails::Engine
    engine_name Reflexivity

    config.after_initialize do

      # add a per-user enable switch (not working)
      # DiscoursePluginRegistry.serialized_current_user_fields << "enable_reflexivity"
      # User.register_custom_field_type('enable_reflexivity', :boolean)

      # see lib/plugin/instance.rb for the methods available in this context
    end
  end
end
