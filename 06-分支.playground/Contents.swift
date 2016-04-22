//: Playground - noun: a place where people can play

import UIKit

let num = 10

if num == 5 {
    
    print(5)
} else {

    print("10")
}

/*zaiOC中 if else可以使用三目运算符来简写
 注意：在做swift开发中三目运算符用得非常非常多
*/

let res = (num == 5) ? 5 : 10
print(res)

/*可选类型:代表着可以有也可以没有 Optional
 convenience init?
 以后但凡看到一个方法或者数据类型后面有？，就代表返回的是一个可选类型
 初学者看到？需要淡定一点，因为从OC转入Swift之后，最让人蛋疼的就是 ？ ！ ？？
 
 初学者对于？ ！最好借助编译器来解决问题
 
 使用可选类型需要注意，如果直接打印可选类型，那么打印出来的值会被Optional包裹
 ! 代表告诉编译器，可选类型中一定有值，强制解析
 如果可选类型中没有值，而又进行了强制解析，那么程序就会崩溃
 */
let url = NSURL(string:  "http://www.baidu.com")
print(url)

let url2 = NSURL(string: "http://www.baidu.com/img")
print(url2)

//Swift的用意就是让我们将大部分运行时的错误，都在编译时解决
let request = NSURLRequest(URL: url2!)
if url2 != nil
{
    
    let request2 = NSURLRequest(URL: url2!)
    
}

//可选绑定
//会将url中的值取出来赋值给urlFinal变量，如果值不为nil，那么就可以进入{}
if let urlFinal = url {
    
    let request = NSURLRequest(URL: urlFinal)
    
}






        