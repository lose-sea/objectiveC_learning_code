//
//  问答.h
//  test111
//
//  Created by lose_sea on 2026/3/26.
//

#ifndef ___h
#define ___h


#endif /* ___h */




1. 属性是成员变量 和 setter 与 getter 方法封装之后得到的

2. == 在比较OC对象的时候是比较的内存地址, 在不重写isEqual 的情况下, isEqual 与 == 是等价的

3. 分类不能添加成员变量和属性, 扩展能添加成员变量和属性

4. NSString 内部有三种类型
        _NSCFContentstring 字符串常量
        _NSCFing        存放在堆区的字符串
        _NSToggedPointString    通过stringFormat 方式创建且无中文字符, 字符串长度 <= 9

5. 空指针是指 nil, 野指针是指在创建指针后没有设置指向, 悬空指针是指所指向的内存释放之后没有置为空

6.atomic 原子性, 可以保证线程安全, 保证当前线程不会有其他线程插入,但是会影响程序运行效率
nonatomic: 使用nonatomic 是在单线程的情况下,可以提高程序运行的效率

7. delegate 使用weak 修饰为了防止 代理方 和 委托方互相循环引用造成内存泄漏

8. 分类中能重写原类方法, 会导致该类有两个同名方法,在运行是识别不到该调用哪个方法



