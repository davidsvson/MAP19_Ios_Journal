//
//  JournalEntryViewController.swift
//  JournalApp
//
//  Created by David Svensson on 2020-01-23.
//  Copyright © 2020 David Svensson. All rights reserved.
//

import UIKit

class JournalEntryViewController: UIViewController {

    var journalEntry : JournalEntry?
    
    @IBOutlet weak var entryTextField: UITextView!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        self.title = journalEntry?.date
        entryTextField.text = journalEntry?.content
        
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
