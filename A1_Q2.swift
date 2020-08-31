var str1 : String = "here and there";
var str2 : String = "I have been looking for you!";
var position = str2.count;
for each in str1{
    position = str2.count - 1;
    str2.insert(each, at: str2.index(str2.startIndex, offsetBy: position))
}
print(str2)
str2.removeLast();
print(str2)