require 'grape'
require 'grape-swagger'
class Exchange::RootAPI < Grape::API
  include APIDefault

  version 'v2', using: :path
  mount Home::Welcome

  add_swagger_documentation(
    version: "1.0.0",
    info: {
      title: 'CADAE MOBILE API',
    },
    schemes: ['http'],
  )
end
