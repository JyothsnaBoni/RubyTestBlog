require "test_helper"
# require "capybara/poltergeist"

class ApplicationSystemTestCase < ActionDispatch::SystemTestCase
  #  poltergeist - another driver 
  driven_by :selenium, using: :chrome, screen_size: [1400, 1400]
end