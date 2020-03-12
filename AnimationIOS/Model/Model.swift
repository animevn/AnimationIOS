import UIKit

struct Model{
    
    func fadeIn(image:UIImageView){
        image.alpha = 0
        UIView.animate(withDuration: 2, animations: {image.alpha = 1})
    }
    
    func fadeOutIn(image:UIImageView){
        UIView.animate(withDuration: 2, animations: {image.alpha = 0}, completion: {_ in
            UIView.animate(withDuration: 2, animations: {image.alpha = 1})
        })
    }
    
    func fadeOut(image:UIImageView){
        UIView.animate(withDuration: 2,
                       animations: {image.alpha = 0},
                       completion: {_ in image.alpha = 1})
    }
    
    func zoomIn(image:UIImageView){
        UIView.animate(withDuration: 2, animations: {
            image.transform = CGAffineTransform(scaleX: 2, y: 2)}, completion: {_ in
                image.transform = CGAffineTransform(scaleX: 1, y: 1)})
    }
    
    func zoomInOut(image:UIImageView){
           UIView.animate(withDuration: 2,
                          animations: {image.transform = CGAffineTransform(scaleX: 2, y: 2)},
                          completion: {_ in
                                UIView.animate(withDuration: 2, animations: {
                                    image.transform = CGAffineTransform(scaleX: 1, y: 1)})})
    }
    
    func zoomOut(image:UIImageView){
        image.transform = CGAffineTransform(scaleX: 2, y: 2)
        UIView.animate(withDuration: 2, animations: {
            image.transform = CGAffineTransform(scaleX: 1, y: 1)})
    }
    
    func leftIn(image:UIImageView){
        image.transform = CGAffineTransform(translationX: -100, y: 0)
        UIView.animate(withDuration: 2, animations: {
            image.transform = CGAffineTransform(translationX: 0, y: 0)})
    }
    
    func topBot(image:UIImageView){
        image.transform = CGAffineTransform(translationX: 0, y: -100)
        UIView.animate(withDuration: 2, animations: {
            image.transform = CGAffineTransform(translationX: 0, y: 0)})
    }
    
    func rightIn(image:UIImageView){
        image.transform = CGAffineTransform(translationX: 100, y: 0)
        UIView.animate(withDuration: 2, animations: {
            image.transform = CGAffineTransform(translationX: 0, y: 0)})
    }
    
    func bounce(image:UIImageView){
        UIView.animate(withDuration: 1,animations: {
            image.transform = CGAffineTransform(scaleX: 1, y: 1.5)}, completion: {_ in
                UIView.animate(withDuration: 1, animations: {
                    image.transform = CGAffineTransform(scaleX: 1, y: 0.5)
                }, completion: {_ in
                    UIView.animate(withDuration: 1, animations: {
                        image.transform = CGAffineTransform(scaleX: 1, y: 1)})
                })
        })
    }
    
    func flash(image:UIImageView){
        var count:Double = 0
        (0...10).forEach{_ in
            Timer.scheduledTimer(withTimeInterval: Double(count*0.2), repeats: false, block: {_ in
                UIView.animate(withDuration: 0.1, animations: {image.alpha = 0}, completion: {_ in
                    UIView.animate(withDuration: 0.1, animations: {image.alpha = 1})})
            })
            count += 1
        }
    }
    
    func rotateLeft(image:UIImageView){
        var count:Double = 0
        (0...1).forEach{_ in
            Timer.scheduledTimer(withTimeInterval: Double(count*2), repeats: false, block: {_ in
                UIView.animate(withDuration: 0.5, delay: 0,
                               options: UIView.AnimationOptions.curveLinear,
                               animations: {
                    image.transform = CGAffineTransform(rotationAngle: -CGFloat.pi/2)
                }, completion: {_ in
                    UIView.animate(withDuration: 0.5, delay: 0,
                                   options: UIView.AnimationOptions.curveLinear,
                                   animations: {
                        image.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
                    }, completion: {_ in
                        UIView.animate(withDuration: 0.5, delay: 0,
                                       options: UIView.AnimationOptions.curveLinear,
                                       animations: {
                            image.transform = CGAffineTransform(rotationAngle: CGFloat.pi/2)
                        }, completion: {_ in
                            UIView.animate(withDuration: 0.5, delay: 0,
                                           options: UIView.AnimationOptions.curveLinear,
                                           animations: {
                                image.transform = CGAffineTransform(rotationAngle: 0)})
                        })
                    })
                })
            })
            count += 1
        }
    }
    
    func rotateRight(image:UIImageView){
        var count:Double = 0
        (0...1).forEach{_ in
            Timer.scheduledTimer(withTimeInterval: Double(count*2), repeats: false, block: {_ in
                UIView.animate(withDuration: 0.5, delay: 0,
                               options: UIView.AnimationOptions.curveLinear,
                               animations: {
                    image.transform = CGAffineTransform(rotationAngle: CGFloat.pi/2)
                }, completion: {_ in
                    UIView.animate(withDuration: 0.5, delay: 0,
                                   options: UIView.AnimationOptions.curveLinear,
                                   animations: {
                        image.transform = CGAffineTransform(rotationAngle: CGFloat.pi)
                    }, completion: {_ in
                        UIView.animate(withDuration: 0.5, delay: 0,
                                       options: UIView.AnimationOptions.curveLinear,
                                       animations: {
                            image.transform = CGAffineTransform(rotationAngle: -CGFloat.pi/2)
                        }, completion: {_ in
                            UIView.animate(withDuration: 0.5, delay: 0,
                                           options: UIView.AnimationOptions.curveLinear,
                                           animations: {
                                image.transform = CGAffineTransform(rotationAngle: 0)})
                        })
                    })
                })
            })
            count += 1
        }
    }
}
