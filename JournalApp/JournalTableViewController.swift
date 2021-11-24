//
//  JournalTableViewController.swift
//  JournalApp
//
//  Created by David Svensson on 2020-01-23.
//  Copyright © 2020 David Svensson. All rights reserved.
//

import UIKit

class JournalTableViewController: UITableViewController {
    
    
    let cellIdentity = "JournalEntryCell"
    
    let journalEntrySegueId = "showJournalEntry"
    let newEntrySegueId = "createJournalEntry"
    
    // var journalEntries = [JournalEntry]()
    
    let journal = Journal()
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        journal.add(entry: JournalEntry(content: "Hej"))
        journal.add(entry: JournalEntry(content: "Hej Hej"))
        
        
        // Uncomment the following line to preserve selection between presentations
        // self.clearsSelectionOnViewWillAppear = false
        
        // Uncomment the following line to display an Edit button in the navigation bar for this view controller.
        // self.navigationItem.rightBarButtonItem = self.editButtonItem
    }
    
    // MARK: - Table view data source
    
    override func numberOfSections(in tableView: UITableView) -> Int {
        // #warning Incomplete implementation, return the number of sections
        return 1
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        // #warning Incomplete implementation, return the number of rows
        return journal.count
    }
    
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: cellIdentity, for: indexPath)
        
        if let entry = journal.entry(index: indexPath.row) {
            cell.textLabel?.text = entry.date
        }
        
        return cell
    }
    
    func refresh() {
        tableView.reloadData()
    }
    
    
    // MARK: - Navigation
    
    // In a storyboard-based application, you will often want to do a little preparation before navigation
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        //        if segue.identifier == journalEntrySegueId {
        //            if let destinationVC = segue.destination as?  JournalEntryViewController {
        //                if let cell = sender as? UITableViewCell {
        //                    if let indexPath = tableView.indexPath(for: cell) {
        //                        if let entry = journal.entry(index: indexPath.row) {
        //                            destinationVC.journalEntry = entry
        //                        }
        //                    }
        //                }
        //            }
        //        }
        
        
        //        if segue.identifier == journalEntrySegueId {
        //            if let destinationVC = segue.destination as?  JournalEntryViewController,
        //                let cell = sender as? UITableViewCell,
        //                let indexPath = tableView.indexPath(for: cell),
        //                let entry = journal.entry(index: indexPath.row) {
        //                        destinationVC.journalEntry = entry
        //            }
        //        }
        print("Jounrnal count \(journal.count)")
       
        
        
        if segue.identifier == journalEntrySegueId {
            
            guard let destinationVC = segue.destination as?  JournalEntryViewController else {return}
            guard let cell = sender as? UITableViewCell else {return}
            guard let indexPath = tableView.indexPath(for: cell) else {return}
            guard let entry = journal.entry(index: indexPath.row) else {return}
                
            destinationVC.journalEntry = entry

        } else if segue.identifier == newEntrySegueId {
            guard let destinationVC = segue.destination as? NewJournalEntryViewController else {return}
            
            destinationVC.journal = journal
            destinationVC.journalVC = self
        }
        
    }
}
