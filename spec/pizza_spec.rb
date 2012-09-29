require File.dirname(__FILE__) + './../spec/spec_helper'
require File.dirname(__FILE__) + './../pizza'

describe Pizza do
  it "should not be prepaked" do
    pizza = Pizza.new :peperoni
    pizza.should_not be_baked
  end

  it "should have an adapter" do
    pizza = Pizza.new :peperoni
    pizza.adapter.should be_a Pizzas::Peperoni
  end

  it "should be a peperoni pizza" do
    pizza = Pizza.new :peperoni
    pizza.flavour.should eq 'Peperoni'
  end

  it "should be a mexican pizza" do
    pizza = Pizza.new :mexican
    pizza.flavour.should eq 'Mexican'
  end
end