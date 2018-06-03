
import UIKit
import MapKit

class ViewController: UIViewController, MKMapViewDelegate {
    
    @IBOutlet weak var mapview:MKMapView!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        mapview.delegate = self
        
        //Simple :-
                let location : CLLocationCoordinate2D = CLLocationCoordinate2DMake(23.0225, 72.5714)
                let location2 : CLLocationCoordinate2D = CLLocationCoordinate2DMake(24.000 , 73.0000)
        
                let span : MKCoordinateSpan = MKCoordinateSpanMake(1, 1)
                let region : MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        
                mapview.setRegion(region, animated: true)
        
                let annotation = MKPointAnnotation()
                annotation.coordinate = location
                annotation.title = "My Home"
                annotation.subtitle = "Come Visit Me Here!"
        
                let annotation2 = MKPointAnnotation()
                annotation2.coordinate = location2
                annotation2.title = "Hotel Taj"
                annotation2.subtitle = "Come Visit Me Here!"
        
                mapview.addAnnotations([annotation,annotation2])
        
        
//        let arr : Array = [
//            ["longitude":23.0225, "latitude" : 73.0000, "Title" : "Home", "message" : "Visit My Home"],
//            ["longitude":22.3039, "latitude" : 70.8022, "Title" : "Office", "message" : "Visit my office"],["longitude":24.0100, "latitude" : 73.0000, "Title" : "Company", "message" : "Visit MY Company"]]
//
//        for b in arr {
//
//            let location = CLLocationCoordinate2DMake(b["latitude"] as! CLLocationDegrees, b["longitude"] as! CLLocationDegrees)
//
//            let span:MKCoordinateSpan = MKCoordinateSpanMake(1, 1)
//
//            let region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
//
//            mapview.setRegion(region, animated: true)
//
//            let mannotation = MyAnnotation(title: b["Title"] as! String, coordinate: location, subtitle: b["message"] as! String)
//            mapview.addAnnotation(mannotation)
//        }
        
        
        // With Class

        
        //        let location : CLLocationCoordinate2D = CLLocationCoordinate2DMake(23.0225, 72.5714)
        //        let location2 : CLLocationCoordinate2D = CLLocationCoordinate2DMake(24.000 , 73.0000)
        //
        //        let span:MKCoordinateSpan = MKCoordinateSpanMake(1, 1)
        //
        //        let region:MKCoordinateRegion = MKCoordinateRegionMake(location, span)
        //
        //        mapview.setRegion(region, animated: true)
        //
        //        let myAn1 = MyAnnotation(title: "Office", coordinate: location, subtitle: "My_Office")
        //        let myAn2 = MyAnnotation(title: "Office 1", coordinate: location2, subtitle: "MyOffice 1");
        //
        //        mapview.addAnnotations([myAn1,myAn2])
    }
    
        func mapView(_ mapView: MKMapView, viewFor annotation: MKAnnotation) -> MKAnnotationView? {
            let annotationview = MKAnnotationView.init(annotation: annotation, reuseIdentifier: "PayPal")
            annotationview.image = UIImage(named: "paypal")
            let transform = CGAffineTransform(scaleX: 0.1, y: 0.1)
            annotationview.transform = transform
            return annotationview
        }
}

