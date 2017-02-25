//: Playground - noun: a place where people can play

import UIKit

var str = "Hello, playground range"

///range use
let range1 = str.range(of: "range") ;
print(range1) ;
let rangBackRange = str.range(of: "ange", options: .backwards, range: nil , locale: nil) ;
print(rangBackRange) ;

let caseInsensitiverRange = str.range(of: "RangE", options: .caseInsensitive, range: nil, locale: nil) ;
print(caseInsensitiverRange) ;

///Index
//startIndex 
let starInd = str.startIndex ;
let starIndexEle = str[starInd] ;

//endIndex
let endInd = str.index(before: str.endIndex) ;
let endEle = str[endInd] ;

//use index get range
let afterRange = str.index(after: str.startIndex)..<str.endIndex ;
str[afterRange] ;

//offsetBy
let offsetIndex = str.index(str.startIndex , offsetBy: 1) ;
str[offsetIndex] ;

let offsetR = offsetIndex..<str.endIndex ;
print(str[offsetR]) ;

//limitedBy
let maybeNil = str.index(str.startIndex , offsetBy: 40, limitedBy: str.endIndex) ;
let subStringRange = str.range(of: "ll", options: .regularExpression, range: offsetR , locale: nil) ;
str[subStringRange!] ;

//find character place 
let char : Character = "l" ;
let index = str.characters.index(of: char) ;
let pos = str.characters.distance(from: str.startIndex, to: index!) ;

//get subString by index 从第六位开始到最后的子串

let indexFifth = str.index(str.startIndex, offsetBy: 5) ;
str[indexFifth] ;
str.substring(from: indexFifth) ;

//从开始到","的子串
let indexTT = str.characters.index(of: ",") ;
str[indexTT!] ;
str.substring(to: indexTT!) ;

//insert "P" before "playground"
let rangePlay = str.range(of: "playground") ;
str.index(before: (rangePlay?.upperBound)!) ;
str.index(before: (rangePlay?.lowerBound)!) ;
str.insert("P", at: str.index(before: (rangePlay?.lowerBound)!)) ;
//use "word" replace "playground"
str.remove(at: str.index(before: (rangePlay?.lowerBound)!))
str.replaceSubrange(rangePlay!, with: "word") ;



