require_relative 'modules/new_account'
require_relative 'modules/new_snippet'
require_relative 'modules/my_snippets'

class GruyereHomePage
  include PageObject

  include NewAccount
  include NewSnippet
  include MySnippets

  page_url("https://google-gruyere.appspot.com/174628658103")

  #elements
  button(:sign_up,  :link =>'Sign up')
  button(:sign_in,  :link =>'Sign in')
  button(:sign_out, :link =>'Sign out')
  button(:new_snippet,:partial_link_text =>'New')
  button(:my_snippet, :partial_link_text =>'My')
  button(:home,       :link =>'Home')

  div(:menu_user,  :css=>'.menu-user')

  table(:recent_snippets, :css=>'.content' )


end
