import UIKit
import MobileCoreServices   //카메라,포토앨범 기능 추가
import AVKit

class ViewController: UIViewController, UIImagePickerControllerDelegate, UINavigationControllerDelegate  {

    @IBOutlet weak var imageView: UIImageView!
    let imagePickerVC : UIImagePickerController! = UIImagePickerController()
    //선택한이미지데이터
    var captureImage : UIImage!
    //포토앨범
    var flagImageSaved = false;
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }

    @IBAction func onBtnGallery(_ sender: Any) {
        //SDK가 지원하는 기본 이미지 선택 화면
        //포토앨범에 접근가능한지?
        if(UIImagePickerController.isSourceTypeAvailable(.photoLibrary)){
            flagImageSaved = false
            
            imagePickerVC.delegate = self
            imagePickerVC.sourceType = .photoLibrary
            imagePickerVC.mediaTypes = [kUTTypeImage as String]
            //잘라내기 편집 가능하도록
            imagePickerVC.allowsEditing = true
            
            //팝업화면
            present(imagePickerVC, animated: true, completion: nil)
            
        }else{
            print("포토앨범에 접근할 수 없습니다.")
        }
        
    }
    
    @IBAction func onBtnCamera(_ sender: UIButton) {
        
        if(UIImagePickerController.isSourceTypeAvailable(.camera)){
                   flagImageSaved = true
                   
                   imagePickerVC.delegate = self
                   imagePickerVC.sourceType = .camera
                   imagePickerVC.mediaTypes = [kUTTypeImage as String]
                   //잘라내기 편집 가능하도록
                   imagePickerVC.allowsEditing = true
                   
                   //팝업화면
                   present(imagePickerVC, animated: true, completion: nil)
                   
               }else{
                   print("카메라에 접근할 수 없습니다.")
               }
        
    }
    
    
    
    func imagePickerController(_ picker: UIImagePickerController, didFinishPickingMediaWithInfo info: [UIImagePickerController.InfoKey : Any]) {
        let mediaType = info[UIImagePickerController.InfoKey.mediaType] as! NSString
        
        if mediaType.isEqual(to: kUTTypeImage as NSString as String){

            if let editedImage = info[UIImagePickerController.InfoKey.editedImage] as? UIImage {
                imageView.image = editedImage
                captureImage = editedImage
            }
            else if let originalImage = info[UIImagePickerController.InfoKey.originalImage] as? UIImage {
                imageView.image = originalImage
                captureImage = originalImage
            }
            
            if flagImageSaved {
                //가져온 이미지를 포토앨범에 저장 > 카메라에서 가져온 이미지라면,
                UIImageWriteToSavedPhotosAlbum(captureImage, self, nil, nil)
            }

            self.dismiss(animated: true, completion: nil)

        } else {
             

            let videoURL = (info[UIImagePickerController.InfoKey.mediaURL] as! URL)
            self.dismiss(animated: true) {
                let player = AVPlayer(url: videoURL)
                let vcPlayer = AVPlayerViewController()
                vcPlayer.player = player
                self.present(vcPlayer, animated:true, completion:nil)
            }
            UISaveVideoAtPathToSavedPhotosAlbum(videoURL.relativePath, self, nil, nil)
            
 
                
            
        }
        

        

    }
    
    func imagePickerControllerDidCancel(_ picker: UIImagePickerController) {
        //취소 시 닫음.
        self.dismiss(animated: true, completion: nil)
        
    }
    
    
    @IBAction func onBtnMovieLoad(_ sender: Any) {
        
        if(UIImagePickerController.isSourceTypeAvailable(.photoLibrary)){
            flagImageSaved = false
            
            imagePickerVC.delegate = self
            imagePickerVC.sourceType = .photoLibrary
            imagePickerVC.mediaTypes = [kUTTypeMovie as String]
            //잘라내기 편집 가능하도록
            imagePickerVC.allowsEditing = false
            
            //팝업화면
            present(imagePickerVC, animated: true, completion: nil)
            
        }else{
            print("비디오앨범에 접근할 수 없습니다.")
        }
        
    }
    
    
    @IBAction func onBtnMovieRecord(_ sender: Any) {
        
        if(UIImagePickerController.isSourceTypeAvailable(.camera)){
            flagImageSaved = true
            
            imagePickerVC.delegate = self
            imagePickerVC.sourceType = .camera
            imagePickerVC.mediaTypes = [kUTTypeMovie as String]
            //잘라내기 편집 가능하도록
            imagePickerVC.allowsEditing = false
            
            //팝업화면
            present(imagePickerVC, animated: true, completion: nil)
            
        }else{
            print("카메라에 접근할 수 없습니다.")
            myAlert(title:"히히",message: "카메라안됨")
        }
    }
    
    
    func myAlert(title:String, message:String) {
        let alert = UIAlertController(title: title, message: message, preferredStyle: UIAlertController.Style.alert)
        let action = UIAlertAction(title: "OK", style: UIAlertAction.Style.default, handler: nil)
        
        alert.addAction(action)
        
        self.present(alert, animated: true, completion: nil)
        
    }
    
 
    
}

