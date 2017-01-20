//
//  Inlinit.swift
//  Inlinit
//
//  Created by Jo Albright on 01/06/2016.
//  Copyright (c) 2016 Jo Albright. All rights reserved.
//

infix operator <-

public protocol Inlinit {
    
    init()

}

public extension Inlinit {
    
    public init(c: (inout Self) -> Void) { self.init(); c(&self) }
    
    public static func <- (lhs: inout Self, rhs: (inout Self) -> Void) { rhs(&lhs) }

}

// MARK: Extensions

extension Array: Inlinit { }
extension Dictionary: Inlinit { }
extension Set: Inlinit { }
