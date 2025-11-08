require_relative 'answer'

Rspec.describe "filter_and_sum" do
  it "配列の中から偶数のみを取り出して合計値を返す" do
    sum = filter_and_sum([1, 2, 3, 4, 5, 6])
    expect(sum).to eq(12)
  end

  it "奇数のみの配列の場合0を返す" do
    sum = filter_and_sum([1, 3, 5])
    expect(sum).to eq(0)
  end

  it "偶数のみの配列の場合全ての合計を返す" do
    sum = filter_and_sum([2, 4, 6])
    expect(sum).to eq(12)
  end

  it "空の配列の場合、0を返す" do
    sum = filter_and_sum([])
    expect(sum).to eq(0)
  end
end