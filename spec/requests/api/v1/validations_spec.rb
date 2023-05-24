require 'rails_helper'

RSpec.describe "Validations", type: :request do
  describe "验证码" do
    it '发送验证码' do
      post '/api/v1/validation_codes', params: {email: 'zhiming3399@gmail.com'}
      expect(response).to have_http_status(:success)
    end
  end
end
