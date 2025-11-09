require_relative "group_by_initial"

RSpec.describe "group_by_initial" do
  context "基本動作" do
    it "異なる頭文字でグループ化できる" do
      input = ["apple", "banana", "cherry"]
      expected = {
        "A"=>["apple"],
        "B"=>["banana"],
        "C"=>["cherry"]
      }
      expect(group_by_initial(input)).to eq(expected)
    end

    it "同じ頭文字の文字列をまとめられる" do
      input = ["apple", "avocado", "apricot"]
      expected = {"A"=>["apple", "avocado", "apricot"]}
      expect(group_by_initial(input)).to eq(expected)
    end
  end
end
