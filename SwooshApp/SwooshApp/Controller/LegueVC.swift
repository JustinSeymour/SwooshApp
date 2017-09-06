//
//  LegueVC.swift
//  SwooshApp
//
//  Created by Justin Seymour on 2017/08/18.
//  Copyright © 2017 Justin Seymour. All rights reserved.
//

import UIKit

class LegueVC: UIViewController {
    
    var player: Player!
    
    @IBOutlet weak var nextBtn: ButtonBorder!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        player = Player()
    }
    
    @IBAction func onNextTapped(_ sender: Any) {
        performSegue(withIdentifier: "SkillVCSegue", sender: self)
    }
    
    @IBAction func onMensTapped(_ sender: Any) {
        selectedLegue(legueType: "Mens")
    }
    
    @IBAction func onWomensTapped(_ sender: Any) {
        selectedLegue(legueType: "Womens")
    }
    
    @IBAction func onCoedTapped(_ sender: Any) {
        selectedLegue(legueType: "Coed")
    }
    
    func selectedLegue (legueType: String) {
        player.desiredLeague = legueType
        nextBtn.isEnabled = true
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if let skillVC = segue.destination as? SkillVC {
            skillVC.player = player
        }
    }
}
