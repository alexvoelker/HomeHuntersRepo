import UIKit

class Home{
    var commute:Float!
    var size:Float!
    var beds:Float!
    var baths:Float!
    var age:Float!
    var price:Float!
    var priceSizeRatio:Float!
    
    var score:Int!
    func initialize(newcomm:Float, newsize:Float, newbeds:Float, newbaths:Float, newage:Float, newprice:Float!, newbob:User){
        commute = newcomm
        size = newsize
        beds = newbeds
        baths = newbaths
        age = newage
        price = newprice
        priceSizeRatio = Float(price/size)
    }
    func computeScoreFactor(min1:Float, max1:Float, preference:Float, value:Float) -> Float{
        var actualValue:Float!
        var actualMax:Float!
        var actualMin:Float!
        if(value == price){
            actualValue = -Float(value/100000)
            actualMax = Float(max1/100000)
            actualMin = Float(min1/100000)
            
        }
        else if(value == commute){
            actualValue = -Float(value/10)
            actualMax = Float(max1/10)
            actualMin = Float(min1/10)
        }
        else if(value == size){
            actualValue = Float(value/100)
            actualMax = Float(max1/100)
            actualMin = Float(min1/100)
        }
        else if(value == age){
            actualValue = -Float(value/10)
            actualMax = Float(max1/10)
            actualMin = Float(min1/10)
        }
        else{
            actualValue = value
            actualMax = max1
            actualMin = min1
        }
        var shitScore:Float = 0.0
        if(actualValue<actualMin){
            let difference:Float = actualMin-actualValue
            shitScore = Float((-difference/actualMax)*preference)
        }
        else if(actualValue>actualMax){
            let diff2:Float = actualValue-actualMax
            shitScore = Float((-diff2/actualMax)*preference)
        }
        else{
            shitScore = Float((actualValue/actualMax)*preference)
        }
        return shitScore
    }
    func computeFinalScore(){
        let bedsScore:Float = computeScoreFactor(min1: Manager.shared.bob.bedroomMinField, max1: Manager.shared.bob.bedroomMaxField, preference: Manager.shared.bob.bedroomPField, value: beds)
        let bathScore:Float = computeScoreFactor(min1: Manager.shared.bob.bathroomsMinField, max1: Manager.shared.bob.bathroomsMaxField, preference: Manager.shared.bob.bathroomsPField, value: baths)
        let ageScore:Float = computeScoreFactor(min1: Manager.shared.bob.ageMinField, max1: Manager.shared.bob.ageMaxField, preference: Manager.shared.bob.agePField, value: age)
        let priceScore:Float = computeScoreFactor(min1: Manager.shared.bob.priceMinField, max1: Manager.shared.bob.priceMaxField, preference: Manager.shared.bob.pricePField, value: price)
        let sizeScore:Float = computeScoreFactor(min1: Manager.shared.bob.sizeMinField, max1: Manager.shared.bob.sizeMaxField, preference: Manager.shared.bob.sizePField, value: size)
        let commuteScore:Float = computeScoreFactor(min1: Manager.shared.bob.commuteMinField, max1: Manager.shared.bob.commuteMaxField, preference: Manager.shared.bob.commutePField, value: commute)
        score = 162 + Int(bedsScore + bathScore + ageScore + priceScore + sizeScore + commuteScore)
        
    }
}
