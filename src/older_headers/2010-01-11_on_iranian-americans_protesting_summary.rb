div :class => "article_summary" do
  # This is not the best example to follow.
  # Use Ruby instead of literal HTML.
  flush
  print <<'!'

<h2>
  Comments on Iranian-Americans’
  Protests in the United States
</h2>
<p>By Simin Royanian. July, 2009</p>
<p>
I would like to ask what the purpose of these actions is. 
Usually, protesters and those who go on hunger strikes do so for 
a cause or demand that is not supported by those in power, is in 
opposition to the prevailing narrative, and/or is not reflected 
in the main media.
</p>
<p>
  Full article -&gt;
  <a href="our_articles/2009-07-18_on_iranian-americans_protesting.html">
  http://sn.im/iramphs</a>
</p>

!
  p ". . ." # Three periods, on purpose, rather than an explicit
            # HTML elipsis entity, because the summary is
            # designed for copying into e-mail and the like.
  p do
    text <<-'!'
One would hope that American peace and justice groups, having
!
    text "learned from the CIA coups d'etats"
    text "and the interference in even"
    text <<-'!'
the labor organizations and creating "labor strikes" against
!
    text <<-'!'
Salvador Allende, and having learned from all the machinations of 
the FBI against the Black Panthers, and many more, would 
hesitate, and study, and do research, and ask important 
questions, before they jump on the bandwagon. 
!
  end # p
end
