//
//  ColorsTableVC.swift
//  RandomColor
//
//  Created by Konrad Tomczuk on 07/11/2022.
//

import UIKit

class ColorsTableVC: UIViewController {
   
    var colors: [UIColor] = []

    override func viewDidLoad() {
        super.viewDidLoad()
        addRandomColors()
    
    }
    
    func addRandomColors() {
        for _ in 0..<50 {
            colors.append(.random())
        }
        
    }
    
    
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let destVC = segue.destination as! ColorsDetailVC
        destVC.color = sender as? UIColor
    }
    
}



extension ColorsTableVC: UITableViewDelegate, UITableViewDataSource {
    
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return colors.count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        guard let cell = tableView.dequeueReusableCell(withIdentifier: "ColorCell") else {
            return UITableViewCell()
        }
        
        let color = colors[indexPath.row]
        cell.backgroundColor = color
        return cell
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color = colors[indexPath.row]
        performSegue(withIdentifier: "ToColorsDetailVC", sender: color)
        
    }
}
