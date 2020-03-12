Discourse::Application.routes.append do
  get "u/:username/reflection" => "reflections#index", constraints: { username: RouteFormat.username }
  get "users/:username/reflection" => "reflections#index", constraints: { username: RouteFormat.username }
  
  get "u/:username/reflection/list" => "reflections#index", constraints: { username: RouteFormat.username }
  get "users/:username/reflection/list" => "reflections#index", constraints: { username: RouteFormat.username }

  get "u/:username/reflection/sent" => "reflections#sent", constraints: { username: RouteFormat.username }
  get "users/:username/reflection/sent" => "reflections#sent", constraints: { username: RouteFormat.username }
end
