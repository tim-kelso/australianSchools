
#import ACARA dataset
schoolList_profile_yearly <- read.csv("../data_raw/ACARA_school_profile_2008-2021.csv")
schoolList_profile_2021 <- read.csv("../data_raw/ACARA_school_profile_2021.csv")
schoolList_location_2021 <- read.csv("../data_raw/ACARA_school_location_2021.csv")


#import list of schools that don't have ACARAs in Dynamics
ACARAs_NotInDynamics <- read.csv("../../QTA/data_raw/ACARAs_Not_In_Dynamics.csv")