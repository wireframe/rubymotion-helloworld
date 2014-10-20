class HelloController < UIViewController
  extend IB

  attr_accessor :data_source

  outlet :btn_hello

  def say_hello(sender)
    alert = UIAlertView.alloc.initWithTitle('Greeting',
      message: 'Hello World!',
      delegate: nil,
      cancelButtonTitle: "OK",
      otherButtonTitles: nil)
    alert.show
  end
end
