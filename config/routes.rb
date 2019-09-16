Discourse::Application.routes.append do
  get "u/:username/reflection/index" => "reflections#index", constraints: { username: RouteFormat.username }
  get "users/:username/reflection/index" => "reflections#index", constraints: { username: RouteFormat.username }
end
