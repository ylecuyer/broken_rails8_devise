class TestController < ApplicationController
  def index
    render json: { message: "Hello, #{current_user.email}" }
  end
end
