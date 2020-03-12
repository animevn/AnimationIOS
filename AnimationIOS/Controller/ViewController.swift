import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var stackView: UIStackView!
    @IBOutlet weak var imageView: UIView!
    @IBOutlet weak var image: UIImageView!
    
    let model = Model()
    
    override func viewWillTransition(to size: CGSize,
                                     with coordinator: UIViewControllerTransitionCoordinator) {
        coordinator.animate(alongsideTransition: {_ in
            let orientation = UIDevice.current.orientation
            if orientation.isPortrait{
                self.stackView.axis = .vertical
            }
            if orientation.isLandscape{
                self.stackView.axis = .horizontal
            }
        })
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        imageView.layer.borderColor = UIColor.black.cgColor
        imageView.layer.borderWidth = 0.5
        imageView.layer.cornerRadius = 10
    }
    
    @IBAction func onFadeInPressed(_ sender: UIButton) {
        model.fadeIn(image: image)
    }
    
    @IBAction func onFadeOutInPressed(_ sender: UIButton) {
        model.fadeOutIn(image: image)
    }
    
    @IBAction func onFadeOutPressed(_ sender: UIButton) {
        model.fadeOut(image: image)
    }
    
    @IBAction func onZoomInPressed(_ sender: UIButton) {
        model.zoomIn(image: image)
    }
    
    @IBAction func onZoomOutInPressed(_ sender: UIButton) {
        model.zoomInOut(image: image)
    }
    
    @IBAction func onZoomOutPressed(_ sender: UIButton) {
        model.zoomOut(image: image)
    }
    
    @IBAction func onLeftInPressed(_ sender: UIButton) {
        model.leftIn(image: image)
    }
    
    @IBAction func onTopBotPressed(_ sender: UIButton) {
        model.topBot(image: image)
    }
    
    @IBAction func onRightInPressed(_ sender: UIButton) {
        model.rightIn(image: image)
    }
    
    @IBAction func onBouncePressed(_ sender: UIButton) {
        model.bounce(image: image)
    }
    
    @IBAction func onFlashPressed(_ sender: UIButton) {
        model.flash(image: image)
    }
    
    @IBAction func onRotateLeftPressed(_ sender: UIButton) {
        model.rotateLeft(image: image)
    }
    
    @IBAction func onRotateRightPressed(_ sender: UIButton) {
        model.rotateRight(image: image)
    }
}



