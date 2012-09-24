require File.dirname(__FILE__) + './../spec/spec_helper'
require File.dirname(__FILE__) + './../pizza'

describe Pizza do
  it "should not be prepaked" do
    pizza = Pizza.new
    pizza.should_not be_baked
  end

  xit "should bake the pizza" do
    pizza = Pizza.new
    pizza.bake
    pizza.should be_baked
  end

  it "should be a peperoni pizza"
  it "should be a mexican pizza"
end