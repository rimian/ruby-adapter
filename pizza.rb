
class Pizza
  attr_reader :baked

  def initialize
    @baked = false
  end

  def baked=(baked)
    @baked = baked
  end

  def baked?
    @baked == true
  end
end