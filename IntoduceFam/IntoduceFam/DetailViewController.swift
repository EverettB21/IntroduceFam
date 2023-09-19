//
//  DetailViewController.swift
//  IntoduceFam
//
//  Created by Everett Brothers on 9/19/23.
//

import UIKit

class DetailViewController: UIViewController {

    @IBOutlet weak var detailsLabel: UILabel!
    var details = ""
    
    init?(coder: NSCoder, text: String) {
        self.details = text
        super.init(coder: coder)
    }
    
    required init?(coder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        detailsLabel.text = details
        // Do any additional setup after loading the view.
    }
    

    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

}
