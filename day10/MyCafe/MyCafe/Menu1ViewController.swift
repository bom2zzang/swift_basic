import UIKit
import Toast_Swift
import SDWebImage

class Menu1ViewController: UIViewController,UITableViewDelegate, UITableViewDataSource {
    
    var data:String = ""

    
    let names1: Array<String> = ["앗메리카노",
                                "원조커피",
                                "바닐라라떼",
                                "블랙펄 카페라떼",
                                "더블에스프레소",
                                "달달연유라떼",
                                "빽's 라떼",
                                "카페모카",
                                "카라멜마끼아또",
                                "크리미모카라떼",
                                "코코넛커피스무디",
                                "코코넛라떼"]
    let prices1: Array<NSString> = ["HOT : 1,500\nICED : 2,000",
                                   "HOT : 2,000\nICED : 2,500",
                                   "HOT : 3,000\nICED : 3,500",
                                   "ICED : 3,500",
                                   "HOT : 1,500",
                                   "HOT : 2,500\nICED : 2,500",
                                   "HOT : 2,500\nICED : 3,000",
                                   "HOT : 3,000\nICED : 3,500",
                                   "HOT : 3,000\nICED : 3,500",
                                   "HOT : 3,800\nICED : 3,800",
                                   "ICED : 4,000",
                                   "ICED : 3,800"]
    let images1: Array<String> = ["http://paikdabang.com/wp-content/uploads/2018/05/%EC%95%97%EB%A9%94%EB%A6%AC%EC%B9%B4%EB%85%B8-1.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%EC%9B%90%EC%A1%B0%EC%BB%A4%ED%94%BC-1.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%EB%B0%94%EB%8B%90%EB%9D%BC%EB%9D%BC%EB%96%BC-1.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2019/03/%EB%B8%94%EB%9E%99%ED%8E%84_%EC%B9%B4%ED%8E%98%EB%9D%BC%EB%96%BC.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%EB%8D%94%EB%B8%94%EC%97%90%EC%8A%A4%ED%94%84%EB%A0%88%EC%86%8C-1.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%EC%97%B0%EC%9C%A0%EB%9D%BC%EB%96%BC-1.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%EB%B0%B1%EC%8A%A4%EB%9D%BC%EB%96%BC-1.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%EC%B9%B4%ED%8E%98%EB%AA%A8%EC%B9%B4-1.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%EC%B9%B4%EB%9D%BC%EB%A9%9C%EB%A7%88%EB%81%BC%EC%95%84%EB%98%90-1.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%ED%81%AC%EB%A6%AC%EB%AF%B8%EB%AA%A8%EC%B9%B4%EB%9D%BC%EB%96%BC-2.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%EC%BD%94%EC%BD%94%EB%84%9B%EC%BB%A4%ED%94%BC%EC%8A%A4%EB%AC%B4%EB%94%94-1.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%EC%BD%94%EC%BD%94%EB%84%9B%EB%9D%BC%EB%96%BC-1.jpg"]
    let messages1: Array<String> = ["빽다방만의 맛과 향을 더한 100% 아라비카 로스팅 원두로 뽑아내 깊고 진한 맛의 앗!메리카노",
                                   "시원달콤한 빽다방 대표메뉴, 믹스커피 종결자!",
                                   "부드러운 우유와 달콤하고 은은한 바닐라가 조화를 이루는 음료",
                                   "흑당 베이스의 풍미 있는 달콤함과 쫄깃한 타피오카 펄, 향긋한 에스프레소가 어우러진 블랙펄카페라떼",
                                   "콜롬비아 원두를 베이스로 블랜딩한 커피의 본연의 향을 느낄 수 있는 에스프레소",
                                   "달달하고 향긋한 베트남식 연유라떼",
                                   "진한 에스프레소와 시원한 우유가 어우려져 탄생한 부드러운 빽다방 라떼",
                                   "다크한 초콜렛과 진한 에스프레소, 부드러운 우유가 더해진 달콤한 맛의 커피",
                                   "카라멜소스와 신선한 우유, 에스프레소로 맛을 낸 달콤한 빽다방 인기메뉴",
                                   "깊고 진한 커피, 달콤한 초콜릿, 부드러운 크림의 환상 조합!",
                                   "코코넛 젤리가 들어있는 달콤 고소한 코코넛커피스무디!",
                                   "구운코코넛이 씹혀 더욱 고소한 코코넛라떼!"]
    
    
    
    
    
