require "common.rb"

article "Sat., Feb. 4, 2012 Day of Action: No Sanctions, No War Against Iran!",
  :depth => 1 do
  div :style => "float: right; background-color: white; padding: 2px;" do
    img_size = [565, 586]
    scaled = img_size.map{|e|e / 2}
    img :src => "../img/nowaroniranFeb4.jpg",
      :width => scaled[0], :height => scaled[1]
  end
  p "No War!  No Sanctions!  No Intervention!  No Assassinations!"
  p "Actions in at least 30 cities!"
  ol do
    li "NYC, NY 1pm North end of Times Square - Duffy Square.  March to the US & Israeli missions to UN."
    li "Albany NY noon, Wolf Road & Central Ave, March 1pm to mall recruiting station."
    li "Buffalo, NY 3pm at City Hall Square, then marching."
    li "Saratoga, NY Noon at Broadway by Post Office, Weekly Vigil Site."
    li "Milwaukee, WI Noon  at East Capitol Dr. Bridge just east of Capitol Ave & Humbold Blvd."
    li "Green Bay, WI Noon at Lambeau Field."
    li "Boston, MA 1pm Tremont & Park St, March to Israeli consulate & Copley Square"
    li "Los Angeles, CA 2 pm Westwood Fed Building, next to UCLA campus."
    li "Los Angeles, CA Noon, Wilshire & Western Metro Stop."
    li "San Francisco, CA, Noon Powell & Market, BART Plaza"
    li "Truckee, CA Noon, Donner Pass Rd/ Highway 89"
    li "Baltimore, MD. Fri, Feb 3 at 5pm rush hour McKelvin Sq, Pratt & Light Street."
    li "Minneapolis, MN 3 pm at 3rd St & Cedar Avenue South."
    li "Des Moines IA teach-in AFSC office 42nd and Grand."
    li "Tampa, FL, Noon-2pm March on McDill AFB CentComm, rally at Gandy Bivd. & Dale Mabry Highway"
    li "Detroit MI 2pm Grand Circus Park – Woodward Ave at Adams."
    li "Richmond VA, Noon, Federal Building."
    li "Norfolk, VA 1pm City Hall Ave at Saint Paul Blvd."
    li "Seattle, WA 1:30 Westlake Center, March to Military processing center."
    li "Raleigh, NC 2pm Federal Building, New Bern Ave"
    li "Kochville MI 12 noon Bay Rd & Tittabawassee Rd"
    li "Chicago, IL Noon, Federal Plaza"
    li "Washington DC Noon, Lafayette Square, White House"
    li "Harrisburg, PA Noon, State Capitol Steps, 3rd Street Side at North & Walnut"
    li "Philadelphia PA Noon 5th & Market, Independence Hall."
    li "Phoenix, AZ, 2pm Cesar Chavez Plaza, 200 W Washington."
    li "Tucson, AZ 6pmUnitarian Universalist Church, 4831 E. 22 St."
    li "Nashville TN 2pm, Nashville Legislative Plaza 6th Ave & Deaderick St."
    li "Atlanta, GA 4:30 - 5:30pm, CNN Center, Marietta & Centennial Olympic Park."
    li "Des Moines, IA 1pm Civic Center, Nollen Plaza,"
  end
  p "Countries:"
  ol do
    li "Ireland at Shannon Air Base, forward base for NATO,"
    li "Bangaldesh capital Dacca rally and march;"
    li "India message of actions in several cities including Calcutta."
    li "Vancouver Canada: Picket and rally in front of US consulate, downtown, 3-6pm"
  end
  p do
    text "Group in Iran called House of Latin America, is contacting groups"
    text "internationally and urging activity in several countries."  
  end
  p do
    text "Possible additional listings on ANSWER's page"
    honest_anchor "http://www.answercoalition.org/national/news/no-war-on-iran.html"
    text "."
  end
end # article
