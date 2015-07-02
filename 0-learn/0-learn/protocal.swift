//
//  protocal.swift
//  0-learn
//
//  Created by xuthus on 15/5/31.
//  Copyright (c) 2015年 xuthus. All rights reserved.
//

import Foundation


func repeats<Item>(item: Item, times: Int) -> [Item] {
    var result = [Item]()
    for i in 0..<times {
        result.append(item)
    }
    return result
}
func test() {
    var f = repeats("knock", 4)
    println(f)
}
//test()
//enum OptionalValue<T> {
//    case None
//    case Some(T)
//}
//var possibleInteger: OptionalValue<Int> = .None
//possibleInteger = .Some(100)
//
//func anyCommonElements <T, U where T: SequenceType, U:SequenceType,
//    T.Generator.Element: Equatable, T.Generator.Element == U.Generator.Element>(
//    lhs: T,rhs: U ) -> Bool {
//        for lhsItem in lhs {
//            for rhsItem in rhs {
//                if lhsItem == rhsItem {
//                    return true
//                }
//                
//            }
//        }
//}

//直接在类的外面调用类内部的方法，会出现Bug：Expressions are not allowed at the top level。
//在App工程里， .swift 文件都是编译成模块的，不能有  top level code。
//
//　　先明确一个概念，一个 .swift 文件执行是从它的第一条非声明语句（表达式、控制结构）开始的，同时包括声明中的赋值部分（对应为 mov 指令或者 lea 指令），所有这些语句，构成了该 .swift 文件的 top_level_code() 函数。而所有的声明，包括结构体、类、枚举及其方法，都不属于 top_level_code() 代码部分，其中的代码逻辑，包含在其他区域，top_level_code() 可以直接调用他们。程序的入口是隐含的一个 main(argc, argv) 函数，该函数执行逻辑是设置全局变量 C_ARGC C_ARGV，然后调用 top_level_code()。不是所有的 .swift 文件都可以作为模块，目前看，任何包含表达式语句和控制语句的 .swift 文件都不可以作为模块。正常情况下模块可以包含全局变量(var)、全局常量(let)、结构体(struct)、类(class)、枚举(enum)、协议(protocol)、扩展(extension)、函数(func)、以及全局属性(var { get set })。这里的全局，指的是定义在 top level 。这里说的表达式指 expression ，语句指 statement ，声明指 declaration 。因此，如果代码中直接在类的外面调用类内部的方法，则该.swift 文件是编译不成的模块的，所以会编译报错。
 