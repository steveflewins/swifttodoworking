import UIKit

@objc(XYZToDoListTableViewController) class XYZToDoListTableViewController: UITableViewController {
    
    // Properties
    var toDoItems: XYZToDoItem[] = []
    
    // Init
    init(coder aDecoder: NSCoder!) {
        super.init(coder: aDecoder)
        println("XYZToDoListTableViewController.init()")
    }
 
    // Called when a view under this controller's management is loaded.
    // This is the appropriate time to load in data and draw stuff.
    override func viewDidLoad() {
        super.viewDidLoad()
        println("viewDidLoad")
        loadInitialData()
    }
    
    // This lets another view (viewController?) revert back to this viewController, for like, going backwards or something. TODO: understand better.
    @IBAction func unwindToList(segue:UIStoryboardSegue) {
        println("XYZToDoListTableViewController.unwindToList()")
        var addView:XYZAddToDoItemViewController = segue.sourceViewController as XYZAddToDoItemViewController // Is this ok?
        var item:XYZToDoItem = addView.toDoItem
        if item.name.utf16count > 0 {
            toDoItems.append(item)
            tableView.reloadData()
        } else {
            println("No Item Name")
        }
    }

    // Load up the array with some fake data
    func loadInitialData() {
        toDoItems = [
            XYZToDoItem(name: "Thank a developer"),
            XYZToDoItem(name: "Call your mother"),
            XYZToDoItem(name: "See if Pluto is still real")
        ]
    }
    
    // How many sections are in the table view?
    override func numberOfSectionsInTableView(tableView: UITableView!) -> Int {
        return 1
    }
    
    // How many items are in each section?
    // TODO: I do not understand this syntax: `numberOfRowsInSection section: Int`
    //          is this a delegate? A named delegate?
    // Read: override this function tableView
    //       The function takes a tableview, which is an optional wrapped UITableView
    //       It also takes a numberOfRowsInSection section, which is an integer. ???
    override func tableView(tableView: UITableView?, numberOfRowsInSection section: Int) -> Int {
        return toDoItems.count
    }
    
    // Get the cell data at a row index
    override func tableView(tableView: UITableView?, cellForRowAtIndexPath indexPath: NSIndexPath?) -> UITableViewCell? {
        
//        let cell = tableView.dequeueReusableCellWithIdentifier("ListPrototypeCell", forIndexPath: indexPath) // boilerplate fails
        
        // http://stackoverflow.com/questions/24022763/uitableview-in-swift
        let cell = tableView!.dequeueReusableCellWithIdentifier("ListPrototypeCell") as? UITableViewCell
        let item = toDoItems[indexPath!.row]
        cell!.textLabel.text = item.name
        if item.completed {
            cell!.accessoryType = UITableViewCellAccessoryType.Checkmark
        } else {
            cell!.accessoryType = UITableViewCellAccessoryType.None
        }
        return cell
    }
    
    // when a table view item is selected
    override func tableView(tableView: UITableView?, didSelectRowAtIndexPath indexPath: NSIndexPath?) {
        tableView!.deselectRowAtIndexPath(indexPath, animated: false) // Deselect this cell, because it was just selected and we don't want to keep that state. :)
        let tappedItem = toDoItems[indexPath!.row]                    // Which item was tapped?
        tappedItem.completed = !tappedItem.completed                  // Toggle the completion state
        tableView!.reloadRowsAtIndexPaths([ indexPath! ], withRowAnimation: UITableViewRowAnimation.None) // Tell the table view to render the changed row
    }
}



