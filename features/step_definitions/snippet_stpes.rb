When(/^I create a new snippet$/) do
  @random = rand(0...99)
  on_page(GruyereHomePage).new_snippet
  on_page(GruyereHomePage).snippet_element.send_keys "test_#{@random}"
  on_page(GruyereHomePage).submit
end

Then(/^A new snippet is available$/) do
  on_page(GruyereHomePage).my_snippet
  expect(on_page(GruyereHomePage).my_snippets_element.visible?).to be true
  expect(on_page(GruyereHomePage).all_snippets_element[1][2].text).to include "test_#{@random}"

  on_page(GruyereHomePage).home
  recent_snippets = on_page(GruyereHomePage).recent_snippets_element
  new_snippet = recent_snippets.find_element(:id =>'a').text
  expect(new_snippet).to include "test_#{@random}"

end

Then(/^I delete the snippet$/) do
  on_page(GruyereHomePage).my_snippet
  delete = on_page(GruyereHomePage).all_snippets_element[1][1]
  delete.link_element(:text =>'[X]').click
  expect(on_page(GruyereHomePage).all_snippets_element.text).to include "No snippets"

end

