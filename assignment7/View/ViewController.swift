//
//  ViewController.swift
//  assignment7
//
//  Created by user247998 on 2/25/24.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
       
    var bookLogic = BookLogic()
    
    var bookAuthor : String = ""
    var bookTitle : String = ""
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return bookLogic.getCount()
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "cell1", for: indexPath)
        var content = cell.defaultContentConfiguration()
        content.text = bookLogic.getTitle(indexPath.row)
        content.secondaryText = bookLogic.getAuthor(indexPath.row)
        cell.contentConfiguration = content
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        tableView.deselectRow(at: indexPath, animated: false)
        bookTitle = bookLogic.getTitle(indexPath.row)
        bookAuthor = bookLogic.getAuthor(indexPath.row)
        performSegue(withIdentifier: "toSingleView", sender: nil)
    }

    override func viewDidLoad() {
        super.viewDidLoad()
    }

    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        if segue.identifier == "toSingleView" {
            let navigation = segue.destination as! SingleView
            navigation.bookAuthor = bookAuthor
            navigation.bookTitle = bookTitle
        }
    }
}

