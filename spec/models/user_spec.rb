require 'rails_helper'

RSpec.describe User, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it 'have email' do
    user = User.new email: 'zhiming3399@gmail.com'
    expect(user.email).to eq 'zhiming3399@gmail.com'
  end
end