    let names2: Array<String> = [
        "완전초코",
        "블랙펄밀크티",
        "청포도플라워",
        "녹차라떼",
        "토피넛라떼",
        "민트초코라떼",
        "밀크티",
        "블랙펄라떼",
        "깔라만시티",
        "달콤아이스티",
        "레몬티",
        "레몬얼그레이티",
        "오렌지자몽블랙티",
        "자몽티",
        "아이스미초",
        "블루캔디소다",
        "청포도에이드",
        "자두에이드",
        "복숭아에이드",
        "배에이드",
        "깔라만시에이드",
        "자몽에이드",
        "미초(석류)에이드",
        "미숫가루",
        "단호박식혜",
        "완전골드키위",
        "완전자두",
        "완전복숭아",
        "완전파인애플",
        "완전망고",
        "완전딸기",
        "코코넛초코스무디",
        "패션후르츠스무디",
        "망고패션스무디",
        "밀크쉐이크",
        "메론밀크쉐이크",
        "플레인요거트스무디",
        "블루베리요거트스무디",
        "망고요거트스무디",
        "딸기요거트스무"]
    let prices2: Array<NSString> = ["HOT : 3,000\nICED : 3,500",
                                   "ICED : 3,500",
                                   "ICED : 3,500",
                                   "HOT : 3,000\nICED : 3,500",
                                   "HOT : 3,000\nICED : 3,000",
                                   "HOT : 3,000\nICED : 3,000",
                                   "HOT : 3,000\nICED : 3,500",
                                   "ICED : 3,000","HOT : 2,500",
                                   "ICED : 2,000",
                                   "HOT : 3,500\nICED : 3,500",
                                   "HOT : 2,500\nICED : 2,500",
                                   "HOT : 2,500\nICED : 2,500",
                                   "HOT : 3,500\nICED : 3,500",
                                   "ICED : 2,500","ICED : 3,000",
                                   "ICED : 4,000","ICED : 4,000",
                                   "ICED : 4,000","ICED : 3,500",
                                   "ICED : 3,000","ICED : 4,000",
                                   "ICED : 3,000","ICED : 2,500",
                                   "ICED : 2,500","ICED : 3,500",
                                   "ICED : 4,500","ICED : 4,500",
                                   "ICED : 3,000","ICED : 3,500",
                                   "ICED : 4,000","ICED : 4,500",
                                   "ICED : 4,000","ICED : 4,000",
                                   "ICED : 3,000","ICED : 3,000",
                                   "ICED : 3,000","ICED : 3,500",
                                   "ICED : 3,500","ICED : 4,000"]
    let images2: Array<String> = ["http://paikdabang.com/wp-content/uploads/2018/05/%EC%99%84%EC%A0%84%EC%B4%88%EC%BD%94.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2019/03/%EB%B8%94%EB%9E%99%ED%8E%84_%EB%B0%80%ED%81%AC%ED%8B%B0.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%EC%B2%AD%ED%8F%AC%EB%8F%84%ED%94%8C%EB%9D%BC%EC%9B%8C.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%EB%85%B9%EC%B0%A8%EB%9D%BC%EB%96%BC.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/12/%ED%86%A0%ED%94%BC%EB%84%9B%EB%9D%BC%EB%96%BC.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2019/02/%EB%AF%BC%ED%8A%B8%EC%B4%88%EC%BD%94%EB%9D%BC%EB%96%BC.png",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%EB%B0%80%ED%81%AC%ED%8B%B0.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2019/03/%EB%B8%94%EB%9E%99%ED%8E%84_%EB%9D%BC%EB%96%BC.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%EA%B9%94%EB%9D%BC%EB%A7%8C%EC%8B%9C%ED%8B%B0.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%EB%8B%AC%EC%BD%A4%EC%95%84%EC%9D%B4%EC%8A%A4%ED%8B%B0.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/06/%EB%A0%88%EB%AA%AC%ED%8B%B0.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/12/%EB%A0%88%EB%AA%AC%EC%96%BC%EA%B7%B8%EB%A0%88%EC%9D%B4%ED%8B%B0.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/12/%EC%98%A4%EB%A0%8C%EC%A7%80%EC%9E%90%EB%AA%BD%EB%B8%94%EB%9E%99%ED%8B%B0.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%EC%9E%90%EB%AA%BD%ED%8B%B0.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%EC%95%84%EC%9D%B4%EC%8A%A4%EB%AF%B8%EC%B4%88.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2019/03/%EB%B8%94%EB%A3%A8%EC%BA%94%EB%94%94%EC%86%8C%EB%8B%A4.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%EC%B2%AD%ED%8F%AC%EB%8F%84%EC%97%90%EC%9D%B4%EB%93%9C.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2019/03/%EC%9E%90%EB%91%90%EC%97%90%EC%9D%B4%EB%93%9C.png",
                                 "http://paikdabang.com/wp-content/uploads/2019/03/%EB%B3%B5%EC%88%AD%EC%95%84%EC%97%90%EC%9D%B4%EB%93%9C.png",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%EB%B0%B0%EC%97%90%EC%9D%B4%EB%93%9C.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%EA%B9%94%EB%9D%BC%EB%A7%8C%EC%8B%9C%EC%97%90%EC%9D%B4%EB%93%9C.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%EC%9E%90%EB%AA%BD%EC%97%90%EC%9D%B4%EB%93%9C.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%EC%84%9D%EB%A5%98%EB%AF%B8%EC%B4%88%EC%97%90%EC%9D%B4%EB%93%9C.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%EB%AF%B8%EC%88%AB%EA%B0%80%EB%A3%A8.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2019/04/%EB%8B%A8%ED%98%B8%EB%B0%95%EC%8B%9D%ED%98%9C.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2019/04/%EC%99%84%EC%A0%84%EA%B3%A8%EB%93%9C%ED%82%A4%EC%9C%84.png",
                                 "http://paikdabang.com/wp-content/uploads/2019/03/%EC%9E%90%EB%91%90%EC%A3%BC%EC%8A%A4.png",
                                 "http://paikdabang.com/wp-content/uploads/2019/03/%EC%99%84%EC%A0%84%EB%B3%B5%EC%88%AD%EC%95%84-%EC%A3%BC%EC%8A%A4.png",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%ED%8C%8C%EC%9D%B8%EC%95%A0%ED%94%8C%EC%A5%AC%EC%8A%A4.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%EB%A7%9D%EA%B3%A0%EC%A5%AC%EC%8A%A4.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%EB%94%B8%EA%B8%B0%EC%A5%AC%EC%8A%A4.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%EC%BD%94%EC%BD%94%EB%84%9B%EC%B4%88%EC%BD%94%EC%8A%A4%EB%AC%B4%EB%94%94.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%ED%8C%A8%EC%85%98%ED%9B%84%EB%A5%B4%EC%B8%A0%EC%8A%A4%EB%AC%B4%EB%94%94-1.png",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%EB%A7%9D%EA%B3%A0%ED%8C%A8%EC%85%98%ED%9B%84%EB%A5%B4%EC%B8%A0%EC%8A%A4%EB%AC%B4%EB%94%94-1.png",
                                 "http://paikdabang.com/wp-content/uploads/2019/05/%EB%B0%80%ED%81%AC%EC%89%90%EC%9D%B4%ED%81%AC.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2019/05/%EB%A9%94%EB%A1%A0%EB%B0%80%ED%81%AC%EC%89%90%EC%9D%B4%ED%81%AC.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%EC%9A%94%EA%B1%B0%ED%8A%B8%EC%8A%A4%EB%AC%B4%EB%94%94-1.png",
                                 "http://paikdabang.com/wp-content/uploads/2019/05/%EB%B8%94%EB%A3%A8%EB%B2%A0%EB%A6%AC%EC%9A%94%EA%B1%B0%ED%8A%B8%EC%8A%A4%EB%AC%B4%EB%94%94.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2019/05/%EB%A7%9D%EA%B3%A0%EC%9A%94%EA%B1%B0%ED%8A%B8%EC%8A%A4%EB%AC%B4%EB%94%94.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%EB%94%B8%EA%B8%B0%EC%9A%94%EA%B1%B0%ED%8A%B8%EC%8A%A4%EB%AC%B4%EB%94%94-1.png"]
    let messages2: Array<String> = ["초코에 퐁당 빠지고 싶을때~!? 진짜~! 다크초콜렛이 올라간 완~전 진한 초코라떼",
                                   "흑당 베이스의 풍미 있는 달콤함과 쫄깃한 타피오카 펄, 부드러운 생크림이 더해진 블랙펄밀크티",
                                   "향긋한 꽃향기가 퍼지는 상큼달콤한 청포도 음료",
                                   "100% 국내산 녹차를 사용하여 진하고 부드러운 녹차라떼",
                                   "견과류와 카라멜의 고소하고 달콤함이 느껴지는 부드럽고 진한 맛의 토피넛라떼(샷추가 +500원)",
                                   "초코칩으로 더한 깊은 초콜릿의 맛과 민트의 상쾌함이 어우러진 진한 민트초코라떼",
                                   "얼그레이의 향긋함을 더한 부드러운 밀크티",
                                   "흑당 베이스의 풍미 있는 달콤함과 쫄깃한 타피오카 펄, 고소한 우유가 어우러진 블랙펄라떼",
                                   "입안 가득 전해지는 새콤함! 새콤 톡톡 깔라만시티",
                                   "시원하게 즐기는 복숭아 맛 아이스티",
                                   "레몬 과육이 듬뿍! 더욱 상큼하게 즐기는 레몬티 (에이드 +500원)",
                                   "상큼한 레몬을 더한 얼그레이티",
                                   "향긋한 오렌지와 자몽을 블렌딩한 블랙티",
                                   "자몽 과육이 입안에서 톡톡! 달콤한 자몽 한 잔",
                                   "과일(석류)발효초인 미초를 넣은 시원한 음료",
                                   "추억이 새록새록! 달콤하고 부드러운 소다 맛 아이스 음료",
                                   "청포도의 상큼함과 향긋한 꽃향기가 퍼지는 상큼 달콤한 에이드 음료",
                                   "듬뿍 들어간 자두 과육으로 풍부한 맛과 식감을 더한 청량감 가득, 자두에이드",
                                   "듬뿍 들어간 복숭아 과육으로 풍부한 맛과 식감을 더한 청량감 가득, 복숭아에이드",
                                   "달콤함과 청량감이 살아있는 배에이드!",
                                   "상큼 짜릿하게! 톡톡튀는 식감을 느낄 수 있는 에이드 음료",
                                   "달콤 쌉쌀한 자몽에이드",
                                   "과일(석류)발효초인 미초를 넣은 청량한 에이드 음료",
                                   "그때 그 추억의 맛! 달콤 고소한 미숫가루",
                                   "단호박과 밥알동동~식혜의 절묘한 조합! 시원하게 즐기는 전통 음료",
                                   "황금빛의 골드키위를 한 잔 가득 담아낸 상큼한 과일 주스",
                                   "상큼한 자두의 진한 맛을 한 잔에 담은 새콤달콤 완전자두",
                                   "달콤한 복숭아의 진한 맛이 그대로! 시원하게 즐기는 완전복숭아",
                                   "상큼함이 터지는 완전파인애플!",
                                   "코코넛 젤리가 들어있는 달콤 시원한 완전망고",
                                   "신선함을 그대로 담은 완전딸기!",
                                   "진한 초콜릿 베이스에 달콤한 코코넛 스무디가 듬뿍!",
                                   "달콤한 열대과일 패션후르츠를 시원하게 즐겨보세요!",
                                   "달콤한 망고와 패션후르츠의 시원한 만남!",
                                   "부드럽고 달콤한 쉐이크",
                                   "메론 맛이 더해진 부드럽고 달콤한 쉐이크",
                                   "달콤 부드러운 플레인 요거트스무디",
                                   "요거트에 상큼한 블루베리를 더한 스무디",
                                   "요거트에 달콤한 망고를 더한 스무디",
                                   "부드럽고 새콤달콤한 딸기요거트스무디"]
    
    
    
