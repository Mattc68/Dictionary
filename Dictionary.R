library(rvest)
library(dplyr)
library(stringr)

url <- "https://www.dictionary.com/browse/key"

html <- read_html(url)
data <- str_split(html, "div value=\"", )
example <- data[[1]][3]

pos <- str_extract_all(as.character(html), "<span class=\"luna-pos\">(.*?)</span>")
plur <- str_extract(as.character(html), "<span class=\"luna-inflected-form\">(.*?)</span>")

pos

number <- str_split(example, "\"")
number <- as.numeric(number[[1]][1])

removes <- str_split(example, ">")
removes[[1]][1]
example <- str_replace(example, removes[[1]][1], "")
example <- str_replace(example, removes[[1]][2], "")

removes <- str_extract_all(example, "<(.*?)>")
example <- str_replace(example, removes[[1]][4], "")
example <- str_replace(example, ">>", "")
example <- str_replace(example, "\n<", "")

example

removes <- str_extract(" (.*?)")

s = "a | b | c | d"
sdata <- str_split(s, " | ")
sdata[[1]][2]


t = "zxlfja;lsdfjaaa answer bbb"
str_extract(t, "aaa (.*?) bbb")
regex()
