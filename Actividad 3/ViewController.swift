//
//  ViewController.swift
//  Actividad 3
//
//  Created by Alumno on 09/02/24.
//

import UIKit

class ViewController: UIViewController {

    @IBOutlet weak var RValue: UILabel!
    @IBOutlet weak var GValue: UILabel!
    @IBOutlet weak var BValue: UILabel!
    @IBOutlet weak var AValue: UILabel!
    @IBOutlet weak var R: UISlider!
    @IBOutlet weak var G: UISlider!
    @IBOutlet weak var B: UISlider!
    @IBOutlet weak var A: UISlider!
    @IBOutlet weak var Image: UIImageView!
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do any additional setup after loading the view
        colorchange()
    }

    @IBAction func RSlider(_ sender: Any) {
        RValue.text = String(R.value)
        Image.backgroundColor=UIColor(red: CGFloat(R.value)/255, green: CGFloat(G.value)/255, blue: CGFloat(B.value)/255, alpha: 1)
    }
    
    @IBAction func GSlider(_ sender: Any) {
        GValue.text = String(G.value)
        Image.backgroundColor=UIColor(red: CGFloat(R.value)/255, green: CGFloat(G.value)/255, blue: CGFloat(B.value)/255, alpha: 1)
    }
    @IBAction func BSlider(_ sender: Any) {
        BValue.text = String(B.value)
        Image.backgroundColor=UIColor(red: CGFloat(R.value)/255, green: CGFloat(G.value)/255, blue: CGFloat(B.value)/255, alpha: 1)
        
    }
    @IBAction func ASlider(_ sender: Any) {
        AValue.text = String(A.value)
        Image.alpha = CGFloat(A.value)
    }
    func colorchange(){
        Image.backgroundColor = UIColor.black
    }
}

