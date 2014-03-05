require "common.rb"

article "Simin Royanian", :depth => 1 do
  div :style => "float: right; background-color: white; padding: 5px;" do
    img :src => "../img/simin_0322_cropped.jpg"
  end
  copy_html_file "html/simin.html"
  div :style => "clear: both;"
end # article
