import UIKit
import Firebase
import FirebaseFirestore

class ListViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    struct IdolData {
        var name : String = ""
        var imageString : String = ""
        /*
         딕셔너리 : 키-값을 가진 데이터구조, 자바의 콜렉션 맵
         스트럭트 데이터를 딕셔너리 구조로 바꿔서 반환해줌.
         Firestore DB에 들어가는 데이터 구조
         1.Number
         2.String
         3.Array
         4.Dictionary
         결국은 스트럭트를 딕셔너리로 바꿔서 넣는다.
         */
        func getDic() -> [String : String] {
            let dict = ["name" : self.name,
                        "imageString" : self.imageString]
            return dict;
        }
    }
    //Struct Array를 만들어 준다.
    var idolArray : Array<IdolData> = []
    
    
    
    //MARK: - DataSource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return 0
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = UITableViewCell()
        return cell
    }
    
    //MARK: - TableViewDelegate

    @IBOutlet weak var tableView: UITableView!
    override func viewDidLoad() {
        super.viewDidLoad()
        
        //테이블뷰의 이벤트(스크롤, 데이터요청) 처리
        tableView.delegate = self
        tableView.dataSource = self

    }
    
    @IBAction func onBtnAdd(_ sender: Any) {
        setValueFromList()
        
    }
    
    @IBAction func onBtnRead(_ sender: Any) {
        getValueIntoList()
    }
    
    func setValueFromList() {
        var idol = IdolData()	
        idol.name = "시우민"
        idol.imageString = "3.png"
        let idolDic = idol.getDic()
        
        let db = Firestore.firestore()
        
        var ref : DocumentReference? = nil
        ref = db.collection("idols").addDocument(data: idolDic) {
            err in
            if let error = err {
                print("setValueFromList()에러발생")
            }else{
                print("setValueFromList()성공")
                print("도큐먼트ID : ", ref!.documentID)
            }
            
        }
    }
    
    func getValueIntoList() {
        
    }
    
}
