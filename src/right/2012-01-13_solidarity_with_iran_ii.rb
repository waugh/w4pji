div :class => "article_summary" do
  h2 "Solidarity with Iran (SI) condemns the Assassination of Iranian " +
    "Scientist Mostafa Ahmadi Roshan"
  div :style => "float: right; background-color: white; padding: 2px;" do
    img :src => "img/mostafa_ahmadi-roshan.jpg"
    div "Associated Press", :style =>
      "font-family: arial; font-size: 10px; font-style: italic;"
  end
  p :class => "byline_etc" do
    output <<'!'
      By
      <span style="font-style: italic;">Solidarity with Iran SI!</span>.
      2012-01-13.
!
p <<-'!'
  Another
  Iranian scientist has been assassinated inside Iran.
  This is the fifth Iranian scientist assassinated in
  Iran during the past two years. This is an indication of the escalation
  of the covert activities conducted by the CIA and Israeli intelligence
  and their domestic spies in Iran against the government and people
  of Iran.
!
  end
  p do
    a "Full text",
      :href => "our_articles/2012-01-13_solidarity_with_iran_ii.html"
  end
  div :style => "clear: both;"
end

