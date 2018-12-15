//
//  ViewController.swift
//  FragmenTable
//
//  Created by John Yorke on 15/12/2018.
//  Copyright © 2018 John Yorke. All rights reserved.
//

import UIKit

class GameViewController: UITableViewController {
    
    typealias GameConfigurableCell = TableFragment & GameConfigurable
    
    let game = Game.init(name: "Stardew Valley",
                         releaseDate: "2017",
                         platforms: ["PC","PS4","Nintendo Switch","Xbox One","Mac", "Vita", "iOS"],
                         imageName: "stardew")
    
    override func viewDidLoad() {
        super.viewDidLoad()
        GameFragmentLayout.allCases
            .compactMap { GameFragmentLayout.cellType(for: $0.rawValue).identifier() }
            .forEach {
                let nib = UINib(nibName: $0, bundle: nil)
                tableView.register(nib, forCellReuseIdentifier: $0)
        }
    }
    
    override func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return GameFragmentLayout.allCases.count
    }
    
    override func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cellType = GameFragmentLayout.cellType(for: indexPath.row)
        let cell = tableView.dequeueReusableCell(withIdentifier: cellType.identifier()) as! GameConfigurableCell
        cell.configure(with: game)
        return cell
    }
    
    override func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        let cellType = GameFragmentLayout.cellType(for: indexPath.row)
        return cellType.height()
    }
    
}

