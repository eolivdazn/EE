
Given(/^Im on gruyere portal "([^"]*)" page$/) do |arg|
  visit_page(GruyereHomePage)
  if arg == 'sign up'
  on_page(GruyereHomePage).sign_up
  elsif
  on_page(GruyereHomePage).sign_in
  end
end

When(/^I insert "([^"]*)" User name and Password$/) do |type|
  if type == 'random'
  random = rand(0...99)
  on_page(GruyereHomePage).login_with("u_#{random}#{random}","p_#{random}#{random}")
  else
    on_page(GruyereHomePage).login_with("a","aa")
  end

end

Then(/^A message "([^"]*)" is displayed/) do |expected|
  on_page(GruyereHomePage).message.should == expected
end

And(/^The menu user is not empty$/) do
  on_page(GruyereHomePage).home
  #on_page(GruyereHomePage).wait_until(5, "Continue element not visible in 5 seconds") do
    expect(on_page(GruyereHomePage).menu_user).not_to be_empty
  #end
end

Then(/^I logout the session$/) do
  expect(on_page(GruyereHomePage).menu_user).to include ("a <a>")
  on_page(GruyereHomePage).sign_out
  on_page(GruyereHomePage).wait_until(5, "Continue element not visible in 5 seconds") do
    expect(on_page(GruyereHomePage).sign_in_element.visible?).to be true
  end
end




