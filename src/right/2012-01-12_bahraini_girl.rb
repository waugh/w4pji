div :class => "photo" do
  # Orig location:
  # "http://wwwimage.cbsnews.com/" +
  # "images/2003/03/17/image544269.jpg"
  # (Still there as of 2010-10).
  tag :img, :src => "img/bahraini_girl.jpg",  :width => 210,
    :height => 278, :border => 0
  p :class => "caption" do
    text <<-'!'
Bahraini girl Shahad Ahmed, 18 months old,
takes part in a candlelight vigil to protest against the imminent
war on Iraq in front of the United Nation House in Manama,
Bahrain, March 16, 2003. Some 100 people have taken part in the
vigil, organized by the Bahrain Center for Human Rights
(Photo: AP) (published by
!
  a "CBS News", :href => "http://www.cbsnews.com/"
  text ")"
  end # p.caption
end # div.photo

