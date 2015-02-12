
import UIKit

class ViewController: UIViewController {

    @IBOutlet var head: UIView!
    
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view, typically from a nib.
        
        var body = UIView()
        body.backgroundColor = UIColor.greenColor()
        
        //default to using autocorrect
        body.setTranslatesAutoresizingMaskIntoConstraints(false)

        self.view.addSubview(body)
    
        // Constraints for the body
        let bodyWidth = NSLayoutConstraint(
            item: body,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            
            // if the size is static, then toItem would be nil
            toItem: self.head,
            attribute: NSLayoutAttribute.Width,
            multiplier: 0.5,
            constant: 0.0)
        
        let bodyVerticalPosition = NSLayoutConstraint(
            item: body,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1.0,
            constant: 0.0)
        
        let bodyHorizontalPosition = NSLayoutConstraint(
            item: body,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Leading,
            multiplier: 1.0,
            constant: self.head.frame.width/4)
        
        let bodyHeight = NSLayoutConstraint(
            item: body,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.head,
            attribute: NSLayoutAttribute.Height,
            multiplier: 2.0,
            constant: 0)
        
        self.view.addConstraints([bodyWidth, bodyVerticalPosition, bodyHorizontalPosition, bodyHeight])
        
        var leftArm = UIView()
        body.backgroundColor = UIColor.blackColor()
        self.view.addSubview(leftArm)
        leftArm.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let leftArmHeight = NSLayoutConstraint(
            item: leftArm,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            //laying out the top of the body
            toItem: nil,
            //starting at the top of the head
            attribute: NSLayoutAttribute.Height,
            multiplier: 1,
            constant: 30)
        
        let leftArmVerticalPosition = NSLayoutConstraint(
            item: leftArm,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            //laying out the top of the body
            toItem: self.head,
            //starting at the top of the head
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0)
        
        let leftArmLeading = NSLayoutConstraint(
            item: leftArm,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            //will be self.view because you're referencing the whole view not the head
            toItem: self.view,
            attribute: NSLayoutAttribute.Leading,
            multiplier: 1,
            constant: 20)
        
        let leftArmTrailing = NSLayoutConstraint(
            item: leftArm,
            attribute: NSLayoutAttribute.Trailing,
            relatedBy: NSLayoutRelation.Equal,
            //will be body because you're connecting the arm to the body
            toItem: body,
            attribute: NSLayoutAttribute.Left,
            multiplier: 1,
            constant: 0)
        
        self.view.addConstraints([leftArmHeight, leftArmLeading, leftArmTrailing, leftArmVerticalPosition])

        var rightArm = UIView()
        body.backgroundColor = UIColor.yellowColor()
        self.view.addSubview(rightArm)
        rightArm.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let rightArmHeight = NSLayoutConstraint(
            item: rightArm,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            //laying out the top of the body
            toItem: nil,
            //starting at the top of the head
            attribute: NSLayoutAttribute.Height,
            multiplier: 1,
            constant: 30)
        
        let rightArmVerticalPosition = NSLayoutConstraint(
            item: rightArm,
            attribute: NSLayoutAttribute.Top,
            relatedBy: NSLayoutRelation.Equal,
            //laying out the top of the body
            toItem: self.head,
            //starting at the top of the head
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0)
        
        let rightArmTrailing = NSLayoutConstraint(
            item: rightArm,
            attribute: NSLayoutAttribute.Trailing,
            relatedBy: NSLayoutRelation.Equal,
            //will be self.view because you're referencing the whole view not the head
            toItem: self.view,
            attribute: NSLayoutAttribute.Left,
            multiplier: 1,
            constant: 0)
        
        let rightArmLeading = NSLayoutConstraint(
            item: rightArm,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            //will be body because you're connecting the arm to the body
            toItem: body,
            attribute: NSLayoutAttribute.Leading,
            multiplier: 1,
            constant: 20)
        
        self.view.addConstraints([rightArmHeight, rightArmLeading, rightArmTrailing, rightArmVerticalPosition])
    }

}

