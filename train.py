from bs4 import *
import requests as rq
from datetime import *
import re

current_hour = int(datetime.now().strftime("%H"))
current_day = int(datetime.now().strftime("%w"))
print(current_hour)
sixHourPlus = current_hour + 7

def trainList(station_from, station_to, rail_line):
    counter = 0
    dict = {}
    if rail_line == "Western Railway":
        URL = f"""https://www.metrotraintimings.in/Mumbai/Local-Train-Timetable-{station_from.replace(" ", "_")}-to-{station_to.replace(" ", "_")}-{current_hour}%3A00-{sixHourPlus}%3A00.htm"""
        html_doc = rq.get(URL)
    elif rail_line == "Central Railway":
        URL = f"""https://www.metrotraintimings.in/Mumbai/Local-Train-Timetable-from-{station_from.replace(" ", "_")}-to-{station_to.replace(" ", "_")}-{current_hour}%3A00-{sixHourPlus}%3A00.htm"""
        html_doc = rq.get(URL)
    elif rail_line == "Harbour Line":
        URL = f"""https://www.metrotraintimings.in/Mumbai/Local-Train-Time-Table-{station_from.replace(" ", "_")}-to-{station_to.replace(" ", "_")}-{current_hour}%3A00-{sixHourPlus}%3A00.htm"""
        html_doc = rq.get(URL)
        
    print(URL)
    soup = BeautifulSoup(html_doc.text, features="html.parser")
    tablines = soup.find_all("td", class_="tabline", attrs={"style":re.compile("color:#ff4500")})
    links = soup.find_all("a", attrs={"style": re.compile("color:blue"), "title":re.compile("train")})
    for j in range(0, len(links)-1):
        if "*" in links[j].text and current_day == 0:
            j += 1
        else:

            car_no = links[j].text
            for i in range(j, j+2):
                if counter % 2 == 0:
                    start_time = tablines[i].text 
                else:
                    arrival_time = tablines[i].text
                counter += 1
            dict[str(car_no)] = {"start time": start_time.replace(u'\xa0', u' '), "arrival_time": arrival_time.replace(u'\xa0', u'') }
    print(dict)


trainList("Bandra", "Church Gate", "Western Railway")