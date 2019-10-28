require File.expand_path '../../../rails_helper.rb', __FILE__
describe '首页的接口', type: :request do
  it '直接访问会404' do
    get "/api/v2/home/welcome/hello"
    expect(response.status) == 400
  end
end
