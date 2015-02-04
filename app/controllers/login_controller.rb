class LoginController < UIViewController
  extend IB

  outlet :btn_login
  outlet :text_email
  outlet :text_password

  def do_login
    params = {
      grant_type: 'password',
      username: text_email.text,
      password: text_password.text
    }
    AFMotion::JSON.post('http://betterup.local/oauth/token', params) do |response|
      p response.body.to_str
      if response.success?
        json = response.object
        access_token = json['access_token']
        refresh_token = json['refresh_token']
        App.alert('Success!')
      else
        App.alert('Login failed')
      end
    end
  end
end
