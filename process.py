log_file = open("um-server-01.txt")#this is opening the server#

def sales_reports(log_file):
    for line in log_file:  #A for loop to, you know, loop over the data#
        line = line.rstrip()#I think this and the next line shorten the days of the week to just 3 characters?#
        day = line[0:3]
        if day == "Mon": #this is saying that if the day in the line is Tuesday, its gonna show it to us.(now says Monday)# 
            print(line)

sales_reports(log_file)   #logs that we were here, I think closing it?
