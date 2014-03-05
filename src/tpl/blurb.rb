div :class => "article_summary" do
  h2 "some title"
  p :class => "byline_etc" do
    puts <<'!'
      By author.
      Written when.  Posted here when.
!
  end
  p <<'!'
    Some extract.
!
  p do
    a "Complete article",
      :href => "others_articles/2011-11-15_si_solidarity_tour_cuba.html"
  end
end # .article_summary
