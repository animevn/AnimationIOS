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
    
    
    
}



