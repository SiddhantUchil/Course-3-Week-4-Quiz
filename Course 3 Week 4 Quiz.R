getwd()
a = read.csv("hid.csv")
b = strsplit(names(a), "wgtp")
b[[123]]
b[123]

c = read.csv("GDP.csv", skip = 4, nrows = 190)
View(c)
c = gsub(",","",c$X.4)
c = as.numeric(c)
d = read.csv("GDP.csv", skip = 4, nrows = 190)
d$money = c
d
mean(d$money)
View(c)

View(d)
grep("^United", d$X.3)

e = read.csv("GDP1.csv", skip = 4)
f = read.csv("edstats.csv")

View(e)
View(f)
names(e)[1] = "CountryCode"

g = merge(e, f, by = "CountryCode")
View(g)
library(dplyr)
library

h = arrange(g, X.1)
View(h)

i = gsub(",", "", h$X.4)
View(i)
i = as.numeric(i)
j = h 
j$X.4 = i
View(j)
h = arrange(j, j$X.4)
View(h)

table()

k = grepl("June", h$Special.Notes )

k = as.character(k)
summarise(group_by(k,), no = length(k))

l = tbl_df(h)  ##correct
View(l %>% group_by(Special.Notes) %>% summarize(number = length(Special.Notes)))

View(table(h$Special.Notes)) ##also correct

install.packages("quantmod")

library(quantmod)
amzn = getSymbols("AMZN",auto.assign=FALSE)
sampleTimes = index(amzn)

sampleTimes[1]

library(lubridate)
m = grepl(sampleTimes, "^2012*")
m = sampleTimes["^2012."]
sampleTimes$y = "2012"
ymd(sampleTimes[year = "2012"])
n = year(sampleTimes)
table(n)

o = ymd(sampleTimes)
?table

q = sampleTimes[grep("^2012", sampleTimes)] ##saves as date
p = grep("^2012", sampleTimes, value = TRUE) ##saves as character

table(wday(q, label = TRUE))























