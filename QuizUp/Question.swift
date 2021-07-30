//
//  Question.swift
//  QuizUp
//
//  Created by Sai Reddy on 30/07/21.
//

import Foundation

struct Question{
    let Label: String
    let answer: String
    init(q: String, a: String){
        Label = q
        answer = a
    }
}
