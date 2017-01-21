module NewSnippet
  include PageObject

  text_field(:snippet, :name =>'snippet')
  button(:submit,     :value =>'Submit')

end