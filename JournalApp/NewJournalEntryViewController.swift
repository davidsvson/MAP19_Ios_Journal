//
//  NewJournalEntryViewController.swift
//  JournalApp
//
//  Created by David Svensson on 2020-01-24.
//  Copyright © 2020 David Svensson. All rights reserved.
//

import UIKit

class NewJournalEntryViewController: UIViewController {

    @IBOutlet weak var navBar: UINavigationBar!
    
    @IBOutlet weak var journalEntryText: UITextView!
    
    var journal : Journal?
    
    var journalVC : JournalTableViewController?
    
    var entry = JournalEntry(content: "")

    override func viewDidLoad() {
        super.viewDidLoad()
        
        journalEntryText.becomeFirstResponder()
        //self.title = entry.date
        navBar.topItem?.title = entry.date
    }
    

    @IBAction func save(_ sender: UIBarButtonItem) {
        entry.content = journalEntryText.text
        journal?.add(entry: entry)
        
        journalVC?.refresh()
        dismiss(animated: true, completion: nil)
    }
    /*
    // MARK: - Navigation

    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        // Get the new view controller using segue.destination.
        // Pass the selected object to the new view controller.
    }
    */

    @IBAction func cancel(_ sender: UIBarButtonItem) {
        dismiss(animated: true, completion: nil)
    }
}
