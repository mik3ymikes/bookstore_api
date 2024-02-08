require 'rails_helper'

RSpec.describe Book, type: :model do
  context 'with valid attributes' do
    it 'is valid' do
      book = Book.new(title: 'My First Book', author_id: 1)
      expect(book).to be_valid
    end
  end
end