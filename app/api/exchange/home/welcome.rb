class Exchange::Home::Welcome < Grape::API
  resource :welcome do
    desc 'lalala' do
    end
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
