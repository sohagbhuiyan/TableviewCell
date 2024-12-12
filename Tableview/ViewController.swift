
import UIKit

class ViewController: UIViewController ,UITableViewDelegate, UITableViewDataSource {

    @IBOutlet var tableView:UITableView!
    let myData = [
    "sohag bhuiyan",
    "ashir khan",
    "swift ios",
    "java OOP",
    "Django python"
    ]
    
    let images = [
    UIImage(named: "road"),
    UIImage(named: "nature"),
    UIImage(named: "sea"),
    UIImage(named: "nature"),
    UIImage(named: "road"),

    ]
    override func viewDidLoad() {
        super.viewDidLoad()
        let nib = UINib(nibName: "DemoTableViewCell", bundle: nil)
        tableView.register(nib, forCellReuseIdentifier: "DemoTableViewCell")
        tableView.delegate = self
        tableView.dataSource = self
    }
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return myData.count
    }
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(
            withIdentifier:"DemoTableViewCell",for: indexPath)
            as! DemoTableViewCell
        
        cell.myLabel.text = myData[indexPath.row]
        cell.myImageView.image = self.images[indexPath.row]
        return cell
    }
}

