# Topic 3: Date in R

###################################################################################

# Today's date

today <- Sys.Date()

today

class(today)

#Creating date from character

character_date <- "1957-03-04"

class(character_date)

# Convert into date class by as.Date function

sp500_birthday <- as.Date(character_date)

sp500_birthday

class(sp500_birthday)

# Date format

#default - ISO 8601 ISO 8601 Standard: year-month-day

as.Date("2017-01-28")

# Alternative form: year/month/day

as.Date("2017/01/28")

#Fails: month/day/year

as.Date("01/28/2017")

# Explicitly tell R the format

as.Date("01/28/2017", format = "%m/%d/%Y")

#Date format

# %d - Day of the month (01-31)

# %m - Month (01-12)

# %y - Year without century (00-99)

# %Y - Year with century (0-9999)

# %b - Abbreviated month name

# %B - Full month name

# "/" "-" "," Common separators

# Example: September 15, 2008

as.Date("September 15, 2008", format = "%B %d, %Y")

# Extract the Weekdays

dates <- as.Date(c("2017-01-02", "2017-05-03", "2017-08-04", "2017-10-17"))

dates

weekdays(dates)

# Extract the months

months(dates)

# Extract the quarters

quarters(dates)