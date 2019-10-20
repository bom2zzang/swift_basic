import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var myImageView: UIImageView!
    @IBOutlet weak var myIdolName: UILabel!
    @IBOutlet weak var myCollection: UILabel!
    
    
    
    //화면 레이아웃 파일
    //초기화됐을 때 한번 호출 됨.
    override func awakeFromNib() {
        super.awakeFromNib()
    }
    //테이블뷰 셀이 선택됐을 때 호출 됨.
    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)
    }

}
