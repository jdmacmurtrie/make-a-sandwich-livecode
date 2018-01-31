class Sandwich
  attr_reader :cheese, :meat, :uncut
  attr_accessor :size
  def initialize(cheese, meat)
    @cheese = cheese
    @meat = meat
    @uncut = true
    @size = 5
  end

  def cut
    @uncut = false
  end

  def eat
    if @size > 0
      @size -= 1
    else
      return "Sorry, all gone!"
    end
  end
end
