require_relative '../fizzbuzz'

describe 'FizzBuzz' do
  it 'returns the number if it not fizzbuzz' do
    the_number = 1
    fizzbuzz = FizzBuzz.new(the_number)

    evaluation = fizzbuzz.evaluate

    expect(evaluation).to eq('1')
  end

  it 'returns Fizz if is a fizz number' do
    fizz_number = 3
    fizzbuzz = FizzBuzz.new(fizz_number)

    evaluation = fizzbuzz.evaluate

    expect(evaluation).to eq('Fizz')
  end

  it 'returns Buzz if is a buzz number' do
    buzz_number = 5
    fizzbuzz = FizzBuzz.new(buzz_number)

    evaluation = fizzbuzz.evaluate

    expect(evaluation).to eq('Buzz')
  end

  it 'returns FizzBuzz for a fizzbuzz number' do
    fizzbuzz_number = 15
    fizzbuzz = FizzBuzz.new(fizzbuzz_number)

    evaluation = fizzbuzz.evaluate

    expect(evaluation).to eq('FizzBuzz')
  end
end
