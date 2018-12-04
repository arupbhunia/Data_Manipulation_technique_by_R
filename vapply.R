m=matrix(c(1:4),2,2)
n=vapply(m,sum,FUN.VALUE = double(1))
n
list_b=list(c(1:4),c(5:8),c(9:12))
b=vapply(list_b,sum,FUN.VALUE = double(1))
