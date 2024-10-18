require 'rails_helper'

RSpec.describe TestController, type: :controller do
  before do
    user = User.create!(email: 'test@example.com', password: 'ABCdef123!')
    sign_in user
  end

  it 'works' do
    get :index
    expect(response.status).to eq(200)
    expect(response.body).to eq("{\"message\":\"Hello, test@example.com\"}")
  end
end
