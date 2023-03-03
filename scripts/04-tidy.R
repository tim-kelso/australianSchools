#start tidying
#pivot_longer
schoolList_profile_yearly <- schoolList_profile_yearly %>% 
  pivot_longer(ICSEA:Language.Background.Other.Than.English...Not.Stated...., values_to = "value", names_to = "measure")