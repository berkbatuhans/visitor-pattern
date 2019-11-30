//
//  Visitor.swift
//  VisitorPatternExample
//
//  Created by Berk Batuhan ŞAKAR on 30.11.2019.
//  Copyright © 2019 Berk Batuhan ŞAKAR. All rights reserved.
//

import Foundation

protocol StoryboardVisitor {
    func visit(_ vc: DetailViewController)
}

protocol StoryboardVisitable {
    func accept(visitor: StoryboardVisitor)
}

//struct DefaultStoryboradVisitor: StoryboardVisitor {
//
//}
