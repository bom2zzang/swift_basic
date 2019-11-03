import UIKit

class MyTableViewCell: UITableViewCell {

    @IBOutlet weak var imageV: UIImageView!
    @IBOutlet weak var labelN: UILabel!
    
    override func awakeFromNib() {
        super.awakeFromNib()
    }

    override func setSelected(_ selected: Bool, animated: Bool) {
        super.setSelected(selected, animated: animated)

    }

}
