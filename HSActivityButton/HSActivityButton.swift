/*
 Developed By: Hussaan S
 Email: hussaan.s@gmail.com
 */

import UIKit

class HSActivityButton: UIButton {

    fileprivate var activiyIndicator = UIActivityIndicatorView()
    fileprivate var buttonTitle: String!
    
    /*
     // Only override draw() if you perform custom drawing.
     // An empty implementation adversely affects performance during animation.
     override func draw(_ rect: CGRect) {
     // Drawing code
     }
     */
    
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
        activiyIndicator.isHidden = true
        self.addSubview(activiyIndicator)
    }
   
    override func awakeFromNib() {
        activiyIndicator.color = self.backgroundColor
        activiyIndicator.tintColor = self.tintColor
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        
        activiyIndicator.frame = CGRect(x: 0, y: 0, width: self.bounds.height/0.75, height: self.bounds.height/0.75)
        activiyIndicator.center = CGPoint(x: self.bounds.width/2, y: self.bounds.height/2)
    }
    
    var animate = false {
        didSet {
            if animate {
                startAnimation()
            } else {
                stopAnimation()
            }
            
        }
    }
    
    fileprivate func startAnimation() {
        
        self.buttonTitle = self.title(for: .normal)
        self.setTitle("", for: .normal)
        self.isUserInteractionEnabled = false
        activiyIndicator.isHidden = false
        activiyIndicator.startAnimating()
        
    }
    
    fileprivate func stopAnimation() {
        self.setTitle(self.buttonTitle, for: .normal)
        activiyIndicator.isHidden = true
        self.isUserInteractionEnabled = true
        activiyIndicator.stopAnimating()
    }
}
