require_relative '../fizzbuzz_list'

describe 'FizzBuzzList' do
  it 'translates number list with FizzBuzz' do
    raw_random_list = random_list
    fizzbuzz_list = FizzBuzzList.new(raw_random_list)

    translated_list = fizzbuzz_list.translate

    expect(translated_list).to eq(random_fizzbuzz_list(raw_random_list))
  end

  def random_list
    number_of_items = rand(1..100)
    Array.new(number_of_items) { rand(0...100) }
  end

  def random_fizzbuzz_list(list)
    list.map do |item|
      FizzBuzz.new(item).evaluate
    end
  end
end
