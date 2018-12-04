#having flight details#
library(hflights)
data=select(hflights,Year,Month)
str(hflights)
glimpse(data)
str(data)
data=select(hflights,UniqueCarrier,ends_with("Num"),starts_with("Cancel"))


##############mutate######################################

data1=mutate(hflights,totaldelay= ArrDelay + DepDelay)
str(data1)
p=select(data1,totaldelay>-11)


#######filter#######################################################
long_flights=filter(hflights,TaxiIn+TaxiOut>AirTime) 
glimpse(long_flights)

################arrange###########################################
dtc = filter(hflights, Cancelled == 1, !is.na(DepDelay)) #Delay not equal to NA
glimpse(dtc)

# Arrange dtc by departure delays
d = arrange(dtc, DepDelay)
e = arrange(dtc,desc(DepDelay))

# Arrange dtc so that cancellation reasons are grouped
c <- arrange(dtc,CancellationCode )