require "common.rb"

article "My observations from Tehran", :depth => 1 do
  flush
  print <<-'!'
<div>
<!-- I enclosed what I'm importing, in this div, to try to
  rescue the parse of the elements that follow it.  But it
  does not work (in Firefox).
-->
<p>
Esfandiar Bakhtiar
<br/> Sent: Tuesday, July 21, 2009 3:24 PM
</p>
<p><span class="first_word">I just</span> returned from Iran. I spent close to four weeks in the midst of the protests and participated in lots of the events. Here are some facts (my observations):
</p>
<p>*- Majority of protestors is from the privileged northern part of Tehran.
</p>
<p>*- almost 40 – 50% students, 30 -40%those who did not vote, but were against the regime; (out of non-voters, 50 – 60% Saltanat Talaban, some 30% no political affiliation or ideology, some 10% Mojahedeen, &nbsp;and the rest were the opportunists “Obash and Arazel, drug addicts, etc.” who did not care about anything except what they could take home that night.
</p>
<p>*- Most of the protests were confined to few streets in the northern part of the town in the afternoon. 
</p>
<p>*- All along, life was as normal as it could be. Except people would avoid certain streets in the afternoon for the fear of being mugged or get entangled in the traffic.
</p>
<p>*- The biggest crowd that I could estimate (based on the crowd intensity per Square meter) was 300,000, out of approximately 12 million populations living in Tehran.
</p>

<p>&nbsp;*- I made an insane point to ask those who were using their cell phone to take pictures and/or record the events, who long they had had their phones. Out of those who were honest (perhaps stupid enough) to answer my question, 90% had purchased their cell phones almost a month before the election. This was a significant question in my research.
</p>
<p>*- Literary there was no comparison between what I witnessed that day with what I could see on CNN on internet,. The western media portrayed the event like a civil war, while the life was very normal.
</p>
<p>*- I asked the following questions from almost everyone I spoke with:
</p>
<p>A- Who is your alternative regime, if there is going to be any regime change?
</p>

<p>B- What was the difference between AN and Mosavi, in their leadership style; economic, political and social.
</p>
<p>C- What would you do if tomorrow the regime chose you as the leader?
</p>
<p>D- What do you think is the three most important responsibilities of the government against its people.
</p>
<p>To my great surprise, Over 90% could not answer the questions; 
</p>
<p>However, there was one common denominator among all whom I spoke with; whether a cab driver, student, businessman, housewife, anti or pro regime, university professor, construction worker, etc. This commonality related to the fact that how much they literary hated the opposition groups out of the country.
</p>
<p>Here are some almost, I want to emphasize the word ALMOST, direct quotes about the opposition groups outside Iran:
</p>
<p>“They are a bunch of idiots sitting in the comfort of their secured and air-conditioned houses, engage in parting, drinking and having fun, and every once in a while stick their heads out of their…….. and give us direction: Go ahead, get on the streets, protest, destroy the regime, prepare the country for our return, we will come and take you to your dream land”. Their anger from these groups is as much as their anger against the regime. IN fact some said “If I have to choose between the current regime, and those opposition groups outside of Iran, I prefer to serve this regime by all means”.
</p>
<p>Esfandiar,</p>
</p></p></p></p></p></p></p></p></p></p></p></p></p></p></p>
</div>
<div><p><hr/></p></div>
!
  div do
    p :style => "text-align: left" do
      text "Retrieved 2009-07-22 from"
      path = "http://groups.google.com/group/laal/browse_thread/thread/8de8978723a4502d?hl=en&pli=1"
      a path, :href => path
      text "."
    end # p
  end
end # article

