//
//  VendorStallKiosk.swift
//  AmusementParkPassGenerator
//
//  Created by Jevaughn McKenzie on 3/31/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

class VendorStallKiosk: Kiosk {
    
    let description = "VendorStallKiosk"
    
    func swipeFunction(authorizing authorization: AccessPermission.Discount) -> Bool {
//        printBirthdayMessage(pass: pass)
        for permission in pass.getAccessPrivileges() {
            switch permission {
            case .discountAccess(authorization, let discountAmount) :
                switch authorization {
                case .food, .merchandise:
                    return true
                }
            default:
                continue
            }
        }
        
        return false
    }
}

