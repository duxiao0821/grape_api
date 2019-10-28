require 'grape'
require 'grape-swagger'
class Exchange::RootAPI < Grape::API
  include APIDefault
  desc 'API Root'
  version 'v2', using: :path
  mount Home::Welcome
  add_swagger_documentation(
    schemes: ['http']
  )
end
