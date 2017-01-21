module MySnippets
  include PageObject


  div(:my_snippets,    :css=>'.has-refresh')
  table(:all_snippets, :css=>'.content' )



end