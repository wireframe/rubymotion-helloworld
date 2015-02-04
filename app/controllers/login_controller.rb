class LoginController < UIViewController
  extend IB

  outlet :btn_login
  outlet :text_email
  outlet :text_password

  def do_login
    alert = UIAlertView.alloc.initWithTitle('Greeting',
      message: 'Hello World!',
      delegate: nil,
      cancelButtonTitle: "OK",
      otherButtonTitles: nil)
    alert.show
  end
end
