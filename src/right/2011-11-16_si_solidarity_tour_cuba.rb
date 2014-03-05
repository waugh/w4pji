div :class => "article_summary" do
  h2 "Solidarity Tour!"
  p :class => "byline_etc" do
    puts <<'!'
      By the coordinating committee of
      <span style="font-style: italic;">Solidarity with Iran SI!</span>.
      Written 2010-12-01.  Posted here 2011-11-16.
!
  end
  p :style => "text-align: center;" do
    text "First Stop: Havana"
  end
  p :style => "text-align: center;" do
    text "Immense Support with the People of Iran"
  end
  p do
    a "Complete article",
      :href => "others_articles/2011-11-15_si_solidarity_tour_cuba.html"
  end
end
