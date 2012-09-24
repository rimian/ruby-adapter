require File.dirname(__FILE__) + './../spec/spec_helper'
require File.dirname(__FILE__) + './../pizza'
require File.dirname(__FILE__) + './../oven'

describe Oven do
  it "should take a pizza" do
    pizza = Pizza.new
    oven = Oven.new pizza
    oven.should have_pizza
  end

  it "should bake pizza" do
    pizza = Pizza.new
    oven = Oven.new pizza
    oven.bake
    pizza.should be_baked
  end
end