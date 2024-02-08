import UIKit

class ViewController: UIViewController {
    
    @IBOutlet weak var labelText: UILabel!
    @IBOutlet weak var button: UIButton!
    @IBOutlet weak var defoltButton: UIButton!
    @IBOutlet weak var segmentedControl: UISegmentedControl!
    
    var randomFont = ["Arial", "Apple Symbols", "Avenir", "Impact", "Charter", "Farah", "Chalkduster", "Galvji", "Helvetica", "Didot"]
    var underLine = [NSUnderlineStyle.single.rawValue, nil]
    let plainString = "Hello Berdy, this's my homework."
    
    override func viewDidLoad() {
        super.viewDidLoad()
        customization()
    }
    
    func customization() {
        button.layer.cornerRadius = 10
        defoltButton.layer.cornerRadius = 10
    }
 
    func attributedString() {
        let attributedString = NSMutableAttributedString(string: plainString)
        
        //MARK: - Hello
        if let privacyHello = plainString.range(of: "Hello") {
            let nsRange = NSRange(privacyHello, in: plainString)
            attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1), range: nsRange)
            attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: randomFont.randomElement() ?? "Impact" , size: .random(in: 15...40)) as Any, range: nsRange)
            attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: underLine.randomElement() as Any, range: nsRange)
        }
        
        //MARK: - Berdy
        if let privacyBerdy = plainString.range(of: "Berdy,") {
            let nsRange = NSRange(privacyBerdy, in: plainString)
            attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1), range: nsRange)
            attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: randomFont.randomElement() ?? "Impact" , size: .random(in: 15...40)) as Any, range: nsRange)
            attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: underLine.randomElement() as Any, range: nsRange)
        }
        
        //MARK: - this
        if let privacyThiss = plainString.range(of: "this's") {
            let nsRange = NSRange(privacyThiss, in: plainString)
            attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1), range: nsRange)
            attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: randomFont.randomElement() ?? "Impact" , size: .random(in: 15...40)) as Any, range: nsRange)
            attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: underLine.randomElement() as Any, range: nsRange)
        }
        
        //MARK: - my
        if let privacyMy = plainString.range(of: "my") {
            let nsRange = NSRange(privacyMy, in: plainString)
            attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1), range: nsRange)
            attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: randomFont.randomElement() ?? "Impact" , size: .random(in: 15...40)) as Any, range: nsRange)
            attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: underLine.randomElement() as Any, range: nsRange)
        }
        
        //MARK: - homework
        if let privacyHomework = plainString.range(of: "homework.") {
            let nsRange = NSRange(privacyHomework, in: plainString)
            attributedString.addAttribute(NSAttributedString.Key.foregroundColor, value: UIColor(red: .random(in: 0...1), green: .random(in: 0...1), blue: .random(in: 0...1), alpha: 1), range: nsRange)
            attributedString.addAttribute(NSAttributedString.Key.font, value: UIFont(name: randomFont.randomElement() ?? "Impact" , size: .random(in: 15...40)) as Any, range: nsRange)
            attributedString.addAttribute(NSAttributedString.Key.underlineStyle, value: underLine.randomElement() as Any, range: nsRange)
        }
        
        labelText.attributedText = attributedString
    }
    
    @IBAction func buttonPressed(_ sender: UIButton) {
        attributedString()
    }
    
    @IBAction func defoltButtonPressed(_ sender: UIButton) {
        labelText.text = plainString
    }
    
    @IBAction func segmentedControlPressed(_ sender: UISegmentedControl) {
        if segmentedControl.selectedSegmentIndex == 0 {
            attributedString()
        } else {
            labelText.text = plainString
        }
    }
}
