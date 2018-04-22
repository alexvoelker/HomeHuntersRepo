import UIKit

class ScoreViewController:UIViewController{
    @IBOutlet var bedsField:UITextField!
    @IBOutlet var bathField:UITextField!
    @IBOutlet var sizeField:UITextField!
    @IBOutlet var moneyField:UITextField!
    @IBOutlet var ageField:UITextField!
    @IBOutlet var commuteField1:UITextField!
    @IBOutlet var commuteField2:UITextField!
    @IBOutlet var commuteField3:UITextField!
    @IBOutlet var commuteField4:UITextField!
    var commuteFactor:Float!
    @IBOutlet var score:UILabel!
    
    func computeCommuteAverage(){
        if(commuteField2.text! == "None" && commuteField4.text! != "None"){
            let x:Float = Float(commuteField1.text!)! + Float(commuteField3.text!)! + Float(commuteField4.text!)!
            commuteFactor = x/3
            
        }
        else if(commuteField4.text! == "None" && commuteField2.text! != "None"){
            let x:Float = Float(commuteField1.text!)! + Float(commuteField3.text!)! + Float(commuteField2.text!)!
            commuteFactor = x/3
        }
        else if(commuteField2.text! == "None" && commuteField4.text! == "None"){
            let x:Float = Float(commuteField1.text!)! + Float(commuteField3.text!)!
            commuteFactor = x/2
        }
        else{
            let x:Float = Float(commuteField1.text!)! + Float(commuteField3.text!)! + Float(commuteField2.text!)! + Float(commuteField4.text!)!
            commuteFactor = x/4
        }
    }
    override func viewDidLoad() {
        super.viewDidLoad()
        score.isHidden = true
        
    }
    
    @IBAction func goTapped(button:UIButton){
        computeCommuteAverage()
        let potentialHouse = Home()
        potentialHouse.initialize(newcomm: commuteFactor, newsize: (Float(sizeField.text!))!, newbeds: (Float(bedsField.text!))!, newbaths: (Float(bathField.text!))!, newage: (Float(ageField.text!))!, newprice: Float(moneyField.text!)!, newbob: Manager.shared.bob)
        potentialHouse.computeFinalScore()
        score.isHidden = false
        score.text = String(potentialHouse.score)
        
    }
    
    
    
    
    
    
    
    
}
