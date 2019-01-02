from time import gmtime, strftime
hour=strftime("%H")
min=strftime("%M")
mind=float(min)/60
time=float(hour)+mind
print(time)
