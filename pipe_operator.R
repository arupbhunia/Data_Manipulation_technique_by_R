str(hflights)
c=hflights %>%
select(FlightNum,TailNum)%>%
filter(TailNum=="N576AA")