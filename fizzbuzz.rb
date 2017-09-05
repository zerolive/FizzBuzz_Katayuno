
class FizzBuzz
  FIZZ = 'Fizz'
  BUZZ = 'Buzz'
  FIZZ_NUMBER = 3
  BUZZ_NUMBER = 5

  def initialize(number)
    @number = number
    @evaluation = ''
  end

  def evaluate
    add_non_fizzbuzz if non_fizzbuzz?
    add_buzz if is_buzz?
    add_fizz if is_fizz?

    @evaluation
  end

  private

  def add_non_fizzbuzz
    @evaluation = @number.to_s
  end

  def add_buzz
    @evaluation += BUZZ
  end

  def add_fizz
    @evaluation.prepend(FIZZ)
  end

  def non_fizzbuzz?
    !is_buzz? && !is_fizz?
  end

  def is_buzz?
    @number.modulo(BUZZ_NUMBER).zero?
  end

  def is_fizz?
    @number.modulo(FIZZ_NUMBER).zero?
  end
end
