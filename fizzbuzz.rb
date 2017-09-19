
class FizzBuzz
  FIZZ = 'Fizz'
  BUZZ = 'Buzz'
  FIZZBUZZ = FIZZ + BUZZ
  FIZZ_NUMBER = 3
  BUZZ_NUMBER = 5

  def initialize(number)
    @number = number
  end

  def evaluate
    evaluation = {
      is_fizz? => FIZZ,
      is_buzz? => BUZZ,
      is_fizzbuzz? => FIZZBUZZ
    }
    evaluation.default = @number.to_s

    evaluation[true]
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

  def is_fizzbuzz?
    is_fizz? && is_buzz?
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
