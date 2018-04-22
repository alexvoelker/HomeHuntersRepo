import UIKit
import GoogleMaps

class DemoViewController: UIViewController{
    override func loadView() {
        let camera = GMSCameraPosition.camera(withLatitude: 1.285, longitude:103.848, zoom:12)
        let mapView = GMSMapView.map(withFrame: .zero, camera: camera)
        self.view = mapView
    }
}
