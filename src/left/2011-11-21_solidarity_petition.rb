div :class => "article_summary" do
  h2 "Petition of Solidarity"
  p :class => "byline_etc" do
    text "By Women for Peace and Justice in Iran, 2011-11-21."
  end
  # Excerpt:
  output <<'!'
<p>... we join with all who stand for justice, peace, sovereignty and self determination in raising our voice to demand:</p>
<ul>
  <li>Lift economic sanctions against Iran.</li>
  <li>Recognize the right of Iran to develop and use nuclear energy for peaceful
      purposes.</li>
  <li>Stop military threats against Iran.</li>
</ul>
!
  p do
    a "Complete text.",
      :href => "our_articles/2011-11-21_solidarity_petition.html"
  end
end # .article_summary
