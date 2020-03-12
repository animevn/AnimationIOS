import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var imageView: UIView!
    @IBOutlet weak var image: UIImageView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.layer.borderColor = UIColor.red.cgColor
        imageView.layer.borderWidth = 0.5
        imageView.layer.cornerRadius = 10
    }
    
    private func fadeIn(){
        image.alpha = 0
        UIView.animate(withDuration: 2, animations: {self.image.alpha = 1})
    }

    @IBAction func onFadeInPressed(_ sender: UIButton) {
        fadeIn()
    }
    
    private func fadeOutIn(){
        UIView.animate(withDuration: 2, animations: {self.image.alpha = 0}, completion: {_ in
            UIView.animate(withDuration: 2, animations: {self.image.alpha = 1})
        })
    }
    
    @IBAction func onFadeOutInPressed(_ sender: UIButton) {
       fadeOutIn()
    }
    
    private func fadeOut(){
        UIView.animate(withDuration: 2,
                       animations: {self.image.alpha = 0},
                       completion: {_ in self.image.alpha = 1})
    }
    
    @IBAction func onFadeOutPressed(_ sender: UIButton) {
        fadeOut()
    }
    
    private func zoomIn(){
        UIView.animate(withDuration: 2, animations: {
            self.image.transform = CGAffineTransform(scaleX: 2, y: 2)}, completion: {_ in
                self.image.transform = CGAffineTransform(scaleX: 1, y: 1)
        })
    }
    
    @IBAction func onZoomInPressed(_ sender: UIButton) {
        zoomIn()
    }
    
    private func zoomInOut(){
           UIView.animate(withDuration: 2,
                          animations: {self.image.transform = CGAffineTransform(scaleX: 2, y: 2)},
                          completion: {_ in
                                UIView.animate(withDuration: 2, animations: {
                                    self.image.transform = CGAffineTransform(scaleX: 1, y: 1)})
           })
    }
    
    @IBAction func onZoomOutInPressed(_ sender: UIButton) {
        zoomInOut()
    }
    
    private func zoomOut(){
        image.transform = CGAffineTransform(scaleX: 2, y: 2)
        UIView.animate(withDuration: 2, animations: {
            self.image.transform = CGAffineTransform(scaleX: 1, y: 1)})
    }
    
    @IBAction func onZoomOutPressed(_ sender: UIButton) {
        zoomOut()
    }
    
    private func leftIn(){
        image.transform = CGAffineTransform(translationX: -100, y: 0)
        UIView.animate(withDuration: 2, animations: {
            self.image.transform = CGAffineTransform(translationX: 0, y: 0)
        })
    }
    
    @IBAction func onLeftInPressed(_ sender: UIButton) {
        leftIn()
    }
    
    private func topBot(){
        image.transform = CGAffineTransform(translationX: 0, y: -100)
        UIView.animate(withDuration: 2, animations: {
            self.image.transform = CGAffineTransform(translationX: 0, y: 0)
        })
    }
    
    @IBAction func onTopBotPressed(_ sender: UIButton) {
        topBot()
    }
    
    private func rightIn(){
        image.transform = CGAffineTransform(translationX: 100, y: 0)
        UIView.animate(withDuration: 2, animations: {
            self.image.transform = CGAffineTransform(translationX: 0, y: 0)
        })
    }
    
    @IBAction func onRightInPressed(_ sender: UIButton) {
        rightIn()
    }
    
    private func bounce(){
        UIView.animate(withDuration: 1,animations: {
            self.image.transform = CGAffineTransform(scaleX: 1, y: 1.5)}, completion: {_ in
                UIView.animate(withDuration: 1, animations: {
                    self.image.transform = CGAffineTransform(scaleX: 1, y: 0.5)
                }, completion: {_ in
                    UIView.animate(withDuration: 1, animations: {
                        self.image.transform = CGAffineTransform(scaleX: 1, y: 1)
                    })
                })
        })
    }
    
    @IBAction func onBouncePressed(_ sender: UIButton) {
        bounce()
    }
    
    private func flash(){
        var count:Double = 0
        (0...10).forEach{_ in
            Timer.scheduledTimer(withTimeInterval: Double(count*0.2), repeats: false, block: {_ in
                UIView.animate(withDuration: 0.1, animations: {self.image.alpha = 0}, completion: {_ in
                    UIView.animate(withDuration: 0.1, animations: {self.image.alpha = 1})
                })
            })
            count += 1
        }
    }
    
    @IBAction func onFlashPressed(_ sender: UIButton) {
        flash()
    }
    
    @IBAction func onRotateLeftPressed(_ sender: UIButton) {
    }
    
    @IBAction func onRotateRightPressed(_ sender: UIButton) {
    }
    
    
    
    
}



