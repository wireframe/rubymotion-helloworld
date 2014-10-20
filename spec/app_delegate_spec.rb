describe AppDelegate do
  describe "#application:didFinishLaunchingWithOptions:" do
    before do
      @app = UIApplication.sharedApplication
    end
    it "creates the window" do
      @app.windows.size.should == 1
    end
    it 'sets the root view controller' do
      @app.windows.first.rootViewController.should.be.instance_of HelloController
    end
  end
end
