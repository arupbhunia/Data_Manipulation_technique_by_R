g=hflights %>%
  group_by(UniqueCarrier) %>%
  summarise(p_canc = mean(Cancelled == 1)*100,
           avg_delay = mean(ArrDelay,na.rm = TRUE))%>%
  arrange(avg_delay, p_canc)