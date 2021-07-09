
#ACARA School list
schoolList2008_2020 <- schoolList2008_2020 %>%
  mutate(across(.cols = c(State, Campus.Type:Rolled.Reporting.Description, Governing.Body, Year.Range), .fns = as.factor)) %>% 
  mutate(Geolocation = factor(Geolocation, levels = c("Major Cities", "Inner Regional", "Outer Regional", "Remote", "Very Remote"), ordered = TRUE),
         School.Sector = factor(School.Sector, levels = c("Government", "Catholic", "Independent")),
         School.Type = factor(School.Type, levels = c("Primary", "Secondary", "Combined", "Special")))