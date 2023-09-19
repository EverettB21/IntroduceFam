//
//  ViewController.swift
//  IntoduceFam
//
//  Created by Everett Brothers on 9/19/23.
//

import UIKit

class ViewController: UIViewController {

    var str = ""
    var name = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view.
    }

    @IBSegueAction func detailSegue(_ coder: NSCoder) -> DetailViewController? {
        return DetailViewController(coder: coder, text: str)
    }
    
    @IBAction func famTapped(_ sender: UIButton) {
        switch sender.titleLabel?.text {
        case "Dad":
            name = "Dad"
            str = "My dad like to fish hunt and play sports with me, we go on trips for fishing and hunting alot as well"
            performSegue(withIdentifier: "toDetail", sender: nil)
        case "Mom":
            name = "Mom"
            str = "My mom likes to be outdoors and go on hikes, she also likes to go on hunts even though she doesn't shoot anything"
            performSegue(withIdentifier: "toDetail", sender: nil)
        case "Me":
            name = "Me"
            str = "I like to hunt and go fishing with my family, I also like to play lacrosse and go to the gym"
            performSegue(withIdentifier: "toDetail", sender: nil)
        case "Reis":
            name = "Reis"
            str = "Reis likes to play football and volleyball, and is super athletic, he just turned 16"
            performSegue(withIdentifier: "toDetail", sender: nil)
        case "Spencer":
            name = "Spencer"
            str = "Spencer likes to hang out with friends, watch her shows, and play soccer. She plays for the utah storm team"
            performSegue(withIdentifier: "toDetail", sender: nil)
        case "Vaughn":
            name = "Vaughn"
            str = "Vaughn likes to play soccer and do anything adventurous. He also loves playing fortnite and watching henry danger"
            performSegue(withIdentifier: "toDetail", sender: nil)
        default:
            str = "ERROR"
            break
        }
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        segue.destination.navigationItem.title = name
    }
}

