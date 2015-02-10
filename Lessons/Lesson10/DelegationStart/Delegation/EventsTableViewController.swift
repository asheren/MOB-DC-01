import UIKit

<<<<<<< HEAD
class EventsTableViewController: UITableViewController, EventProtocol {
    // event array
    var arrEvents:[Event] = []
    
    //add ibaction to this
    func addEvent(sender: UIBarButtonItem) {
        let addEventViewController = self.storyboard?.instantiateViewControllerWithIdentifier("addEventVC") as AddEventViewController
        AddEventViewController.delegate = self
        let navigationController = UINavigationController(rootViewController: addEventViewController)
        self. presentViewController(navigationController, animated: true, completion: nil)
    }

    @IBAction func addEvent(sender: UIBarButtonItem) {
        let addEventViewController = self.storyboard?.instantiateViewControllerWithIdentifier("addEventVC") as AddEventViewController
        addEventViewController.delegate = self
        let navigationController = UINavigationController(rootViewController: addEventViewController)
        self.presentViewController(navigationController, animated: true, completion: nil)
=======
class MapViewController: UIViewController, UITextFieldDelegate, UITableViewDelegate, UITableViewDataSource {
    
    var dict = [["Dave": "DC"], ["Tedi": "NY"]]
    
    //var dictionary: [String: String] = ["Dave": "DC"]
    //var dictionaryArray = [dictionary]
    var textBoxOne = UITextField()
    var textBoxTwo = UITextField()
    var dictionaryTableView = UITableView()
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeTextBoxes()
        makeTableView()
        //var arrayOfDict = [dict]
        dictionaryTableView.dataSource = self
        self.dictionaryTableView.reloadData()
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "makeTextBoxesBlueNow:", name: UIKeyboardWillShowNotification, object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: "makeTextBoxesRedNow:", name: "makeTextBoxesRed", object: nil)
        
>>>>>>> 36d399bb434b2f598e596d1d7e96a4521391292a
    }
    
    func makeTextBoxesBlueNow (notification: NSNotification) {
        textBoxOne.backgroundColor = UIColor.blueColor()
        textBoxTwo.backgroundColor = UIColor.blueColor()
    }
<<<<<<< HEAD

    func addEvent(newEvent: Event) {
        arrEvents.append(newEvent)
    }
    // MARK: - Table view data source
    override func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
=======
    
    func makeTextBoxesRedNow (notification: NSNotification){
        textBoxOne.backgroundColor = UIColor.redColor()
        textBoxTwo.backgroundColor = UIColor.redColor()
>>>>>>> 36d399bb434b2f598e596d1d7e96a4521391292a
    }
    
    func makeTextBoxes() {
        //create text box one.
        textBoxOne = UITextField(frame: CGRect(x: self.view.frame.width * 0.05, y: 100, width: self.view.frame.width * 0.9, height: 40))
        textBoxOne.borderStyle = UITextBorderStyle.RoundedRect
        textBoxOne.backgroundColor = UIColor.whiteColor()
        textBoxOne.placeholder = ""
        textBoxOne.delegate = self
        self.view.addSubview(textBoxOne)
        
        //create text box two.
        textBoxTwo = UITextField(frame: CGRect(x: self.view.frame.width * 0.05, y: 150, width: self.view.frame.width * 0.90, height: 40))
        textBoxTwo.borderStyle = UITextBorderStyle.RoundedRect
        textBoxTwo.backgroundColor = UIColor.whiteColor()
        textBoxTwo.placeholder = ""
        textBoxTwo.delegate = self
        self.view.addSubview(textBoxTwo)
    }
    
<<<<<<< HEAD
<<<<<<< HEAD
   
=======
>>>>>>> 321f50e7312ea2bea9bcd16fde7052897e269cf3
    override func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
    let cell = tableView.dequeueReusableCellWithIdentifier("eventCell", forIndexPath: indexPath) as UITableViewCell
=======
    func textFieldShouldReturn(textField: UITextField) -> Bool {
        var name = String(self.textBoxOne.text)
        var location = String(self.textBoxTwo.text)
        var arrayOfDict = [dict]
        arrayOfDict.append([name: location])
        
        
        //dictionaryArray.append([self.textBoxOne.text: self.textBoxTwo.text])
        //dictionaryArray.append([String(self.textBoxOne.text): String(self.textBoxTwo.text)])
        //dictionary["\(self.textBoxOne.text)"] = "\(self.textBoxTwo.text)"
        dictionaryTableView.reloadData()
        println("\(arrayOfDict)")
        
        //send a notification to turn boxes red.
        NSNotificationCenter.defaultCenter().postNotificationName("makeTextBoxesRed", object: nil)
        textBoxTwo.resignFirstResponder()
        textBoxOne.text = ""
        textBoxTwo.text = ""
        
        return true
    }
>>>>>>> 36d399bb434b2f598e596d1d7e96a4521391292a
    
    func makeTableView() {
        dictionaryTableView = UITableView(frame: CGRect(x: self.view.frame.width * 0.05, y: 200, width: self.view.frame.width * 0.90, height: 100))
        dictionaryTableView.delegate = self
        dictionaryTableView.dataSource = self
        dictionaryTableView.reloadData()
        self.view.addSubview(dictionaryTableView)
        
    }
    
<<<<<<< HEAD
    let currentEvent = self.arrEvents[indexPath.row]
        cell.textLabel?.text = currentEvent.name
        cell.detailTextLabel?.text = currentEvent.location
    
    return cell
    }
<<<<<<< HEAD
=======

>>>>>>> 321f50e7312ea2bea9bcd16fde7052897e269cf3

}
=======
    func numberOfSectionsInTableView(tableView: UITableView) -> Int {
        return 1
    }
    
    func tableView(tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        println("about to count the items in dictionary array")
        println(arrayOfDict.count)
        return arrayOfDict.count
        
    }
    
    func tableView(tableView: UITableView, cellForRowAtIndexPath indexPath: NSIndexPath) -> UITableViewCell {
        
        let cell = tableView.dequeueReusableCellWithIdentifier("CellIdentifier") as? UITableViewCell ?? UITableViewCell(style: .Default, reuseIdentifier: "CellIdentifier")
        cell.textLabel?.text = self.arrayOfDict[indexPath.row]
        println("about to return cell")
        return cell
    }
    //    tableView
    
    func tableView(tableView: UITableView, commitEditingStyle editingStyle: UITableViewCellEditingStyle, forRowAtIndexPath indexPath: NSIndexPath) {
        
        if editingStyle == .Delete {
            //self.dictionaryArray.removeAtIndex(indexPath.row)
            tableView.deleteRowsAtIndexPaths([indexPath], withRowAnimation: .Fade)
            self.dictionary.count
        }
    }
    
}
>>>>>>> 36d399bb434b2f598e596d1d7e96a4521391292a
