require 'spec_helper'

describe Review, type: :model do
  it { is_expected.to belong_to :restaurant }

  it 'will be deleted when restaurant deleted' do
    rest = Restaurant.create(name: 'KFC')
    rev  = Review.create(thoughts: 'Hello', rating: 2, restaurant: rest)

    expect { rest.destroy! }.to change { Review.count }.by(-1)
  end
end
