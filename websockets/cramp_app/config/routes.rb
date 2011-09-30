# Check out https://github.com/joshbuddy/http_router for more information on HttpRouter
HttpRouter.new do
  add('/socket').to(HomeAction)
  get('/(:file)').to(StaticFileAction)
end
