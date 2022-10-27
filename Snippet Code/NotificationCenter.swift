// Sender
class ViewController: UIViewController {

  override func viewDidLoad() {
    super.viewDidLoad()
    let objToBeSent = "Test Message from Notification"
    NotificationCenter.default.post(name: Notification.Name("NotificationIdentifier"), object: objToBeSent)
  }

  @IBAction func buttonPressed(_ sender: UIButton) {
    print(sender.currentTitle!)
    NotificationCenter.default.post(name: Notification.Name("colorChanged"), object: nil)
    view.backgroundColor = .systemRed
  }
  
}

// Received
class SecondViewController: UIViewController {
  
  override func viewDidLoad() {
    super.viewDidLoad()
    NotificationCenter.default.addObserver(self, selector: #selector(notificationReceived), name: Notification.Name("colorChanged"), object: nil)
    
    NotificationCenter.default.addObserver(self, selector: #selector(methodOfReceivedNotification(notification:)), name: Notification.Name("NotificationIdentifier"), object: nil)
  }
  @objc func notificationReceived() {
    view.backgroundColor = .systemRed
  }
  
    @objc func methodOfReceivedNotification(notification: Notification) {
    print("Value of notification : ", notification.object ?? "")
  }
}
