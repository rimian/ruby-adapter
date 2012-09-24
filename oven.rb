
class Oven
  def initialize pizza
    @pizza = pizza
  end

  def has_pizza?
    @pizza.is_a? Pizza
  end

  def bake
    if self.has_pizza?
      @pizza.baked = true
    end
  end
end