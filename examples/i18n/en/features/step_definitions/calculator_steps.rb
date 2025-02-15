$LOAD_PATH.unshift("#{File.dirname(__FILE__)}/../../lib")
require 'calculator'

Before do
  @calc = Calculator.new
end

After do
end

Given(/I have entered (\d+) into the calculator/) do |n|
  @calc.push n.to_i
end

When(/I press (\w+)/) do |op|
  @result = @calc.send op
end

Then(/the result should be (.*) on the screen/) do |result|
  expect(@result).to eq(result.to_f)
end
