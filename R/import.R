# Data Import

numbers = scan()

characters = scan(what = "character")

library(data.table)

mydata = fread("Bug Frequency.csv")

mydata

df = fread("1	 Singapore	5,535,000	710	7796
2	 Bangladesh	161,470,000	143,998	1,121
           3	 Taiwan	23,519,518	36,190	650
           4	 South Korea	50,801,405	99,538	510
           5	 Lebanon	5,988,000	10,452	573
           6	 Rwanda	11,553,188	26,338	439
           7	 Burundi	11,552,561	27,816	415
           8	 Netherlands	17,070,000	41,526	411
           9	 Haiti	11,078,033	27,065	409
           10	 India	1,308,220,000	3,287,240	398
           ")
df

df = fread("1	 Singapore	5,535,000	710	7796
2	 Bangladesh	161,470,000	143,998	1,121
           3	 Taiwan	23,519,518	36,190	650
           4	 South Korea	50,801,405	99,538	510
           5	 Lebanon	5,988,000	10,452	573
           6	 Rwanda	11,553,188	26,338	439
           7	 Burundi	11,552,561	27,816	415
           8	 Netherlands	17,070,000	41,526	411
           9	 Haiti	11,078,033	27,065	409
           10	 India	1,308,220,000	3,287,240	398
           ", col.names = c("Rank", "Country", "Population", "Area", "Density"))
df; class(df)

?Foreign
