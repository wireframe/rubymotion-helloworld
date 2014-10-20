describe "Application 'rubymotion_helloworld'" do
  before do
    @app = UIApplication.sharedApplication
  end

  it "has one window" do
    @app.windows.size.should == 1
  end

  it 'sets the root view controller' do
    @app.windows.first.rootViewController.should.be.instance_of HelloController
  end
end
