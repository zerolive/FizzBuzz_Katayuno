require_relative 'fizzbuzz'

class FizzBuzzList
  def initialize(numbers)
    @numbers = numbers
  end

  def translate
    @numbers.map do |number|
      FizzBuzz.new(number).evaluate
    end
  end
end
