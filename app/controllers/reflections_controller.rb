class ReflectionsController < ::ApplicationController
  def index
    render_serialized(User.find_by(username: params[:username]).reflections, ReflectionSerializer)
  end
  
  def create
    
  end
  
  def destroy
    
  end
end
