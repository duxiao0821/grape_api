require 'grape'
require 'grape-swagger'
class RootAPI < Grape::API
  version 'v2', using: :path, vendor: 'cadae'
  format :json
  prefix :api

  resource :welcome do
    desc 'lalala' do
    end
    params do
      requires :name, type: String
      optional :time, type: Integer
    end
    get :hello do
      {
        message: "hii === #{params[:name]} === #{params[:time]}"
      }
    end

  end
  add_swagger_documentation
end
