module NewAccount
  include PageObject

  #elements
  text_field(:username, :name => 'uid')
  text_field(:password, :name => 'pw')
  button(:creat_account, :value => 'Create account')
  button(:login, :value => 'Login')
  div(:message,  :css=>'.message')

  def login_with(user,pass)
    self.username = user
    self.password = pass

    if creat_account_element.visible?
      creat_account
    else
      login
    end

  end

end