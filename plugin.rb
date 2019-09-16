# name: discourse-reflexivity
# about: reflective learning system plugin for Discourse
# version: 0.1.0
# authors: pacharanero
# url: https://github.com/pacharanero/discourse-reflective-learning-plugin

register_asset "stylesheets/common/reflexivity.scss"
register_svg_icon "glasses" if respond_to?(:register_svg_icon)
# register_editable_user_custom_field :enable_reflexivity

enabled_site_setting :reflexivity_enabled
enabled_site_setting :reflexivity_extra_setting

# load the Rails Engine
load File.expand_path('../lib/reflexivity/engine.rb', __FILE__)
