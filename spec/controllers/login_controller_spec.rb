describe LoginController  do
  tests LoginController, storyboard: 'Main', id: 'LoginController'

  describe '#btn_login' do
    it 'is wired by storyboard' do
      controller.btn_login.should.not.be.nil
    end
  end

  describe '#do_login' do
    before do
      controller.do_login
    end
    it 'shows alert' do
      view('Greeting').should.not.be.nil
    end
  end
end
