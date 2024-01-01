//
//  ViewController.swift
//  TravelBook
//
//  Created by Gizemnur Özden on 12.09.2023.
//

import UIKit
import MapKit //haritayı getirmek
import CoreLocation //anlık konumunu almak için
class ViewController: UIViewController, MKMapViewDelegate, CLLocationManagerDelegate { //mapdelegate haritayı getirmek için

    
    @IBOutlet weak var mapView: MKMapView!
    
    var locationManager = CLLocationManager() //konum almak istiyosam bunu tanımlamak zorundayım.
    
    override func viewDidLoad() {
        super.viewDidLoad()
       
        
        mapView.delegate = self //haritayı getirmek için
        locationManager.delegate = self //KULLANICI KONUMUNU ALMAK İÇİN
        locationManager.desiredAccuracy = kCLLocationAccuracyBest //kullanıcının konumunun ne kadar yakınını bulacağımızı söylüyoruz. best seçerek en iyisini istedik ama pil yiyor spesifik bir harita kullanmıcaksan tercih etmeyebilirsin.
        locationManager.requestWhenInUseAuthorization() //kullanıcıdan izin alıyorum.
        locationManager.startUpdatingLocation() //kullanıcnın yerini almaya başlıyorum.
        
        
        let gestureRecognizer = 
        
        
        
    }
    
    //güncellenen lokasyonları dizi içerisinde veren bir fonksiyonu çağırıyorum.
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        let location  = CLLocationCoordinate2D(latitude: locations[0].coordinate.latitude, longitude: locations[0].coordinate.longitude) //koordinatları alan kod enlem ve boylam
        let span = MKCoordinateSpan(latitudeDelta: 0.1, longitudeDelta: 0.1) //haritanın zoom seviyesini belirten kod
        let region = MKCoordinateRegion(center: location, span: span) //bölge
        mapView.setRegion(region, animated: true)
    }


}

 
