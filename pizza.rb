class Pizza
  attr_reader :baked, :pizza_name

  def initialize(pizza_name)
    @pizza_name = pizza_name
  end

  def adapter
    require File.dirname(__FILE__) + '/pizzas/' + pizza_name.to_s
    Pizzas.const_get("#{pizza_name.to_s.capitalize}").new
  end

  def flavour
    adapter.flavour
  end

  def baked=(baked)
    @baked = baked
  end

  def baked?
    @baked == true
  end
end