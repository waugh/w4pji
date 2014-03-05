require "common.rb"

article "Other Postings", :depth => 0 do
  side = "older_headers" # a directory rather than "left" or "right".
  (filenames_in_dir_named side).select{|t| /.*\.rb$/ === t}.
    sort.reverse.each do | fn |
    load "#{side}/#{fn}"
    tag :hr
  end
  copy_html_file "html/log.html"
end # article
