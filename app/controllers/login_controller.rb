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
    BubbleWrap::HTTP.post('http://betterup.local/oauth/token', payload: params) do |response|
      p response.body.to_str
      if response.ok?
        json = BW::JSON.parse(response.body.to_str)
        access_token = json['access_token']
        refresh_token = json['refresh_token']
        App.alert('Success!')
      else
        App.alert('Login failed')
      end
    end
  end
end
