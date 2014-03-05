div :class => "photo" do
  # Original location (still working as of 2010-10):
  # http://" +
  # "www.connectionnewspapers.com/" +
  # "Photos/19082_327154658.jpg"
  # tag :img, :src => "img/pareesa_2003.jpg",  :width => 333,
  #  :height => 500, :border => 0
  cropped_height = 343
  cropped_width = 167
  height = cropped_height * 2
  width = cropped_width * 2
  tag :img, :src => "img/pareesa_cropped.jpg", :width => width,
    :height => height
  p :class => "caption" do
    text <<-'!'
Clarendon, Virginia, USA, 2003-03? (Connection Newspapers)
!
  end # p.caption
end # div.photo
