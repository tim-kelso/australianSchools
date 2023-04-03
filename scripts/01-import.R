#QTA data_raw path
QTAdataPath <- "C:/Users/twk208/OneDrive - The University of Newcastle/QTA/data_raw/ACARA/"
QTAdataProcessedPath <- "C:/Users/twk208/OneDrive - The University of Newcastle/QTA/data_processed/ACARA/"

#import ACARA dataset
schoolProfile_yearly <- read_excel(paste0(QTAdataPath,"ACARA_school_profile_2008-2022.xlsx"), sheet = "SchoolProfile 2008-2022", .name_repair = "universal")
schoolLocation_2022 <- read_excel(paste0(QTAdataPath, "ACARA_school_location_2022.xlsx"), sheet = "SchoolLocations 2022", .name_repair = "universal") %>% mutate(Calendar.Year = 2022)
schoolLocation_2021 <- read_excel(paste0(QTAdataPath,"ACARA_school_location_2021.xlsx"), sheet = "SchoolLocations 2021", .name_repair = "universal")%>% mutate(Calendar.Year = 2021)
schoolLocation_2020 <- read_excel(paste0(QTAdataPath,"ACARA_school_location_2020.xlsx"), sheet = "SchoolLocations 2020", .name_repair = "universal")%>% mutate(Calendar.Year = 2020)
schoolLocation_2019 <- read_excel(paste0(QTAdataPath,"ACARA_school_location_2019.xlsx"), sheet = "School Location 2019", .name_repair = "universal")%>% mutate(Calendar.Year = 2019)
schoolProfile_2022 <- read_excel(paste0(QTAdataPath, "ACARA_school_profile_2022.xlsx"), sheet = "SchoolProfile 2022", .name_repair = "universal")
schoolProfile_2021 <- read_excel(paste0(QTAdataPath,"ACARA_school_profile_2021.xlsx"), sheet = "SchoolProfile 2021", .name_repair = "universal")


#import list of schools that don't have ACARAs in Dynamics
ACARAs_NotInDynamics <- read.csv(paste0(QTAdataProcessedPath, "ACARAs_Not_In_Dynamics.csv"))
