
# 1
online <- ifelse(couples$Q32_2 == "Yes, a social networking site (like Facebook or Myspace)" |  couples$Q32_2 == "Yes, an app on my phone (like Tinder or Grindr)" | couples$Q32_2 == "Yes, a different kind of Internet service" | couples$Q32_2 == "Yes, an Internet dating or matchmaking site (like eHarmony or match.com)" | couples$Q32_2 == "Yes, an Internet chat room" | couples$Q32_2 == "Yes, an Internet classified advertising site (like Craigslist)", 1, 0)
not_online <- ifelse(couples$Q32_2 == "No, I did NOT meet [Partner Name] through the Internet", 1, 0)
refused <- ifelse(couples$Q32_2 == "Refused", 1, 0)

# Creating time variable, bins for decades starting from 1940
filtered_df <- filtered_df %>%
  mutate(year_group = cut(year_met,
                          breaks = seq(1940, 2030, by = 10), # Define decade intervals
                          labels = c("1940-1949", "1950-1959", "1960-1969", 
                                     "1970-1979", "1980-1989", "1990-1999", 
                                     "2000-2009", "2010-2019", "2020-2029"),
                          include.lowest = TRUE)) # Left-inclusive intervals


# graph 5.a: Stacked bar chart for meeting types by respondent's political affiliation

graph_5a <-ggplot(df, aes(x = resp_party, fill = type_met)) +
  geom_bar(position = "fill") +  # Normalize to proportions
  theme_minimal() +
  labs(
    title = "Meeting Types by Respondent's Political Affiliation",
    x = "Respondent's Political Affiliation",
    y = "Proportion",
    fill = "Meeting Type"
  ) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

graph_5a

# graph 5.b: Stacked bar chart for meeting types by partner's political affiliation
graph_5b <- ggplot(df, aes(x = part_party, fill = type_met)) +
  geom_bar(position = "fill") +  # Normalize to proportions
  theme_minimal() +
  labs(
    title = "Meeting Types by Partner's Political Affiliation",
    x = "Partner's Political Affiliation",
    y = "Proportion",
    fill = "Meeting Type"
  ) +
  theme(axis.text.x = element_text(angle = 45, hjust = 1))

graph_5 <- graph_5a + graph_5b
graph_5