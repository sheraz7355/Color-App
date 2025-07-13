//
//  mainscreen.swift
//  colorapp
//
//  Created by MacBook Pro on 12/07/2025.
//

import UIKit

class mainscreen: UIViewController ,UITableViewDataSource,UITableViewDelegate {
    //array storing random colors in colors array
    var colors:[UIColor] = []
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //function to add random colors at screen load
        addrandoms()
        
    }
    //prepare segue to send data to colorscreen
   override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
       //dest variable acts as object of colorscreen
        let destcolor=segue.destination as! colorscreen
       //now access to colorscreen color variable by destcolor object
       destcolor.color=sender as? UIColor
    }
    //function to add random colors in colors array
    func addrandoms(){
        for _ in 0...50{
            colors.append(.randomColor())
        }
        
    }
    //created function to show number of rows to create
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        //creatin rows dynamically according to number of colors in colors array
        colors.count
    }
    //created function for cell at row to store color
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //optional to save from crash on loading cells
        //dequereusable to reuse cells
        guard let cell=tableView.dequeueReusableCell(withIdentifier: "colorcell")else{
        return UITableViewCell()
    }
        //color variable stores colors according to row numbers
        let color=colors[indexPath.row]
        cell.backgroundColor=color
        return cell
}
    
    //func to send data of clicked  row to colorscreen as segue navigator named to colorscreen and sending data as color
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        let color=colors[indexPath.row]
        performSegue(withIdentifier: "tocolorscreen", sender: color)
    }
    
}
