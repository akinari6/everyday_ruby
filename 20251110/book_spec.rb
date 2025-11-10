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

  describe '#discount' do
    context 'with normal discount ratio' do
      it 'returns original price with 0% discount' do
        expect(book.discount(0)).to eq(price)
      end

      it 'returns the half price with 50% discount' do
        expect(book.discount(50)).to eq(price * 0.5)
      end

      it 'returns zero with 100% discount' do
        expect(book.discount(100)).to eq(0)
      end

      it 'round down' do
        book = Book.new(title, author, 20)

        expect(book.discount(33)).to eq(13)
      end
    end

    context 'with abnormal discount ratio' do
      it 'raise arugment error with 101% discount' do
        expect { book.discount(101) }.to raise_error(ArgumentError)
      end

      it 'raise argument error with -1% discount' do
        expect { book.discount(-1) }.to raise_error(ArgumentError)
      end
    end
  end

  describe '#published?' do
    it 'returns true if published_at is set' do
      book = Book.new(title, author, price, Date.new(2024, 1, 1))

      expect(book.published?).to be(true)
    end

    it 'returns false if published_at is nil' do
      expect(book.published?).to be(false)
    end
  end
end
