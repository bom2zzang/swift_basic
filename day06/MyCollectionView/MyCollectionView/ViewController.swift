import UIKit

 
//CollectionView : 일반이벤트, 데이터소스이벤트
class ViewController: UIViewController, UICollectionViewDelegate, UICollectionViewDataSource {


    @IBOutlet weak var collectionView:UICollectionView!
    
    
    let names:Array<String> = [
    "남주혁","윤시윤","시우민","장동윤","로운","양세종"
        ,"남주혁","윤시윤","시우민","장동윤","로운","양세종"
    ]
    
    let collections:Array<String> = [
    "눈이부시게, 하백의신부","녹두꽃, 이웃집꽃미남 ","누가봐도우린, 이유","녹두전, 땐뽀걸즈","어쩌다발견한하루","서른이지만열일곱입니다"
    ,"눈이부시게, 하백의신부","녹두꽃, 이웃집꽃미남 ","누가봐도우린, 이유","녹두전, 땐뽀걸즈","어쩌다발견한하루","서른이지만열일곱입니다"

    ]
    
    let images:Array<String> = [
    "1.png","2.png","3.png","4.png","5.png","6.png"
    ,"1.png","2.png","3.png","4.png","5.png","6.png"

    ]
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        
    }
    	
    //MARK: -콜렉션뷰 데이터소스이벤트
    func collectionView(_ collectionView: UICollectionView, numberOfItemsInSection section: Int) -> Int {
        return names.count;
    }
    
    
    func collectionView(_ collectionView: UICollectionView, cellForItemAt indexPath: IndexPath) -> UICollectionViewCell {
        
        let cell = self.collectionView.dequeueReusableCell(withReuseIdentifier: "MyCollectionViewCell", for: indexPath) as! MyCollectionViewCell
        cell.myImageView.image = UIImage(named: images[indexPath.row])
        cell.myIdolName.text = names[indexPath.row]
        cell.myCollection.text = collections[indexPath.row]
        
        
        return cell
    }
    
    
    //MARK: -콜렉션뷰 일반이벤트

    

}

