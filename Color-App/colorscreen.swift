//
//  colorscreen.swift
//  colorapp
//
//  Created by MacBook Pro on 12/07/2025.
//

import UIKit

class colorscreen: UIViewController {
    // variable to store ui color from mainscreen
    var color: UIColor?
    override func viewDidLoad() {
        super.viewDidLoad()
        //background color of color screen 
        view.backgroundColor = color ?? .black
        
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
