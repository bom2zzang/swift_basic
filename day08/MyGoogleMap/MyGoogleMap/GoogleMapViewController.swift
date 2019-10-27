import UIKit
import GoogleMaps
import CoreLocation //GPS를 이용하여 현재위치를 가져옴

class GoogleMapViewController: UIViewController, CLLocationManagerDelegate, GMSMapViewDelegate {
    
    //구글: 구글맵
    var mapView : GMSMapView!
    //애플: GPS위치를 관리하는 클래스 객체
    var locationManager = CLLocationManager()
    //구글: 위도,경도(GPS좌표)를 행정주소로 바꿔주는 클래스
    var geocoder = GMSGeocoder()

    override func viewDidLoad() {
        super.viewDidLoad()
        
        initMapView()
        initLocationManager()

    }
    
    func initMapView() {
        mapView = GMSMapView()
    
        let camera = GMSCameraPosition.camera(withLatitude: 0, longitude: 0, zoom: 15)
        mapView.camera = camera
        //현재 위치 아이콘 출력
        mapView.settings.myLocationButton = true
        mapView.isMyLocationEnabled = true
        
        mapView.delegate = self
        
        self.view = mapView
    }
    
    func initLocationManager() {
        //위치추적 : GPS, Wifi중계기, 셀룰러기지국 삼각좌표
        //GPS정확도 : 10~100미터
        locationManager.desiredAccuracy = kCLLocationAccuracyBest
        locationManager.delegate = self
        //위치정보 사용팝업 알림
        locationManager.requestWhenInUseAuthorization()
        //위치정보 가져오기 시작! -> 딜레이 발생함
        locationManager.startUpdatingLocation()
        
    }
    
    //위치가 업데이트 될 때마다 호출 (딜레이 발생하니까)
    func locationManager(_ manager: CLLocationManager, didUpdateLocations locations: [CLLocation]) {
        if let coordi = manager.location?.coordinate {
            print("위도:"+String(coordi.latitude) + "경도:"+String(coordi.longitude))
            //위치가 업데이트되었기 때문에 구글 맵의 중심 이동.
            let camera = GMSCameraPosition.camera(withLatitude: coordi.latitude, longitude: coordi.longitude, zoom: 15)
            mapView?.camera = camera
            //구글맵부드럽게이동
            mapView?.animate(to: camera)
        }
    }
    
    //구글맵이 이동하기 전에 한번 호출됨.
    func mapView(_ mapView: GMSMapView, willMove gesture: Bool) {
        //pin을 지워줌
        mapView.clear()
        
    }
            
    //구글맵이 이동하고나서 정지된 후 잠시 후 호출됨.
    func mapView(_ mapView: GMSMapView, idleAt position: GMSCameraPosition) {
        //position은 이동된 구글맵의 중심점 좌표.
        //지오코더를 이용하여 행정주소를 가져오고, 핀에 정보를 추가해 줌.
        geocoder.reverseGeocodeCoordinate(position.target){
            //후행 클로저
            (response, error) in
            guard error == nil else {
                return
            }
            if let result = response?.firstResult() {
                let marker = GMSMarker()
                marker.position = position.target
                marker.title = "myHome"
                marker.snippet = result.lines?[0] //행정주소 문자열
                marker.map = mapView
            }
        
        }
    }


}
