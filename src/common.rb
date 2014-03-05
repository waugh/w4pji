$env = Object.new
class << $env
  attr_accessor :title, :home, :background_image,
    :nav_first, :nav_rest, :src_home_path, :parent
  attr_accessor \
    :reading_color,          :administrivia_color,
    :frame_background_color, :identity_text_color,
    :outer_border_color
end
$env.parent = self
$env.reading_color = "#fffec8"
load "env.rb"

$title = $env.title

# geometry

# The reason the geometry is not confined to style.css.rb
# is that it is needed in image tags in cases where the
# image as photographed is too wide for a reading column.

# Each page will have a frame background, with a centered,
# fixed-width "inner" part containing all content for the page.

$inner_width = 800 # had 1024 - 60 for a while (pixel roots)

# Calculate components for home page, with its two equal-width
# columns.
$gutter_width = 10 # times the square root of a pixel
$column_width = ($inner_width - $gutter_width) / 2
$outer_width = $inner_width + $gutter_width + $gutter_width

# Article pages (and maybe all secondary pages).
# Such a page will sport a column for the article itself,
# whose width should be about the maximum that is comfortable
# to read.  The remaining space can be taken up by a sidebar
# of some kind.
$article_width = 600
$fudge = 5 # not sure why needed to make it look balanced in FF.
$sidebar_width = $inner_width - $gutter_width - $article_width -
  $fudge
$max_image_width_in_column = $column_width - 2 # allow for
                                               # padding
$half_gutter = $gutter_width / 2
throw :fit unless $gutter_width == $half_gutter + $half_gutter

# facilities for writing HTML

class << self
  def filenames_in_dir_named dir_name
    patsy = []
    Dir.foreach(dir_name) do |fn|
      patsy << fn if "." != fn && ".." != fn && ! (/~\Z/ === fn)
    end
    patsy
  end
  def relevant_filenames_in_dir_named dir_name
    patsy = []
    Dir.foreach(dir_name) do |fn|
      patsy << fn if ! (/~\Z/ === fn) && ! (/\A\./ === fn)
    end
    patsy
  end


  attr_accessor :indentation
  attr_accessor :position
