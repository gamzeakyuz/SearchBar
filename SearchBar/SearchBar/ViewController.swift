//
//  ViewController.swift
//  SearchBar
//
//  Created by Gamze Akyüz on 12.01.2024.
//

import UIKit

class ViewController: UIViewController, UISearchBarDelegate{

    @IBOutlet weak var search: UISearchBar!
    
    override func viewDidLoad() {
        super.viewDidLoad()

        search.delegate = self
        search.scopeButtonTitles = ["First","Second"]

    }
    func searchBar(_ searchBar: UISearchBar, textDidChange searchText: String) {
        print("Search : \(searchText)")
    }
    func searchBarCancelButtonClicked(_ searchBar: UISearchBar) {
        print("Cancel Selected")
        search.text = ""
    }
    func searchBar(_ searchBar: UISearchBar, selectedScopeButtonIndexDidChange selectedScope: Int) {
        if selectedScope == 0 {
            print("First Scope")
        }
        if selectedScope == 1 {
            print("Second Scope")
        }
    }

}

