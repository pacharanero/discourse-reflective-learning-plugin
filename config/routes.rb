Discourse::Application.routes.append do
  get "u/:username/reflection" => "reflections#index", constraints: { username: RouteFormat.username }
  get "users/:username/reflection" => "reflections#index", constraints: { username: RouteFormat.username }
end
