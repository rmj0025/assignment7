//
//  SecondView.swift
//  assignment7
//
//  Created by user247998 on 2/25/24.
//

import UIKit

class SingleView: UIViewController {

    @IBOutlet weak var titleLabel: UILabel!
    
    @IBOutlet weak var authorLabel: UILabel!
    
    var bookAuthor : String = ""
    var bookTitle : String = ""
    
    override func viewDidLoad() {
        super.viewDidLoad()
        titleLabel.text = bookTitle
        authorLabel.text = bookAuthor
    }
    
    @IBAction func backToMainButton(_ sender: Any) {
        dismiss(animated: true)
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
