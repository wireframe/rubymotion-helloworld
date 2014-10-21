class HelloController < UIViewController
  extend IB

  outlet :btn_hello
  outlet :label_text

  def viewDidLoad
    super
    label_text.slide(:right, 300, duration: 1.0, damping: 0.8, velocity: 2.0) do
      label_text.slide(:down, 200, duration: 2.0, damping: 0.7, velocity: 1.0)
    end
  end

  def say_hello(sender)
    alert = UIAlertView.alloc.initWithTitle('Greeting',
      message: 'Hello World!',
      delegate: nil,
      cancelButtonTitle: "OK",
      otherButtonTitles: nil)
    alert.show
  end
end
