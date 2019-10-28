module Exchange::APIDefault
  extend ActiveSupport::Concern
  included do
    format :json
    prefix :api
    default_format :json
    default_error_status 401
  end

end

