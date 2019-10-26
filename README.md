***

### Swift 
* day01, day02, day03
   + 이론 

 * day04
     + 프로젝트 만들기  
 XCODE > create a new Xcode project  
 iOS, single view app    
 product Name : MyFirstApp   
 Team : 개발자계정이 있으면 등록  
 Organization Identifier: 알아서  
 Bundle Identifier : 중복되지않게  
 언어 :Swift   
 Interface : Storyboard  
 전부체크해제 > create  
 Deployment Info : ios 13.0
   + 프로젝트 설명   
AppDelegate.swift : App초기 제어코드, func application > 앱 실행시     
SceneDelegate.swift : swift ui 초기 제어코드, Delegate : 이벤트를 받는 곳.  
Main.Storyboard : 뷰 화면 레이아웃 에디터  
ViewController.swift : 뷰 화면 제어코드  
Assets.xcassets : 이미지 파일들  
LaunchScreen.Storyboard : 스플래시화면(인트로)  
info.plist : 환경 구성파일  
products > app : 실행파일( 한프로젝트 -> 여러실행파일을 만들 수 있다)  
        + 참고1     
            원격저장(서버)(추천:ex)mysql,oracle...)  
            SQLite3  
            Realm(hot)  
            Core Data  
            User Defaults : key&value (쿠키처럼간단하게 로컬에 저장, 위 세개는 복잡)  
        + 레이아웃  
         1. 오토 리사이징 <- 간단한 배치  
         2. 오토 레이아웃 <- 복잡한 배치  
         3. SwiftUI 코드 기반)  
  
 * day07
     + Cocoa Pod 이용하기 (깃허브 무료소스)  

    + Swift - Toast : 토스트 창
    + SDWebImage : Http통신으로 이미지를 받아 ImageView에 이미지 로딩하는 Lib.


    1. 프로젝트 폴더에서 터미널 열기
    2. Cocoa Pod 유틸 설치 : $ sudo gem install cocoapods  
                        업데이트 : $ pod repo update
    3. $ pod init > 뭔가생김
    4. $ pod install > 뭔가많이생김 
    5. 그 중 xcworkspace를 열어서 작업함.
    6. 프로젝트열면 있는 Pods 아래의 Podfile이 중요함. 자바의 xml 같은 느낌인듯?
    7. Podfile안에 필요한 라이브러리 내용 저장 후 다시 터미널에서 $ pod install

    + Cocoa Pod : Sidemenu  
    안드로이드 사이드메뉴 : Nav Drawer(기본템플릿)  
    아이폰 스위프트 : Sidemenu
    + Cocoa Pod : Alamofire + JSON SwfityJSON (Http통신 Lib)
    + 구글맵 연동, GPS 위치기반 서비스
    + 애플맵 - Mapkit, 구글맵, 다음맵, 네이버맵  
      - info.plist : Privacy - Location Always Usage Description  
      ,Privacy - Location When In Use Usage Description 추가함.
      - GoogleMap > Maps SDK for iOS 사용




***
