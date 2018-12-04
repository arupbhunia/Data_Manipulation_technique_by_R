a = list(rep(1,4), rep(2,3), rep(3,2), rep(4,1))
p=mapply(list,sum)
p
#same thing can be done using mapply
c=mapply(rep, 1:4, 4:1)
