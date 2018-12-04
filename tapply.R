list_c=list(age=c(25,12,45,22,15),gender=c("m","f","m","m","f"))
f=factor(gender)
p=tapply(age,f,mean)
