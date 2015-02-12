
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
        
        self.view.addConstraints([bodyWidth, bodyVerticalPosition, bodyHorizontalPosition])
        
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
            toItem: leftArm,
            //starting at the top of the head
            attribute: NSLayoutAttribute.Height,
            multiplier: 1,
            constant: 30)
        
        let rightArmTop = NSLayoutConstraint(
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
            attribute: NSLayoutAttribute.Trailing,
            multiplier: 1,
            constant: -20)
        
        self.view.addConstraints([rightArmHeight, rightArmLeading, rightArmTrailing, rightArmTop])
        
        var leftLeg = UIView()
        leftLeg.backgroundColor = UIColor.blackColor()
        self.view.addSubview(leftLeg)
        
        leftLeg.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let leftLegHeight = NSLayoutConstraint(
            item: leftLeg,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.Height,
            multiplier: 1,
            constant: 120)
        
        let leftLegWidth = NSLayoutConstraint(
            item: leftLeg,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: body,
            attribute: NSLayoutAttribute.Width,
            multiplier: 1,
            constant: 0)
        
        let leftLegBottom = NSLayoutConstraint(
            item: leftLeg,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0)
        
        //trailing is in relation to the right side
        //leading is in relation to the left side
        
        let leftLegTrailing = NSLayoutConstraint(
            item: leftLeg,
            attribute: NSLayoutAttribute.Trailing,
            relatedBy: NSLayoutRelation.Equal,
            toItem: body,
            attribute: NSLayoutAttribute.Leading,
            multiplier: 1,
            constant: 0)
        
        self.view.addConstraints([leftArmHeight, leftLegBottom, leftLegWidth, leftLegTrailing])
        
        var rightLeg = UIView()
        rightLeg.backgroundColor = UIColor.blackColor()
        self.view.addSubview(rightLeg)
        
        rightLeg.setTranslatesAutoresizingMaskIntoConstraints(false)
        
        let rightLegHeight = NSLayoutConstraint(
            item: rightLeg,
            attribute: NSLayoutAttribute.Height,
            relatedBy: NSLayoutRelation.Equal,
            toItem: nil,
            attribute: NSLayoutAttribute.Height,
            multiplier: 1,
            constant: 120)
        
        let rightLegWidth = NSLayoutConstraint(
            item: rightLeg,
            attribute: NSLayoutAttribute.Width,
            relatedBy: NSLayoutRelation.Equal,
            toItem: body,
            attribute: NSLayoutAttribute.Width,
            multiplier: 1,
            constant: 0)
        
        let rightLegBottom = NSLayoutConstraint(
            item: rightLeg,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: self.view,
            attribute: NSLayoutAttribute.Bottom,
            multiplier: 1,
            constant: 0)
        
        //trailing is in relation to the right side
        //leading is in relation to the left side
        
        let rightLegLeading = NSLayoutConstraint(
            item: rightLeg,
            attribute: NSLayoutAttribute.Leading,
            relatedBy: NSLayoutRelation.Equal,
            toItem: body,
            attribute: NSLayoutAttribute.Trailing,
            multiplier: 1,
            constant: 0)
        
        self.view.addConstraints([rightLegBottom, rightLegHeight, rightLegLeading, rightLegWidth])
        
        let bodyBottomPosition = NSLayoutConstraint(
            item: body,
            attribute: NSLayoutAttribute.Bottom,
            relatedBy: NSLayoutRelation.Equal,
            toItem: leftLeg,
            attribute: NSLayoutAttribute.Top,
            multiplier: 1,
            constant: 0)
        self.view.addConstraint(bodyBottomPosition)
    }

}

