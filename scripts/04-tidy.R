#start tidying
#pivot_longer
schoolList2008_2020 <- schoolList2008_2020 %>% 
  pivot_longer(ICSEA:Language.Background.Other.Than.English...Not.Stated...., values_to = "value", names_to = "measure")