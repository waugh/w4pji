require "common.rb"

article "Unresolved Files", :depth => 0 do
  dir = "group1"
  ol do
    (filenames_in_dir_named dir).sort.each do | fn |
      li {a fn, :href => "#{dir}/#{fn}"}
    end
  end
end # article
