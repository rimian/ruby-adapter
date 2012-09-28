class Pizza
  attr_reader :baked, :flavour
  attr_accessor :adapter

  def initialize(flavour)
    @flavour = flavour
    @baked = false
  end

  def adapter
    require File.dirname(__FILE__) + '/pizzas/' + flavour.to_s
    Pizzas.const_get("#{flavour.to_s.capitalize}").new
  end

  def baked=(baked)
    @baked = baked
  end

  def baked?
    @baked == true
  end
end