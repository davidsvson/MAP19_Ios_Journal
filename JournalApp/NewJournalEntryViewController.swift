//
//  NewJournalEntryViewController.swift
//  JournalApp
//
//  Created by David Svensson on 2020-01-24.
//  Copyright © 2020 David Svensson. All rights reserved.
//

import UIKit

class NewJournalEntryViewController: UIViewController {

    @IBOutlet weak var journalEntryText: UITextView!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        journalEntryText.becomeFirstResponder()
    }
    

    @IBAction func save(_ sender: UIBarButtonItem) {
        let entry = JournalEntry(content: journalEntryText.text)
        
        print(entry.content)
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
