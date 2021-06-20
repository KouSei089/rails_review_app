require 'rails_helper'

RSpec.describe Post, type: :model do
  describe 'バリデーション' do
    it 'is valid with all attributes' do
      post = build(:post)
      expect(post).to be_valid
    end
    it 'is invalid without name' do
      post = build(:post, name: '')
      expect(post).to be_invalid
    end
    it 'is invalid without description' do
      post = build(:post, description: '')
      expect(post).to be_invalid
    end
  end
end