       let names3: Array<String> = ["노말한소프트",
                                   "옥수크림",
                                   "사라다빵",
                                   "호두크런치",
                                   "빽엔나",
                                   "소세지빵",
                                   "크리미슈",
                                   "크리미단팥빵",
                                   "계란사라다빵"]
       let prices3: Array<NSString> = ["1,500",
                                      "2,500",
                                      "2,000",
                                      "3,000",
                                      "HOT : 3,000\nICED : 3,500",
                                      "2,500",
                                      "1,500",
                                      "1,500",
                                      "3,500"]
       let images3: Array<String> = ["http://paikdabang.com/wp-content/uploads/2018/05/%EB%85%B8%EB%A7%90%ED%95%9C%EC%86%8C%ED%94%84%ED%8A%B8.jpg",
                                    "http://paikdabang.com/wp-content/uploads/2018/05/%EC%98%A5%EC%88%98%ED%81%AC%EB%A6%BC.jpg",
                                    "http://paikdabang.com/wp-content/uploads/2018/05/%EC%82%AC%EB%9D%BC%EB%8B%A4%EB%B9%B5.jpg",
                                    "http://paikdabang.com/wp-content/uploads/2018/05/%ED%98%B8%EB%91%90%ED%81%AC%EB%9F%B0%EC%B9%98.jpg",
                                    "http://paikdabang.com/wp-content/uploads/2018/05/%EB%BA%B5%EC%97%94%EB%82%98.jpg",
                                    "http://paikdabang.com/wp-content/uploads/2018/05/%EC%86%8C%EC%84%B8%EC%A7%80%EB%B9%B5.jpg",
                                    "http://paikdabang.com/wp-content/uploads/2018/05/%ED%81%AC%EB%A6%AC%EB%AF%B8%EC%8A%88.jpg",
                                    "http://paikdabang.com/wp-content/uploads/2018/05/%ED%81%AC%EB%A6%AC%EB%AF%B8%EB%8B%A8%ED%8C%A5%EB%B9%B5.jpg",
                                    "http://paikdabang.com/wp-content/uploads/2018/05/%EA%B3%84%EB%9E%80%EC%82%AC%EB%9D%BC%EB%8B%A4%EB%B9%B5.jpg"]
       let messages3: Array<String> = ["입안에서 부드럽게 사르륵 녹는 마성의 아이스크림",
                                      "달콤한 아이스크림에 고소한 옥수수가 톡톡 씹히는 재미난 메뉴",
                                      "어린시절 빵집에서 사먹던 추억의 감자 사라다빵",
                                      "호두, 땅콩, 크런치의 바삭바삭함이 즐거운 아이스크림",
                                      "부드러운 아이스크림과 쌉싸름한 아메리카노가 조화를 이루는 빽다방식 아포가토",
                                      "소시지에 치즈를 듬뿍 얹고 옥수수까지 더한 소세지빵",
                                      "비스킷과 부드러운 크림의 환상 조합!",
                                      "달콤한 팥과 크림이 듬뿍~",
                                      "계란이 듬뿍 들어간 부드러운 식감의 촉촉한 계란사라다빵!"]
      
    
    let names4: Array<String> = ["완전딸기바나나",
                                "완전초코바나나",
                                "피스타치오빽스치노",
                                "카라멜빽스치노",
                                "베리크런치빽스치노",
                                "녹차빽스치노",
                                "원조빽스치노",
                                "민트초코빽스치노"]
    let prices4: Array<NSString> = ["BASIC : 3,000\nSOFT : 3,500",
                                   "BASIC : 2,800\nSOFT : 3,300",
                                   "BASIC : 4,500\nSOFT : 5,000",
                                   "BASIC : 4,500\nSOFT : 5,000",
                                   "BASIC : 4,000\nSOFT : 4,500",
                                   "BASIC : 3,000\nSOFT : 3,500",
                                   "BASIC : 3,000\nSOFT : 3,500",
                                   "BASIC : 3,500\nSOFT : 4,000"]
    let images4: Array<String> = ["http://paikdabang.com/wp-content/uploads/2018/05/%EC%99%84%EC%A0%84%EB%94%B8%EB%B0%94.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%EC%99%84%EC%A0%84%EC%B4%88%EB%B0%94.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%ED%94%BC%EC%8A%A4%ED%83%80%EC%B9%98%EC%98%A4%EB%B9%BD%EC%8A%A4%EC%B9%98%EB%85%B8.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2019/05/%EC%B9%B4%EB%9D%BC%EB%A9%9C%EB%B9%BD%EC%8A%A4%EC%B9%98%EB%85%B8.png",
                                 "http://paikdabang.com/wp-content/uploads/2019/05/%EB%B2%A0%EB%A6%AC%ED%81%AC%EB%9F%B0%EC%B9%98%EB%B9%BD%EC%8A%A4%EC%B9%98%EB%85%B8.png",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%EB%85%B9%EC%B0%A8%EB%B9%BD%EC%8A%A4%EC%B9%98%EB%85%B8.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2018/05/%EC%9B%90%EC%A1%B0%EB%B9%BD%EC%8A%A4%EC%B9%98%EB%85%B8-1.jpg",
                                 "http://paikdabang.com/wp-content/uploads/2019/02/%EB%AF%BC%ED%8A%B8%EC%B4%88%EC%BD%94-%EB%B9%BD%EC%8A%A4%EC%B9%98%EB%85%B8.png"]
    let messages4: Array<String> = ["상큼한 딸기와 달달한 바나나의 완전 시원한 만남!",
                                   "달콤한 초코와 달달한 바나나의 완전 시원한 만남",
                                   "고소한 피스타치오와 진한 카카오닙스의 만남 !",
                                   "카라멜의 진한 달콤함과 바삭한 토핑으로 더욱 풍부한 카라멜 맛을 즐길 수 있는 빽스치노",
                                   "상큼 달콤한 딸기 밀크 베이스에 바삭한 비스켓크런치로 맛에 재미를 더한 뺵스치노",
                                   "100% 국내산 녹차를 사용하여 부드럽고 진한 맛의 빽스치노!",
                                   "원조커피의 시원한 변신~! 매력만점 커피 빽스치노",
                                   "초코칩으로 더한 깊은 초콜릿의 맛과 민트의 상쾌함이 어우러진 진한 민트초코 빽스치노"]
    
