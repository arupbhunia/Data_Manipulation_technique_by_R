g=hflights %>%
  group_by(UniqueCarrier) %>%
  summarise(p_canc = mean(Cancelled == 1)*100,
           avg_delay = mean(ArrDelay,na.rm = TRUE))%>%
  arrange(avg_delay, p_canc)
#####rank function#######################

hflights %>%

  filter(!is.na(ArrDelay), ArrDelay>0) %>%

  group_by(UniqueCarrier) %>%

  summarise (avg = mean(ArrDelay))%>%

  mutate(rank = rank(avg)) %>%

  arrange(rank)
