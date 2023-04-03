#ACARA School list
schoolProfile_yearly <- schoolProfile_yearly  %>%
  mutate(across(.cols = c(State, Campus.Type:Rolled.Reporting.Description, Governing.Body, Year.Range), .fns = as.factor)) %>% 
  mutate(Geolocation = factor(Geolocation, levels = c("Major Cities", "Inner Regional", "Outer Regional", "Remote", "Very Remote"), ordered = TRUE),
         School.Sector = factor(School.Sector, levels = c("Government", "Catholic", "Independent")),
         School.Type = factor(School.Type, levels = c("Primary", "Secondary", "Combined", "Special")))

schoolLocation_yearly <- schoolLocation_2019  %>%
  bind_rows(schoolLocation_2020, schoolLocation_2021, schoolLocation_2022) %>% 
  mutate(across(.cols = c(State, Campus.Type:Rolled.Reporting.Description, ABS.Remoteness.Area.Name), .fns = as.factor)) %>% 
  mutate(School.Sector = factor(School.Sector, levels = c("Government", "Catholic", "Independent")),
         School.Type = factor(School.Type, levels = c("Primary", "Secondary", "Combined", "Special")))

#ACARA School list
schoolProfile_2021 <- schoolProfile_2021  %>%
  mutate(across(.cols = c(State, Campus.Type:Rolled.Reporting.Description, Governing.Body, Year.Range), .fns = as.factor)) %>% 
  mutate(Geolocation = factor(Geolocation, levels = c("Major Cities", "Inner Regional", "Outer Regional", "Remote", "Very Remote"), ordered = TRUE),
         School.Sector = factor(School.Sector, levels = c("Government", "Catholic", "Independent")),
         School.Type = factor(School.Type, levels = c("Primary", "Secondary", "Combined", "Special")))

#ACARA School list
schoolLocation_2021 <- schoolLocation_2021  %>%
  mutate(across(.cols = c(State, Campus.Type:Rolled.Reporting.Description), .fns = as.factor)) %>% 
  mutate(School.Sector = factor(School.Sector, levels = c("Government", "Catholic", "Independent")),
         School.Type = factor(School.Type, levels = c("Primary", "Secondary", "Combined", "Special")))

schoolProfile_2022 <- schoolProfile_2022  %>%
  mutate(across(.cols = c(State, Campus.Type:Rolled.Reporting.Description, Governing.Body, Year.Range), .fns = as.factor)) %>% 
  mutate(Geolocation = factor(Geolocation, levels = c("Major Cities", "Inner Regional", "Outer Regional", "Remote", "Very Remote"), ordered = TRUE),
         School.Sector = factor(School.Sector, levels = c("Government", "Catholic", "Independent")),
         School.Type = factor(School.Type, levels = c("Primary", "Secondary", "Combined", "Special")))

#ACARA School list
schoolLocation_2022 <- schoolLocation_2022  %>%
  mutate(across(.cols = c(State, Campus.Type:Rolled.Reporting.Description), .fns = as.factor)) %>% 
  mutate(School.Sector = factor(School.Sector, levels = c("Government", "Catholic", "Independent")),
         School.Type = factor(School.Type, levels = c("Primary", "Secondary", "Combined", "Special")))