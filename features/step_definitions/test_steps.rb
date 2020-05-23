Then(/the app is on the Welcome page/) do
  welcome_page = WelcomePage.new(@driver)
  welcome_page.on_page?
end

Then(/^the app navigates to the Share Your Location page$/) do
  location_page = ShareYourLocationPage.new(@driver)
  fail unless location_page.title == 'Share your location'
end

And(/^the user selects (?:Next|Get started)$/) do
  welcome_page = WelcomePage.new(@driver)
  welcome_page.next
end



