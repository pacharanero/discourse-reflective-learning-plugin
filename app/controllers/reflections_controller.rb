class ReflectionsController < ApplicationController
  def index
    render json: { title: "reflection title", description: "reflection description" }
  end
end
