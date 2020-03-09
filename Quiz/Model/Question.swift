//
//  questions.swift
//  Quizzler-iOS13
//
//  Created by Phan Dang on 3/7/20.
//  Copyright © 2020 The App Brewery. All rights reserved.
//

import Foundation

struct Question {
    var text : String
    var answer: [String]
    var correctAnswer: String
    init(q:String, a: [String], correctAnswer: String ) {
        text = q
        answer = a
        self.correctAnswer = correctAnswer
        
    }
}
