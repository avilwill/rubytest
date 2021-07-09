#return from a method is the last statment in the method
#example will always return var2 which is 11
def return_something()
    var1 = 10
    var2 = 11

    var2
end   


#assign to a variable 
#example assigning to various variables, this is easy
var1 = 9
var2 = "something"
jibberish = "anything in the world"
var3 = [1,2,3,4,5,6,7,8,9,10]
floatval = 23.83


#lop through an array
arrayList = [1,2,3,4,5,6,7,8]
arrayList.each do | value |
    #do whatever you want with the value, it's looping through each one
end    


#how do I add to an array
arrayList.push(12)  #adds to the end of the array
arrayList.unshift(0)  #inserts at the begining of the array