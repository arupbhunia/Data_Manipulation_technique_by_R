#apply(x,margin,function)
m=matrix(c(1,2,3,4),2,2)
#when m =1 function will be applied on row
p=apply(m,1,sum)
p
#when m = 2 function will be applied on col
b=apply(m,2,sum)
b