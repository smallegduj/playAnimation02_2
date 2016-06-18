import UIKit

class ViewController: UIViewController {

    
    @IBOutlet var arrow: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }

    
    @IBAction func play(sender: AnyObject) {

        UIView.animateKeyframesWithDuration(4, delay: 0, options: [], animations: {
            
            UIView.addKeyframeWithRelativeStartTime(0, relativeDuration: 0.25, animations: {
                self.arrow.center.x += 200
            })
            UIView.addKeyframeWithRelativeStartTime(0.25, relativeDuration: 0.25, animations: {
                self.arrow.center.y += 100
            })
            UIView.addKeyframeWithRelativeStartTime(0.5, relativeDuration: 0.25, animations: {
                self.arrow.center.x -= 200
            })
            UIView.addKeyframeWithRelativeStartTime(0.75, relativeDuration: 0.25, animations: {
                self.arrow.center.y -= 100
            })
            }, completion: nil)
    }

}

