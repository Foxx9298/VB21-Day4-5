# Prepare Hobolt data for replication
library("haven")
library(tidyverse)
data_bes <- 
  read_dta("~/../Downloads/rjpp_a_1225785_sm3636/HoboltBrexitVote2016_ReplicationData(BES).dta") %>%
  drop_na(LeaveVote) %>%
  select(LeaveVote, gender, age, edlevel, hhincome, econPersonalRetro1, 
         EuropeanIdentity, EnglishIdentity, BritishIdentity, PolMistrust, 
         GovDisapproval, PopulismScale, ConVote, LabVote, LibVote, SNPPCVote, 
         UKIP, euUKNotRich, euNotPreventWar, FreeTradeBad, euParlOverRide1, 
         euUndermineIdentity1, lessEUmigrants, effectsEUTrade1, effectsEUImmigrationLower) %>%
  drop_na() 

data_bes %>% write_csv("data/data_bes.csv.gz")
