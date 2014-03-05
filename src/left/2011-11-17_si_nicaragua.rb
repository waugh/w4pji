div :class => "article_summary" do
  div :style => "float: right; background-color: white; padding: 2px;" do
    img :src => "img/si_logo.jpg"
  end
  h2 "Solidarity Tour Stops in Nicaragua"
  p :class => "byline_etc" do
    puts <<'!'
      By the coordinating committee of
      <span style="font-style: italic;">Solidaridad con Iran ¡SI!</span>.
      Posted here 2011-11-17.
!
  end
  p do
    a "Full text",
      :href => "others_articles/2011-11-17_si_nicaragua.html"
  end
  div :style => "clear: both;"
end
