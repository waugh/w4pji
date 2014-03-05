require "common.rb"

article "Iran and the Threat of Imperialism", :depth => 1 do
  p "by Simin Royanian"
  p :style => "font-style: italic;" do
    text "This is a draft pre-print for a speech to be delivered by Simin"
    text "at the International Anti-Imperialist Conference jointly convened"
    text "by the Socialist Party of Bangladesh (SPB) and International"
    text "Anti-imperialist and People's Solidarity Coordinating Committee"
    text "(IAPSCC) to be held at Dhaka, Bangladesh, November 27-29, 2011."
  end
  copy_html_file "html/2011-11-22_09_iran_and_threat_of_us_imperialism.html"
end # article
