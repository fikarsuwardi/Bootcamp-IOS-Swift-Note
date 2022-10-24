// Make countdown
@IBOutlet var countDownLabel: UILabel!

var count = 10

override func viewDidLoad() {
    super.viewDidLoad()

    var timer = Timer.scheduledTimer(timeInterval: 0.4, target: self, selector: #selector(UIMenuController.update), userInfo: nil, repeats: true)
}

func update() {
    if(count > 0) {
        countDownLabel.text = String(count--)
    }
}
