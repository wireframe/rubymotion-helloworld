class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)
    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)
    storyboard = UIStoryboard.storyboardWithName 'Main', bundle: nil
    @window.rootViewController = storyboard.instantiateInitialViewController
    @window.makeKeyAndVisible

    NXOAuth2AccountStore.sharedStore.setClientID('12345678',
                                                 secret: '87654321',
                                                 authorizationURL: NSURL.URLWithString('http://betterup.local/oauth/authorize'),
                                                 tokenURL: NSURL.URLWithString('http://betterup.local/oauth/token'),
                                                 redirectURL: NSURL.URLWithString('urn:ietf:wg:oauth:2.0:oob'),
                                                 forAccountType: 'betterup')

    true
  end
end
