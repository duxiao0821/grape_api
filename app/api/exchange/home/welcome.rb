class Exchange::Home::Welcome < Grape::API
  namespace :home do
    resource :welcome do
      desc '欢迎页面'
      params do
        requires :name, type: String
        optional :time, type: Integer
      end
      get :hello do
        {
          message: "hi === #{params[:name]} === #{params[:time]}"
        }
      end
    end
  end
end
