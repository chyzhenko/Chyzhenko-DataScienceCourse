dataset = read.csv("/home/Chizhenko/DataScienceCourseKNU/hw1_data.csv")
print(dataset)
#1. Які назви стовпців файлу даних?
rownames(dataset)
# [1] "1"   "2"   "3"   "4"   "5"   "6"   "7"   "8"   "9"   "10"  "11"  "12"  "13"  "14"  "15"  "16"  "17"  "18"  "19"  "20"  "21"  "22"  "23"  "24"  "25"  "26" 
# [27] "27"  "28"  "29"  "30"  "31"  "32"  "33"  "34"  "35"  "36"  "37"  "38"  "39"  "40"  "41"  "42"  "43"  "44"  "45"  "46"  "47"  "48"  "49"  "50"  "51"  "52" 
#[53] "53"  "54"  "55"  "56"  "57"  "58"  "59"  "60"  "61"  "62"  "63"  "64"  "65"  "66"  "67"  "68"  "69"  "70"  "71"  "72"  "73"  "74"  "75"  "76"  "77"  "78" 
# [79] "79"  "80"  "81"  "82"  "83"  "84"  "85"  "86"  "87"  "88"  "89"  "90"  "91"  "92"  "93"  "94"  "95"  "96"  "97"  "98"  "99"  "100" "101" "102" "103" "104"
# [105] "105" "106" "107" "108" "109" "110" "111" "112" "113" "114" "115" "116" "117" "118" "119" "120" "121" "122" "123" "124" "125" "126" "127" "128" "129" "130"
# [131] "131" "132" "133" "134" "135" "136" "137" "138" "139" "140" "141" "142" "143" "144" "145" "146" "147" "148" "149" "150" "151" "152" "153"

# 2. Виведіть перші 6 строк фрейму даних.
print(head(dataset, 6))

# 3. Скільки спостерігань (строк) в дата фреймі?
print(length(dataset$Day))

# 4. Виведіть останні 10 строк дата фрейму.
print(tail(dataset, 10))

# 5. Як багато значень «NA» в стовпці «Ozone»?
print(length(which(dataset$Ozone %in% NA)))
# output 37

# 6. Яке середнє (mean) стовпця «Ozone». Виключити «NA» значення.
print(mean(dataset$Ozone, na.rm=TRUE))
# output 42.12931

# 7. Виведіть частину набору даних (subset) зі значенням «Ozone» > 31 та «Temp» > 90. Яке середнє (mean) значень «Solar.R» в цьому наборі даних (subset)?
subsetData <- dataset[(dataset$Ozone > 37) & (dataset$Temp >90), ]
print(subsetData)
#      Ozone Solar.R Wind Temp Month Day
# NA      NA      NA   NA   NA    NA  NA
# NA.1    NA      NA   NA   NA    NA  NA
# 69      97     267  6.3   92     7   8
# 70      97     272  5.7   92     7   9
# NA.2    NA      NA   NA   NA    NA  NA
# NA.3    NA      NA   NA   NA    NA  NA
# 120     76     203  9.7   97     8  28
# 121    118     225  2.3   94     8  29
# 122     84     237  6.3   96     8  30
# 123     85     188  6.3   94     8  31
# 124     96     167  6.9   91     9   1
# 125     78     197  5.1   92     9   2
# 126     73     183  2.8   93     9   3
# 127     91     189  4.6   93     9   4
print(mean(subsetData$Solar.R))
# NA
print(mean(subsetData$Solar.R, na.rm=TRUE))
# 212.8

# 8. Яке середнє значення (mean) для «Temp» для червня («Month» дорівнює 6)?
print(mean((dataset[(dataset$Month == 6), ])$Temp))
# output 77.88235

# 9. Яке максимальне значення «Ozone» для травня («Month» дорівнює 5)?
subset(dataset, Month == 5)
# output:
# [1] Ozone   Solar.R Wind    Temp    Month   Day    
# <0 rows> (or 0-length row.names)

# That's why I'll calculate it for 6th month
print(max(subset(dataset, Month == 6)$Ozone, na.rm = TRUE))
# output 168 or NA(withot rm.na = TRUE)
