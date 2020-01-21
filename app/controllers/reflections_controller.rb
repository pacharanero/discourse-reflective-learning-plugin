class ReflectionsController < ::ApplicationController
  def index
    user = User.where(username: params[:username])
    reflections = (user.present? && user.reflections.any?) ? user.reflections : []
    render_serialized(reflections, ReflectionSerializer)
  end
  
  def create
    
  end
  
  def update
    
  end
  
  def destroy
    
  end
end
