//
//  ViewController.swift
//  Lista-Peliculas
//
//  Created by Alumno on 10/10/23.
//

import UIKit

class ViewController: UIViewController, UITableViewDataSource, UITableViewDelegate {
    
    @IBOutlet weak var table: UITableView!
    
    struct Pelis {
        let title: String
        let imageName: String
        let textview: String
    }
    
    let data: [Pelis] = [
        Pelis(title: "Rio", imageName: "rio", textview: "Una pelicula de pájaros"),
        Pelis(title: "Rio 2", imageName: "rio2", textview: "Segunda parte de la pelicula de pájaros"),
        Pelis(title: "Spider-Man Into Universe", imageName: "spider1", textview: "Miles Morales"),
        Pelis(title: "Spider-Man Across the Spiderverse", imageName: "spider2", textview: "Miles morales 2"),
    ]
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        table.dataSource = self
        table.delegate = self
    }

    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return data.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let pelis = data[indexPath.row]
        let cell = table.dequeueReusableCell(withIdentifier: "cell", for: indexPath) as! CustomTableViewCell
        cell.label.text = pelis.title
        
        cell.iconImageView.image = UIImage(named: pelis.imageName)
        return cell
    }
    
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 140
    }
}

