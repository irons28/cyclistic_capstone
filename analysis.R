{\rtf1\ansi\ansicpg1252\cocoartf2822
\cocoatextscaling0\cocoaplatform0{\fonttbl\f0\fswiss\fcharset0 Helvetica;}
{\colortbl;\red255\green255\blue255;}
{\*\expandedcolortbl;;}
\paperw11900\paperh16840\margl1440\margr1440\vieww11520\viewh8400\viewkind0
\pard\tx720\tx1440\tx2160\tx2880\tx3600\tx4320\tx5040\tx5760\tx6480\tx7200\tx7920\tx8640\pardirnatural\partightenfactor0

\f0\fs24 \cf0 # ---- LOAD LIBRARIES ----\
library(dplyr)\
library(lubridate)\
\
# ---- CLEAN trips_2019 ----\
trips_2019_renamed <- trips_2019 %>%\
  rename(\
    ride_id = trip_id,\
    started_at = start_time,\
    ended_at = end_time,\
    start_station_name = from_station_name,\
    start_station_id = from_station_id,\
    end_station_name = to_station_name,\
    end_station_id = to_station_id,\
    member_casual = usertype\
  ) %>%\
  mutate(\
    rideable_type = "classic_bike",       # 2019 has only classic bikes\
    ride_id = as.character(ride_id)       # ensure same type as 2020\
  )\
\
# ---- ENSURE 2020 ride_id IS CHARACTER ----\
trips_2020 <- trips_2020 %>%\
  mutate(ride_id = as.character(ride_id))\
\
# ---- COMBINE BOTH DATASETS ----\
combined_trips <- bind_rows(trips_2019_renamed, trips_2020)\
\
# ---- Create Combined Cleaned ----\
combined_cleaned <- combined_trips %>%\
  filter(!is.na(started_at), !is.na(ended_at)) %>%\
  mutate(\
    started_at = as.POSIXct(started_at),\
    ended_at = as.POSIXct(ended_at),\
    ride_length = as.numeric(difftime(ended_at, started_at, units = "mins")),\
    day_of_week = weekdays(started_at),\
    month = format(started_at, "%Y-%m")\
  ) %>%\
  filter(ride_length > 0)  # removes cancelled/broken rides\
\
# ---- Visualise The Data ----\
library(ggplot2)\
\
ggplot(combined_cleaned, aes(x = day_of_week, fill = member_casual)) +\
  geom_bar(position = "dodge") +\
  labs(title = "Rides per Day by User Type", x = "Day", y = "Number of Rides")\
\
# ---- Rotate The X-axis ----\
ggplot(combined_cleaned, aes(x = day_of_week, fill = member_casual)) +\
  geom_bar(position = "dodge") +\
  labs(\
    title = "Rides per Day by User Type",\
    x = "Day of Week", y = "Number of Rides"\
  ) +\
  theme(axis.text.x = element_text(angle = 45, hjust = 1))\
\
# ---- Calculate average ride length per group ----\
library(ggplot2)\
\
ggplot(avg_ride_length, aes(x = member_casual, y = avg_length, fill = member_casual)) +\
  geom_col(width = 0.6) +\
  labs(\
    title = "Average Ride Length by User Type",\
    x = "User Type",\
    y = "Average Ride Length (minutes)"\
  ) +\
  theme_minimal() +\
  theme(\
    plot.title = element_text(size = 14, face = "bold"),\
    axis.text = element_text(size = 12),\
    axis.title = element_text(size = 12),\
    axis.text.x = element_text(angle = 45, hjust = 1),\
    legend.position = "none"\
  )}