    //MARK: -Datasource
    func tableView(_ tableView: UITableView, numberOfRowsInSection section: Int) -> Int {
        
        var count = 0
        if data == "1" {
            count = names1.count
        }else if data == "2" {
            count = names2.count
        }else if data == "3" {
            count = names3.count
        }else if data == "4" {
            count = names4.count
        }
        
        
            return count
    }
    
    func tableView(_ tableView: UITableView, cellForRowAt indexPath: IndexPath) -> UITableViewCell {
        let cell = tableView.dequeueReusableCell(withIdentifier: "MyTableViewCell", for: indexPath) as! MyTableViewCell
        if data == "1" {
            cell.labelName.text = names1[indexPath.row]
            cell.labelPrice.text = String(prices1[indexPath.row])
            cell.imageVMenu.sd_setImage(with: URL(string: images1[indexPath.row]))
        }else if data == "2" {
            cell.labelName.text = names2[indexPath.row]
            cell.labelPrice.text = String(prices2[indexPath.row])
            cell.imageVMenu.sd_setImage(with: URL(string: images2[indexPath.row]))
        }else if data == "3" {
            cell.labelName.text = names3[indexPath.row]
            cell.labelPrice.text = String(prices3[indexPath.row])
            cell.imageVMenu.sd_setImage(with: URL(string: images3[indexPath.row]))
        }else if data == "4" {
            cell.labelName.text = names4[indexPath.row]
            cell.labelPrice.text = String(prices4[indexPath.row])
            cell.imageVMenu.sd_setImage(with: URL(string: images4[indexPath.row]))
        }

        cell.selectionStyle = .none
        
        return cell
    }
    //MARK: -Tableview Delegate
    func tableView(_ tableView: UITableView, heightForRowAt indexPath: IndexPath) -> CGFloat {
        return 100
    }
    
    func tableView(_ tableView: UITableView, didSelectRowAt indexPath: IndexPath) {
        print("선택된 줄 : ", indexPath.row)
        
        if data == "1" {
            self.view.makeToast(messages1[indexPath.row], duration:2.0, position:.bottom )
        }else if data == "2" {
            self.view.makeToast(messages2[indexPath.row], duration:2.0, position:.bottom )
        }else if data == "3" {
            //return names3.count
        }else if data == "4" {
            //return names4.count
        }
        
    }


    
    override func viewDidLoad() {
        super.viewDidLoad()
        self.navigationController?.isNavigationBarHidden = false
        print("전달받은 데이터: ", self.data)

    }
    



}
