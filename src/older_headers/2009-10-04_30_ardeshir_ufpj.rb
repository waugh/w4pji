div :class => "article_summary" do
  # This is not the best example to follow.
  # Use Ruby instead of literal HTML.
  flush
  print <<'!'

<h2>
  Link: Open Letter to <em>United For Peace and Justice</em>
  (UFPJ)</h2>
<p class="byline_etc">
  By Ardeshir Ommani.  Dated 2009-07-18.
  </p>
<p>
  Dear UFPJ's Leadership Group,</p>
<p>
  UFPJ has asked in its Action Alert of 7/9/09 that people join the "United 4 Iran" Global Day of Action on July 25. Is UFPJ confident that the leaders and proponents of this action are not being financed by NED and other "pro-democracy" fronts awash with some of the $400 million that the U.S. Congress has provided to the National Endowment for Democracy, the CIA, the USAID - U.S. Agency for International Development and others for the explicit purpose of subversion, acts of sabotage, financing, equipping and training upper echelon Iranian-Americans who are ready to serve the U.S. foreign policy objectives of infiltrating and penetrating the security spheres of the Iranian nation?&hellip;</p>
<p>
  Complete letter:
  <ul>
    <li>
      As published by author's org (accepts reader comments)
      --
  <a href="http://www.iranaifc.com/public1.php?id_news=238">
           http://www.iranaifc.com/public1.php?id_news=238</a>
    </li><li>
  Our copy with author's help (may be formatted slightly better)
  --
  <a href="others_articles/2009-07-18_ardeshir_ufpj.html">
  http://women4peace.org/others_articles/2009-07-18_ardeshir_ufpj.html</a>
    </li>
  </ul>
</p>
!
  flush
  p <<-'!'
While we're at it, why not quote one of those reader comments
right here?  Reader commentator Mike Shaw says (dated 2009-08-27
and retrieved 2009-10-04):
!
  p do
    tag "em", <<-'!'
Dear Mr. Ommani, I heartily thank you for this open letter which
really is a "tour de force" exposing UFPJ's ignorance (or
perhaps US political establishment collaboration) regarding the
Iran elections. As a anti-imperialist, anti-war activist from the
US I can bear witness to UFPJ leadership's tendency to Democratic
Party collaborationism, pacifist hypocrisy and political
treachery. I'm just so happy to have see their vile mistakes on
this issue exposed for the record. I am always impressed by your
articles, keep up the excellent work.
!
  end
end

