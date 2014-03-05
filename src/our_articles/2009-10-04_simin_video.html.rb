require "common.rb"

article \
  "﻿Video: Interview with Simin Royanian on the 2009 Presidential " +
  "Election in Iran",
  :depth => 1  do

  div :style => "float: right; background-color: white; padding: 2px;" do
    img :src => "../img/2009_simin_interview.jpg"
  end

  p "This summary includes some of the questions posed in the four parts."

  output <<'!'
<h2>Part One</h2>
<p>
  Q: Who is your candidate of choice in the 2009 Iran elections
  and why?</p>
<p>
  Q: Some argue that Ahmadinejad's speeches are harsh against
  the west and that causes tension; do you agree?</p>
<p>
  Q: If Iran is in such a good position domestically,
  then why are people protesting against Ahmadinejad?</p>
<p>
  Q: So are you suggesting that young Iranians are actually
  protesting against the core values of the Islamic
  Republic instead?</p>
<p>
  <a href="http://www.youtube.com/watch?v=wv0H54yAGyI">
    [Video]</a></p>


<h2>Part Two</h2>
<p>
  Q: So, if young Iranians want change, do you see these
  protests as a means for them to get those changes,
  or not?
<br/>
  A: I believe that this may not serve their interest
  . . .</p>
<p>
  Q: Don't you think that the Islamic Republic has made it so
  difficult for Iranians to be able to get change the legal
  way that protesting is the only answer?</p>
<p>
  Q: What do you think the western powers want?</p>
<p>
  Q: What do you think the US is doing to flame the fires
  in [the] Iran protest, if they are doing anything at
  all?</p>
<p>
  <a href="http://www.youtube.com/watch?v=TuxfyeivDSo">
    [Video]</a></p>

<h2>Part Three</h2>
<p>
  Q: Some may argue that the privitization of Iran
  [<i>sic</i>] may be to its benefit, instead of
  the way it is now.</p>
<p>
  Q: Are you suggesting that Iranians in Iran should stop
  protesting?</p>
<p>
  Q: [It's] not fair to compare [the] US [to] Iran, since it is
  much easier to get a permit in the US for protest than
  it is in Iran.</p>
<p>
  Q: [Whom] does Ahmadinejad represent and [whom] does
  Mousavi represent?</p>
<p>
  <a href="http://www.youtube.com/watch?v=rCn2-ARG5EE">
    [Video]</a></p>

<h2>Part Four</h2>
<p>
  (continues answer to question from previous part)</p>
<p>
  Q: What is your opinion about Iran's involvement in
  Palestine?</p>
<p>
  Q: What does an ideal Iran look like to you?
  <br/>
  A:  Of course, I would like to see a socialist government.
  But at the minimum, . . . I would like to see a secular
  government,
  because I believe in equality among all . . .</p>
<p>
  <a href="http://www.youtube.com/watch?v=QUeW2OoBbmM">
    [Video]</a></p>
!

  div :style => "clear: both;"
end
