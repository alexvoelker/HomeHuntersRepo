import UIKit

class SurveyViewController: UIViewController{
    
    // Priorities for each algorithmic factor
    @IBOutlet var bedroomPField:UITextField!
    @IBOutlet var commutePField:UITextField!
    @IBOutlet var bathroomsPField:UITextField!
    @IBOutlet var agePField:UITextField!
    @IBOutlet var pricePField:UITextField!
    @IBOutlet var sizePField:UITextField!
    
    // Mins and Maxes for all algorithmic factors
    @IBOutlet var bedroomMinField:UITextField!
    @IBOutlet var bathroomsMinField:UITextField!
    @IBOutlet var bedroomMaxField:UITextField!
    @IBOutlet var bathroomsMaxField:UITextField!
    @IBOutlet var priceMinField:UITextField!
    @IBOutlet var sizeMinField:UITextField!
    @IBOutlet var priceMaxField:UITextField!
    @IBOutlet var sizeMaxField:UITextField!
    @IBOutlet var ageMinField:UITextField!
    @IBOutlet var ageMaxField:UITextField!
    @IBOutlet var commuteMinField:UITextField!
    @IBOutlet var commuteMaxField:UITextField!
    
    // Addresses for Google Maps API (Used for commute score)
    @IBOutlet var addressWorkField1:UITextField!
    @IBOutlet var addressWorkField2:UITextField!
    @IBOutlet var schoolField1:UITextField!
    @IBOutlet var schoolField2:UITextField!
    
    @IBOutlet var goButton:UIButton!
    
    @IBAction func goTapped(button:UIButton){
        Manager.shared.bob.bedroomPField = 10.0
        
        
        
        Manager.shared.bob.bedroomPField = Float(bedroomPField.text!)
        Manager.shared.bob.bathroomsPField = Float(bathroomsPField.text!)
        Manager.shared.bob.agePField = Float(agePField.text!)
        Manager.shared.bob.pricePField = Float(pricePField.text!)
        Manager.shared.bob.sizePField = Float(sizePField.text!)
        Manager.shared.bob.commutePField = Float(commutePField.text!)
        
        Manager.shared.bob.bedroomMaxField = Float(bedroomMaxField.text!)
        Manager.shared.bob.bedroomMinField = Float(bedroomMinField.text!)
        Manager.shared.bob.priceMaxField = Float(priceMaxField.text!)
        Manager.shared.bob.priceMinField = Float(priceMinField.text!)
        Manager.shared.bob.ageMaxField = Float(ageMaxField.text!)
        Manager.shared.bob.ageMinField = Float(ageMinField.text!)
        Manager.shared.bob.commuteMaxField = Float(commuteMaxField.text!)
        Manager.shared.bob.commuteMinField = Float(commuteMinField.text!)
        Manager.shared.bob.sizeMaxField = Float(sizeMaxField.text!)
        Manager.shared.bob.sizeMinField = Float(sizeMinField.text!)
        Manager.shared.bob.bathroomsMaxField = Float(bathroomsMaxField.text!)
        Manager.shared.bob.bathroomsMinField = Float(bathroomsMinField.text!)
        
        Manager.shared.bob.addressWorkField1 = String(addressWorkField1.text!)
        Manager.shared.bob.addressWorkField2 = String(addressWorkField2.text!)
        Manager.shared.bob.schoolField1 = String(schoolField1.text!)
        Manager.shared.bob.schoolField2 = String(schoolField2.text!)
        
        print("Data setup success")
    
    }
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
    }
}
