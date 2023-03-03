#ACARA School list
schoolList_profile_yearly <- schoolList_profile_yearly  %>%
  mutate(across(.cols = c(State, Campus.Type:Rolled.Reporting.Description, Governing.Body, Year.Range), .fns = as.factor)) %>% 
  mutate(Geolocation = factor(Geolocation, levels = c("Major Cities", "Inner Regional", "Outer Regional", "Remote", "Very Remote"), ordered = TRUE),
         School.Sector = factor(School.Sector, levels = c("Government", "Catholic", "Independent")),
         School.Type = factor(School.Type, levels = c("Primary", "Secondary", "Combined", "Special")))

#ACARA School list
schoolList_profile_2021 <- schoolList_profile_2021  %>%
  mutate(across(.cols = c(State, Campus.Type:Rolled.Reporting.Description, Governing.Body, Year.Range), .fns = as.factor)) %>% 
  mutate(Geolocation = factor(Geolocation, levels = c("Major Cities", "Inner Regional", "Outer Regional", "Remote", "Very Remote"), ordered = TRUE),
         School.Sector = factor(School.Sector, levels = c("Government", "Catholic", "Independent")),
         School.Type = factor(School.Type, levels = c("Primary", "Secondary", "Combined", "Special")))

#ACARA School list
schoolList_location_2021 <- schoolList_location_2021  %>%
  mutate(across(.cols = c(State, Campus.Type:Rolled.Reporting.Description), .fns = as.factor)) %>% 
  mutate(School.Sector = factor(School.Sector, levels = c("Government", "Catholic", "Independent")),
         School.Type = factor(School.Type, levels = c("Primary", "Secondary", "Combined", "Special")))