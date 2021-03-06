//
//  HomeM.swift
//  LYUMVVMKit
//
//  Created by 吕陈强 on 2018/6/23.
//  Copyright © 2018年 吕陈强. All rights reserved.
//

import UIKit
import RxSwift
import RxCocoa
import RxDataSources
import HandyJSON

struct HomeM: HandyJSON {
    var error = 0;
    var results:[HomeResult] = [HomeResult]()
}

struct HomeResult:HandyJSON {
    var _id         = ""
    var createdAt   = ""
    var desc        = ""
    var publishedAt = ""
    var source      = ""
    var type        = ""
    var url         = ""
    var used        = ""
    var who         = ""
    var cell_height:CGFloat = 0.0;
}

struct HomeSection {
    var items: [Item]
}

extension HomeSection: SectionModelType {
    typealias Item = HomeResult
    init(original: HomeSection, items: [HomeSection.Item]) {
        self = original
        self.items = items
    }
}
