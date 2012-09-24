require File.dirname(__FILE__) + './../spec/spec_helper'
require File.dirname(__FILE__) + './../pizza'

describe Pizza do
  it "should not be prepaked" do
    pizza = Pizza.new
    pizza.should_not be_baked
  end

  xit "should be a peperoni pizza" do
  end

  it "should be a mexican pizza"
end