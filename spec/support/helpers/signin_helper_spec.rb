module Helpers
  module SigninHelper
    def valid_signin(user)
      fill_in "Email",    with: user.email.upcase # test for case-insensitivity
      fill_in "Password", with: user.password
      click_button "Sign in"
    end
  end
end
