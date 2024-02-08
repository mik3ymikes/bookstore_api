require 'rails_helper'

RSpec.describe Author, type: :model do
  context 'with valid attributes' do
    it 'is valid' do
      author = Author.new(name: 'Joe')
      expect(author).to be_valid
    end
  end
end