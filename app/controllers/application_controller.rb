module Reflexivity
  class ApplicationController < ActionController::Base
    protect_from_forgery with: :exception

    before_action :ensure_logged_in

  end
end
