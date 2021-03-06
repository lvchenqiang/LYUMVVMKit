//
//  ViewController.swift
//  LYUMVVMKit
//
//  Created by 吕陈强 on 2018/5/14.
//  Copyright © 2018年 吕陈强. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    var imageLeftBtn:LYUContentLayoutBtn = {
      
        let btn = LYUContentLayoutBtn(type: .custom);
        btn.setImage(#imageLiteral(resourceName: "read_share.png"), for: .normal);
        btn.setTitle("分享", for: .normal);
        btn.setTitleColor(UIColor.init(hexString: "787878"), for: .normal);
        btn.titleLabel?.textAlignment = .left;
        btn.titleLabel?.font = FONT(28);
        btn.layoutContent(style:LYUButtonLayoutStyle.ImageLeftContentCenter, imgSize: CGSize(width: FIT_WIDTH(102), height: FIT_WIDTH(102)), space: FIT_WIDTH(18));
        btn.backgroundColor = UIColor.cyan;
        return btn;
    }()
    
    
    var imageRightBtn:LYUContentLayoutBtn = {
        let btn = LYUContentLayoutBtn();
        btn.setImage(#imageLiteral(resourceName: "read_share.png"), for: .normal);
        btn.setTitle("分享", for: .normal);
        btn.setTitleColor(UIColor.init(hexString: "787878"), for: .normal);
        btn.titleLabel?.textAlignment = .left;
        btn.titleLabel?.font = FONT(28);
        btn.layoutContent(style:LYUButtonLayoutStyle.ImageRightContentCenter, imgSize: CGSize(width: FIT_WIDTH(102), height: FIT_WIDTH(102)), space: FIT_WIDTH(18));
        btn.backgroundColor = UIColor.cyan;
        return btn;
    }()
    
    
    
    
  lazy  var imageTopBtn:LYUContentLayoutBtn = {
        let btn = LYUContentLayoutBtn();
        btn.setImage(#imageLiteral(resourceName: "read_share.png"), for: .normal);
        btn.setTitle("分享", for: .normal);
        btn.setTitleColor(UIColor.init(hexString: "787878"), for: .normal);
        btn.titleLabel?.textAlignment = .center;
        btn.titleLabel?.font = FONT(28);
        btn.layoutContent(style:LYUButtonLayoutStyle.ImageTopContentCenter, imgSize: CGSize(width: FIT_WIDTH(102), height: FIT_WIDTH(102)), space: FIT_WIDTH(18));
        btn.backgroundColor = UIColor.cyan;
        return btn;
    }()
    
    
  lazy  var imageBottomBtn:LYUContentLayoutBtn = LYUContentLayoutBtn().then { (btn) in
        btn.setImage(#imageLiteral(resourceName: "read_share.png"), for: .normal);
        btn.setTitle("分享", for: .normal);
        btn.setTitleColor(UIColor.init(hexString: "787878"), for: .normal);
        btn.titleLabel?.textAlignment = .center;
        btn.titleLabel?.font = FONT(28);
        btn.layoutContent(style:LYUButtonLayoutStyle.ImageTopContentCenter, imgSize: CGSize(width: FIT_WIDTH(102), height: FIT_WIDTH(102)), space: FIT_WIDTH(18));
        btn.backgroundColor = UIColor.cyan;
    }
    
    lazy var countDownBtn:LYUCountDownBtn = LYUCountDownBtn().then { (btn) in
        btn.backgroundColor = .red;
        btn.titleLabel?.font = FONT(20);
        btn.setTitleColor(UIColor.init(hexString: "787878"), for: .normal);
        btn.titleLabel?.textAlignment = .center;
         btn.setTitle("获取验证码", for: .normal);
    }
   
    override func viewDidLoad() {
        super.viewDidLoad()
    
      
     
        
        
    }
    func testBtnUI(){
        self.view.addSubview(self.imageLeftBtn);
        self.view.addSubview(self.imageRightBtn)
        self.view.addSubview(self.imageTopBtn)
        self.view.addSubview(self.imageBottomBtn)
        
        self.imageLeftBtn.snp.makeConstraints { (make) in
            make.leftMargin.equalTo(FIT_WIDTH(20));
            make.topMargin.equalTo((FIT_WIDTH(100)));
            make.width.equalTo(FIT_WIDTH(180));
            make.height.equalTo(FIT_WIDTH(102));
        }
        
        
        self.imageRightBtn.snp.makeConstraints { (make) in
            
            make.leftMargin.equalTo(FIT_WIDTH(20));
            make.topMargin.equalTo((FIT_WIDTH(250)));
            make.width.equalTo(FIT_WIDTH(180));
            make.height.equalTo(FIT_WIDTH(102));
        }

        self.imageTopBtn.snp.makeConstraints { (make) in
            make.leftMargin.equalTo(FIT_WIDTH(300));
            make.topMargin.equalTo((FIT_WIDTH(100)));
            make.width.equalTo(FIT_WIDTH(102));
            make.height.equalTo(FIT_WIDTH(180));
        }
        
        
        self.imageBottomBtn.snp.makeConstraints { (make) in
            
            make.leftMargin.equalTo(FIT_WIDTH(300));
            make.topMargin.equalTo((FIT_WIDTH(500)));
            make.width.equalTo(FIT_WIDTH(102));
            make.height.equalTo(FIT_WIDTH(180));
        }
        
        self.view.addSubview(self.countDownBtn);
        self.countDownBtn.snp.makeConstraints { (make) in
            make.bottomMargin.equalTo(-FIT_WIDTH(100))
            make.width.equalTo(FIT_WIDTH(300))
            make.leftMargin.equalTo(FIT_WIDTH(40))
            make.height.equalTo(FIT_WIDTH(30));
        }
        
        self.countDownBtn.addToucheHandler {(btn, tag) in
            btn.startCountDown(totalSecond: 60);
            btn.isUserInteractionEnabled = false;
            
        }
        
        self.countDownBtn.didFinishedHandler { (btn, second) -> (String) in
            btn.isUserInteractionEnabled = true;
            return "重新获取"
        }
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

