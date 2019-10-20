import UIKit


/*
 
 TableView의 이벤트(일반이벤트, 데이터소스이벤트)
 1.일반이벤트 : 클릭시. 레이아웃 그릴 때
 2.데이터소스이벤트 : 실제데이터 수나 셀의 뷰를 그릴 때
 
 */

class ViewController: UIViewController, UITableViewDelegate, UITableViewDataSource {
    
    @IBOutlet weak var tableView : UITableView!
    
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
        
        //일반이벤트, 데이터소스이벤트를 처리하는 클래스(객체)가 자신이다.
        tableView.delegate = self
        tableView.dataSource = self
        //스토리보드에서도 딜리게이트 설정이 가능하다.
        
    }
    
    /* //MARK: 구분선이나 타이틀을 만들어 줌.*/
    //MARK: - 테이블뷰 데이터소스
    //테이블뷰 셀의 총 수를 반환해줌.
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        return names.count
    }
    
    func numberOfSections(in tableView: UITableView) -> Int {
        return 1
    }

    
    //테이블뷰의 셀 뷰를 만들어서 반환해줌.
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        //테이블뷰 셀은 메모리절약을 위해 재사용함, indexPath:Section과 Row 두개가 온다.
        //                                  0:0, 0:1, 0:2, 0:3, 0:4, 0:5 이렇게 (여섯장의 사진)
        let cell = self.tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! MyTableViewCell
        
        cell.myImageView.image = UIImage(named: images[indexPath.row])
        cell.myIdolName.text = names[indexPath.row]
        cell.myCollection.text = collections[indexPath.row]
        
        //기본 UI에서 테이블셀이 선택되면 회색처리가 되는 것을 방지.
        cell.selectionStyle = .none
        
        return cell
    }
    
    //MARK: - 테이블뷰 딜리게이트
    //heightForRowAt 셀의 높이 100
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }

    //테이블뷰 셀이 선택되었을 때 이벤트
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("선택된 셀의 위치: 섹션", indexPath.section)
        print("선택된 셀의 위치: 로우", indexPath.row)
    }

}

