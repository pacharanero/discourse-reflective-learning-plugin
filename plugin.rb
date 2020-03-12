# name: discourse-reflective-learning-plugin
# about: Reflective learning plugin for Discourse
# version: 0.1.1
# authors: pacharanero
# url: https://github.com/pacharanero/discourse-reflective-learning-plugin

register_asset "stylesheets/common/reflexivity.scss"
register_svg_icon "glasses" if respond_to?(:register_svg_icon)

# register_editable_user_custom_field :enable_reflexivity

# plugin site settings
enabled_site_setting :reflexivity_enabled

# load the Rails Engine
load File.expand_path('../lib/reflexivity/engine.rb', __FILE__)

after_initialize do
  # register topic custom field for a Reflection
  Topic.register_custom_field_type('reflection', :boolean)
  TopicList.preloaded_custom_fields << 'reflection' if TopicList.respond_to? :preloaded_custom_fields
end
