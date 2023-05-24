require 'rails_helper'

RSpec.describe Item, type: :model do
  # pending "add some examples to (or delete) #{__FILE__}"
  it 'have items' do
    item = Item.new amount: 99, user_id: 1
    expect(item.amount).to eq 99
  end
end
