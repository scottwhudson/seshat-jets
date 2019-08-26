require 'rails_helper'

describe Page, type: :model do
  it "should not save without a name" do
    expect(Page.new).to be_invalid
  end

  it "should not save with an invalid url" do
  end
end
