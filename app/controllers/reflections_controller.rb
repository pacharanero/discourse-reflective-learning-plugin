class ReflectionsController < ApplicationController
  def index
    @reflections = Reflection.where(user_id: current_user.id)
    render json: @reflections
  end
end