end
self.position = :beginning # of line
class << self
  def indent
    self.indentation += 2
  end
  def undent
    self.indentation -= 2
  end

  # output a_string -- output the given string with a hint
  # that if the rendering would not be affected, we would like
  # the string on a line by itself and indented to the current
  # indent level.  But that hint has as its purpose, only the
  # looks of the HTML code generated, and can be overridden
  # by more important considerations.
  def output a_string
    unless "" == a_string
      if :end == position
        print "\n"
        # self.position = :beginning # not for long
      end
      print " " * indentation
      print a_string
      self.position = :end
    end
  end

  # Handle the case where our string already ends in a newline.
  def output_string_already_having_newline string_with_newline
    if :end == position
      print "\n"
    end
    print " " * indentation
    print string_with_newline
    self.position = :beginning
  end

  # output_avoid_break a_string -- Output the given string.
  # Try to avoid inserting a line break and indentation
  # beforehand.
  def output_avoid_break a_string
    if :beginning == position
      output a_string
    else
      print a_string
      self.position = :end
    end
  end

  def flush
    if :start == position
    else
      print "\n"
      self.position = :start
    end
  end

  # h -- quote for Hypertext
  def h a_string
    a_string.gsub(/&/, "&amp;").gsub(/</, "&lt;").gsub(/>/, "&gt;").
      gsub(/--/, "&#8212;") # em dash
  end

  # quote -- quote as a parameter value as to be given after the
  # equal sign in an argument to a tag instance.
  def quote a_string
    if Integer === a_string
      a_string.to_s
    else
      "\"" + (h a_string).gsub(/"/, "&quot;") + "\""
    end
  end

  # tag -- emit an instance of a tag
  def tag the_tag, *rest, &y
    case rest.length
    when 0
      text = nil
      options = {}
    when 1
      case rest[0]
      when Hash
        text = nil
        options = rest[0]
      else
        text = rest[0]
        options = {}
      end
    when 2
      text = rest[0]
      options = rest[1]
    else
      throw "Hey, too many arguments to 'tag'."
    end
    a = "<" + the_tag.to_s
    options.each do |k, v|
      a += " " + k.to_s + "=" + (quote v)
    end
    a += ">"
    output a
    a = ""
    indent
    text text if text
    yield if block_given?
    undent
    output_avoid_break "</" + the_tag.to_s + ">"
  end

  def text some_text
    case some_text
    when String
      output h(some_text)
    when Array
      some_text.each do |x|
        output h(x)
      end
    else 
      throw "What kind of text is this?  #{some_text.inspect}"
    end
  end

  def p *args, &y
    tag :p, *args, &y
  end
  def ol *args, &y
    tag :ol, *args, &y
  end
  def ul *args, &y
    tag :ul, *args, &y
  end
  def li *args, &y
    tag :li, *args, &y
  end
  def a *args, &y
    tag :a, *args, &y
  end
  def honest_anchor tgt
    a tgt, :href => tgt
  end
  def div *args, &y
    tag :div, *args, &y
  end
  def h1 *args, &y
    tag :h1, *args, &y
  end
  def table *args, &y
    tag :table, *args, &y
  end
  def tr *args, &y
    tag :tr, *args, &y
  end
  def td *args, &y
    tag :td, *args, &y
  end
  def h2 *args, &y
    tag :h2, *args, &y
  end
  def img *args, &y
    tag :img, *args, &y
  end
  def span *args, &y
    tag :span, *args, &y
  end
  def pre *args, &y
    tag :pre, *args, &y
  end
  def em *args, &y
    tag :em, *args, &y
  end
  def h3 *args, &y
    tag :h3, *args, &y
  end
  def h4 *args, &y
    tag :h4, *args, &y
  end
  def th *args, &y
    tag :th, *args, &y
  end

  def pfx
    $env.home
  end
  def spacer # want to get rid of this and use the style sheet
    div :class => "spacer"
  end

  def copy_html_file yclept
    io = File.open yclept, "r"
    pass_from_stream io
    io.close
  end
  def pass_from_stream a_stream
    a_stream.each do |part|
      output_string_already_having_newline part
    end
  end
  def pass a_possibly_multiline_string
    a_possibly_multiline_string.each_line do |part|
      output_string_already_having_newline part
    end
  end

  def doc
    output "<!DOCTYPE html PUBLIC \"-//W3C//DTD XHTML 1.1//EN\"" +
      " \"http://www.w3.org/TR/xhtml11/DTD/xhtml11.dtd\">"
    tag :html, :xmlns => "http://www.w3.org/1999/xhtml",
      :"xml:lang" => "en", :lang => "en" do
      yield # need head and body here
    end # html
    flush
  end

  def typ_head title, options = {}
    pfx = ""
    options[:depth].times {pfx += "../"} if options[:depth]
    tag :head do
      tag :meta,
        "http-equiv" => "Content-Type",
        :content     => "text/html;charset=utf-8"
      output "<!-- Generated with Ruby. -->"
        tag :link, :rel => "stylesheet", :href => "#{pfx}style.css"
      tag :title, title
    end # head
  end # def typ_head

  def fixed_sidebar options = {}
    pfx = ""
    options[:depth].times {pfx += "../"} if options[:depth]
    tag :div, :class => "sidebar" do
      if options[:custom_sidebar]
        options[:custom_sidebar].call
      else
        # nav
        tag :ul do
          tag :li do $env.nav_first.call options end if $env.nav_first
          $env.nav_rest.each {|e| tag :li do e.call options end}
        end # nav ul
        div :style => "text-align: center;" do
          a :href => ("" === pfx ? "." : pfx) do
            p :class => "identity" do
              text $env.title
                # :href => "index.html"
            end # p
            tag :img, :src => pfx + "img/happy_human.gif"
          end # a
        end # div for centering
      end # if-else for standard or custom sidebar
    end unless options[:no_sidebar] # div.sidebar
  end

  def article title, options = {}
    pfx = ""
    options[:depth].times {pfx += "../"} if options[:depth]
    doc do
      typ_head title, options
      tag :body do
        tag :div, :class => "inner" do
          tag :div, :class => "article" do
            h1 title unless options[:no_title_header]
            yield
          end # div.article
          fixed_sidebar options
          div :class => "spacer", :style => "clear: both;"
          div :class => "footer" do
            p do
              $env.nav_first.call if $env.nav_first
              $env.nav_rest.each do |e|
                text "|"
                e.call
              end # each
            end # p
          end if false # .footer
        end # .inner
      end # body
    end # doc
  end # def article
end # class << self

$header_tags_by_level = [:h1, :h2, :h3, :h4, :h5, :h6]

self.indentation = 0
