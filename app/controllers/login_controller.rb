class LoginController < UIViewController
  extend IB

  outlet :btn_login
  outlet :text_email
  outlet :text_password

  def viewDidLoad
    super

    App.notification_center.observe(NXOAuth2AccountStoreAccountsDidChangeNotification, NXOAuth2AccountStore.sharedStore) do |notification|
      p notification
      account = notification.userInfo[NXOAuth2AccountStoreNewAccountUserInfoKey]
      p account
      token = account.accessToken
      p token.accessToken
      p token.refreshToken
      App.alert('Success!')
    end
    App.notification_center.observe(NXOAuth2AccountStoreDidFailToRequestAccessNotification, NXOAuth2AccountStore.sharedStore) do |notification|
      p notification
      error = notification.userInfo[NXOAuth2AccountStoreErrorKey]
      p error
      App.alert('Login failed.')
    end
  end

  def do_login
    NXOAuth2AccountStore.sharedStore.requestAccessToAccountWithType('betterup',
                                                                    username: text_email.text,
                                                                    password: text_password.text)
  end
end
