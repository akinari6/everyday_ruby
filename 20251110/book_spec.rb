require_relative 'book'

RSpec.describe 'Book' do
  let(:title) { 'Ruby入門' }
  let(:author) { '田中太郎' }
  let(:price) { 3000 }
  let(:book) { Book.new(title, author, price) }

  describe '#constructor' do
    it 'is generated with required args' do
      expect(book).to be_a(Book)
    end

    it 'is possible to get attributes' do
      expect(book.title).to eq(title)
      expect(book.author).to eq(author)
      expect(book.price).to eq(price)
    end

    it 'is possible to construct without published_at' do
      expect(book.published_at).to be_nil
    end

    it 'is possible to assign published_at' do
      book = Book.new(title, author, price, Date.new(2024, 1, 1))

      expect(book.published_at).to eq(Date.new(2024, 1, 1))
    end
  end

  describe '#info' do
    it 'returns book information in format rule' do
      expect(book.info).to eq("「#{title}」#{author}(¥#{price})")
    end
  end
end
