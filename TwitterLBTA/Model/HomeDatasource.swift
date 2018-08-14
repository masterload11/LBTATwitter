//
//  HomeDatasource.swift
//  TwitterLBTA
//
//  Created by Владислав Варфоломеев on 13.08.2018.
//  Copyright © 2018 Владислав Варфоломеев. All rights reserved.
//

import LBTAComponents

//Datasource
class HomeDatasource: Datasource
{
    let words = ["one", "two", "three"]
    
    override func footerClasses() -> [DatasourceCell.Type]? {
        return [UserFooter.self]
    }
    override func headerClasses() -> [DatasourceCell.Type]? {
        return [UserHeader.self]
    }
    override func cellClasses() -> [DatasourceCell.Type] {
        return [UserCell.self]
    }
    override func item(_ indexPath: IndexPath) -> Any? {
        return words[indexPath.item]
    }
    override func numberOfItems(_ section: Int) -> Int {
        return 3
    }
}
