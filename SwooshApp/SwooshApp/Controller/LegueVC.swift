//
//  LegueVC.swift
//  SwooshApp
//
//  Created by Justin Seymour on 2017/08/18.
//  Copyright © 2017 Justin Seymour. All rights reserved.
//

import UIKit

class LegueVC: UIViewController {
    
    @IBOutlet weak var nextButton: ButtonBorder!
    
    var player: Player!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }

    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectLegue(legueType: "mens")
    }
    
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectLegue(legueType: "womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectLegue(legueType: "coed")
    }
    
    func selectLegue (legueType: String) {
        player.desiredLeagues = legueType
        nextButton.isEnabled = true
    }
    
    
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destinationViewController.
        // Pass the selected object to the new view controller.
    }
    */

}
