## Load
library(here)
library(tidyverse)

## Read data
## 2018-19 Account Heads Data
heads_18_19 <- read_csv("data/raw/heads_18_19.csv")

## 2019-20 Account Heads Data
heads_19_20 <- read_csv("data/raw/heads_19_20.csv")

## Scope Heads
ed_scope <- read_csv("data/raw/ed_scope_heads.csv")

## Scope Data
## 2018-19
## In-scope
in_scope_18_19 <- heads_18_19 %>%
    inner_join(ed_scope) %>%
    group_by(demand, demand_desc, major, major_desc, sub_major, sub_major_desc, 
             minor, minor_desc, sub_minor, sub_minor_desc) %>%
    summarize(net_payment = sum(NETPAYMENT))

## Out of scope
oo_scope_18_19 <- heads_18_19 %>%
  anti_join(ed_scope) %>%
  group_by(demand, demand_desc, major, major_desc, sub_major, sub_major_desc, 
           minor, minor_desc, sub_minor, sub_minor_desc) %>%
  summarize(net_payment = sum(NETPAYMENT))

## 2019-20
## In-scope
in_scope_19_20 <- heads_19_20 %>%
  inner_join(ed_scope) %>%
  group_by(demand, demand_desc, major, major_desc, sub_major, sub_major_desc, 
           minor, minor_desc, sub_minor, sub_minor_desc) %>%
  summarize(net_payment = sum(NETPAYMENT))

## Out of scope
oo_scope_19_20 <- heads_19_20 %>%
  anti_join(ed_scope) %>%
  group_by(demand, demand_desc, major, major_desc, sub_major, sub_major_desc, 
           minor, minor_desc, sub_minor, sub_minor_desc) %>%
  summarize(net_payment = sum(NETPAYMENT))

## Store the data files
## 2018-19
## In-scope
write_csv(in_scope_18_19, "data/processed/in_scope_18_19.csv")

## Out of scope
write_csv(oo_scope_18_19, "data/processed/oo_scope_18_19.csv")

## 2019-20
## In-scope
write_csv(in_scope_19_20, "data/processed/in_scope_19_20.csv")

## Out of scope
write_csv(in_scope_19_20, "data/processed/oo_scope_19_20.csv")
