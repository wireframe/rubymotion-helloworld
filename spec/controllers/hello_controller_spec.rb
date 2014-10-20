describe HelloController  do
  tests HelloController, storyboard: 'Main', id: 'HelloController'

  describe '#btn_hello' do
    it 'is wired by storyboard' do
      controller.btn_hello.should.not.be.nil
    end
  end

  describe "#say_hello" do
    before do
      controller.say_hello(controller.btn_hello)
    end
    it 'shows alert' do
      view('Greeting').should.not.be.nil
    end
  end
end
