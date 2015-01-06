class LulzGreeter
    def greet
        "OH HAI CUCUMBER!"
    end
end

Given(/^a luluz greeter$/) do
  @greeter = LulzGreeter.new
end

When(/^I send it the greet message$/) do
  @message = @greeter.greet
end


Then(/^I should se "(.*?)"$/) do |lulzy_greeting|
  expect(@message).to eq lulzy_greeting
end
