//
//  AccessPermission.swift
//  AmusementParkPassGenerator
//
//  Created by Jevaughn McKenzie on 3/31/17.
//  Copyright © 2017 Treehouse. All rights reserved.
//

enum AccessPermission {
    case areaAccess(AreaAccess)
    case rideAccess(RideAccess)
    case ridePriority(RidePriority)
    case discountAccess(Discount, Int)
    
    enum AreaAccess {
        case amusement
        case kitchen
        case rideControl
        case maintenance
        case office
    }
    
    enum RideAccess {
        case noRides
        case allRides
    }
    
    enum RidePriority {
        case standard
        case skipPrivilege
    }
    
    enum Discount {
        case food
        case merchandise
    }
}
