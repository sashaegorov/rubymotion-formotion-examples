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
          },{
          # https://developer.apple.com/library/ios/documentation/uikit/reference/UITableViewCell_Class/Reference/Reference.html
          title: 'Tap me',
          type: :object,
          subtitle: 'Cell selection style none',
          selection_style: UITableViewCellSelectionStyleNone
        }]
      }]
    })

    @form_controller = Formotion::FormController.alloc.initWithForm(@form)
    @window.rootViewController = @form_controller
    @window.makeKeyAndVisible

  end
end
