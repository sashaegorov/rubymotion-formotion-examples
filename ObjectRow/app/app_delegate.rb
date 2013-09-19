class AppDelegate
  def application(application, didFinishLaunchingWithOptions:launchOptions)

    @window = UIWindow.alloc.initWithFrame(UIScreen.mainScreen.bounds)

    # Prepare form
    @form = Formotion::Form.new({
      sections: [{
        title: "Object row",
        rows: [{
          title: 'Object',
          type: :object,
          subtitle: 'Example of object row',
          value: '…this is value'
        }]
      }]
    })

    @form_controller = Formotion::FormController.alloc.initWithForm(@form)
    @window.rootViewController = @form_controller
    @window.makeKeyAndVisible

  end
end
