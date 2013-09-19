class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)

    # Prepare form
    @form = Formotion::Form.new({
      sections: [{
        title: "Sign up",
        rows: [{
          title: "Email address",
          key: :email,
          type: :email,
          auto_correction: :no,
          auto_capitalization: :none
          },{
          title: "Password",
          subtitle: "8 or more characters",
          key: :password,
          type: :string,
          secure: true
          }]
      }, {
        rows: [{
          title: "Join now",
          type: :submit
        }]
      }]
    })

    @form_controller = Formotion::FormController.alloc.initWithForm(@form)
    @window.rootViewController = @form_controller
    @window.makeKeyAndVisible

  end
end
