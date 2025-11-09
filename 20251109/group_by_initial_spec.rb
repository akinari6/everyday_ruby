require_relative "group_by_initial"

Rspec.describe "group_by_initial" do
  context "基本動作" do
    it "異なる頭文字でグループ化できる" do
      expect(group_by_initial(["apple", "banana", "cherry"])).to eq({"A"=>["apple"], "B"=>["banana"], "C"=>["cherry"]})
    end
  end
end