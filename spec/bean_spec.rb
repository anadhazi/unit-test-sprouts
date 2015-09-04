require "minitest/autorun"
require "./bean"

describe Bean do
  let(:bean) { Bean.new }

  it "is unsprouted by default" do
    bean.state.must_equal "unsprouted"
  end

  it "sprouts" do
    bean.stub :should_sprout, true do
      bean.sprout
    end
    bean.state.must_equal "sprouted"
  end
end
