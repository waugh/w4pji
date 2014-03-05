# Specific to web site.

$env.title                  = "Women for Peace and Justice in Iran"
$env.home                   = "http://women4peace.org/"
$env.administrivia_color    = "#cfb"
$env.frame_background_color = "#6777ff"
$env.identity_text_color    = "#00e"
$env.outer_border_color     = "#fff"
$env.background_image       = ""
$env.nav_first = lambda do | options |
  pfx = ""
  options[:depth].times {pfx += "../"} if options && options[:depth]
  a "Mission", :href => pfx + "mission.htm"
end
$env.nav_rest = [
    lambda do | options |
      a "Forum", :href => "http://groups.yahoo.com/group/women4peaceiniran/"
    end,
    lambda do | options |
      pfx = ""
      options[:depth].times {pfx += "../"} if options && options[:depth]
      a "Other Postings", :href => pfx + "index_of_old_items.html"
    end,
    lambda do | options |
      a "Contact Us", :href => "mailto:info@women4peace.org"
    end,
    lambda do | options |
      pfx = ""
      options[:depth].times {pfx += "../"} if options && options[:depth]
      a "Activities", :href => pfx + "activities.html"
    end,
  # lambda { a "Articles and speeches", :href => pfx + "articles.html" },
  # lambda { a "Links", :href => pfx + "link.htm" }, # These files are still there.
]
$env.src_home_path = "../../.." # reflects depth of what dir?
class << $env
  def tag *args, &y
    parent.tag *args, &y
  end
  def emit_emblem
    tag :img, :src => "img/happy_human.gif"
  end
end
