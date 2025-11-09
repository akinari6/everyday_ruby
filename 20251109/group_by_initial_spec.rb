require_relative 'group_by_initial'

RSpec.describe '#group_by_initial' do
  context '基本動作' do
    it '異なる頭文字でグループ化できる' do
      input = %w[apple banana cherry]
      expected = {
        'A' => ['apple'],
        'B' => ['banana'],
        'C' => ['cherry']
      }
      expect(group_by_initial(input)).to eq(expected)
    end
  end

  context '大文字・小文字の扱い' do
    it '小文字始まりでも大文字キーでグループ化' do
      input = %w[apple banana]
      expected = { 'A' => ['apple'], 'B' => ['banana'] }

      expect(group_by_initial(input)).to eq(expected)
    end

    it '大文字と小文字が混在する場合でも大文字キーでグループ化' do
      input = %w[Ruby rails React]
      expected = { 'R' => %w[Ruby rails React] }

      expect(group_by_initial(input)).to eq(expected)
    end
  end

  context 'エッジケース' do
    it '空配列の場合、空のハッシュを返す' do
      input = []
      expected = {}

      expect(group_by_initial(input)).to eq(expected)
    end

    it '空文字列を除外する' do
      input = ['test', '', 'data']
      expected = { 'T' => ['test'], 'D' => ['data'] }

      expect(group_by_initial(input)).to eq(expected)
    end
  end
end
