import UIKit
import Firebase
import FirebaseStorage

class UploadViewController: UIViewController {
    

    @IBOutlet weak var imageV: UIImageView!
    @IBOutlet weak var labelURL: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    

    @IBAction func onBtnUpload(_ sender: Any) {
        let storage = Storage.storage()
        let storageRef = storage.reference()
        let data = imageV.image!.pngData()
        
        //현재 시,분,초를 유니크한 이름으로 사용하기도 함
        let timeStamp = Int(NSDate.timeIntervalSinceReferenceDate*1000)
        let uniqueImageFileName = "myLove"+String(timeStamp)+".png"
        
        //올라갈 이미지의 이름을 지정함,
        let serverImageRef = storageRef.child(uniqueImageFileName)
        
        //메타데이터 추가
        let metadata = StorageMetadata()
        metadata.contentType = "image/png"
        
        let uploadTesk = serverImageRef.putData(data!, metadata: metadata) {
            (metadata, error) in
            guard let metadata = metadata else {
                return
            }
            let size = metadata.size
            serverImageRef.downloadURL(){
                (url, error) in
                guard let downloadURL = url else {
                    return
                }
                self.labelURL.text = downloadURL.absoluteString
                print(downloadURL.absoluteString)
            }
        }
        
    }
    
}
