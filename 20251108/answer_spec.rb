require_relative 'answer'

describe "filter_and_sum" do
  it do
    sum = filter_and_sum([1, 2, 3, 4, 5, 6])
    expect(sum).to eq(12)
  end

  it do
    sum = filter_and_sum([1, 3, 5])
    expect(sum).to eq(0)
  end

  it do
    sum = filter_and_sum([2, 4, 6])
    expect(sum).to eq(12)
  end

  it do
    sum = filter_and_sum([])
    expect(sum).to eq(0)
  end
end