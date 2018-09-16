require_relative "../support/hooks"

# step to check partial attribute value
Then(/^element having (.+) "([^\"]*)" should\s*((?:not)?)\s+have attribute "(.*?)" with partial value "(.*?)"$/) do |locator_type, locator_value, reverse_match, attribute_name, attribute_expected_value|
  is_valid_type = %w(id class css name xpath).include? locator_type
  unless is_valid_type
    raise "Invalid locator type - #{locator_type}"
  end
  attribute_actual_value = $driver.find_element(:"#{locator_type}", "#{locator_value}").attribute("#{attribute_name}")
  if reverse_match.empty?
    expect(attribute_actual_value).to include(attribute_expected_value)
  else
    expect(attribute_actual_value).to_not include(attribute_expected_value)
  end
end
