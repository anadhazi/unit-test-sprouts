require "minitest/autorun"
require "./bean"

describe Bean do
  let(:bean) { Bean.new }

  it "is unsprouted by default" do
    bean.state.must_equal "unsprouted"
  end

  it "sprouts" do
    Bean.stub :should_sprout, true do
      bean.sprout
      bean.state.must_equal "sprouted"
    end
  end
end
