require "common.rb"

reading_color          = $env.reading_color
administrivia_color    = $env.administrivia_color
frame_background_color = $env.frame_background_color
identity_text_color    = $env.identity_text_color
photo_frame_color = "#" + "fc" * 3 # Use a neutral background to
                                    # avoid biasing the viewer's
                                    # perception of the color
                                    # balance in each photo.

article_title_background_color = "#fffd00"
internal_boundary_color = "#ddd"

inner_width   = $inner_width
gutter_width  = $gutter_width
column_width  = $column_width
article_width = $article_width
fudge         = $fudge
sidebar_width = $sidebar_width

print <<-"!"
/* Generated by #{__FILE__}. */

/* much like in reset.css */
html, body, span, applet, object, iframe, h1,
h2, h3, h4, h5, h6, p, blockquote, pre, a, abbr,
acronym, address, big, cite, code, del, dfn, em,
font, img, ins, kbd, q, s, samp, small, strike,
strong, sub, sup, tt, var, b, u, i, center, dl,
dt, dd, fieldset, form, label,
legend, table, caption, tbody, tfoot, thead,
tr, th, td, ol, li { /* div, ul */
  margin: 0;
  padding: 0;
  border: 0;
  outline: 0;
  background: transparent;
}

h1, h2, h3, h4, h5, h6, blockquote, pre,
code, center, .table_pad { /* p */
  text-align: left;
  margin: 0; /* auto */
  padding: .05in .05in;
}

.inner {
  width: #{inner_width}px;
  text-align: left;
  margin: 0 auto;
  padding: 0 0 0 0;
}

div.outer {
  width: #{$outer_width}px;
  text-align: center;
  border: 1px solid #{$env.outer_border_color};
  margin: 0 auto;
  padding-top:    #{$gutter_width}px;
  padding-bottom: #{$gutter_width}px;
}

.column {
  width: #{column_width}px;
  text-align: left;
  margin: 0 auto;
}

.left {
  float: left;
}

.right {
  float: right;
}

.sidebar {
  position: fixed; 
   right: #{gutter_width}px; 
   top: #{gutter_width}px;
  background-color: #{administrivia_color};
  width: #{sidebar_width}px;
  text-align: left;
  margin: 0 auto;
  float: right;
  border-top: 1px solid #666;
  border-right: 2px solid #333;
  border-bottom: 2px solid #333;
  border-left: 1px solid #666;
}
.sidebar ul {
  padding: 0;
  margin-top: 2px;
  margin-bottom: 1px;
}
.sidebar ul li {
  padding-left: 0;
  margin-left: 0;
}
.sidebar p.identity {
  margin-top: 8px;
  color: #{identity_text_color};
  font-size: 14pt;
  /* position: relative; left: 10px; */
}

.column .article_summary, .column .photo, .header, .footer {
  border-top: 1px solid #666;
  border-right: 1px solid #222;
  border-bottom: 1px solid #222;
  border-left: 1px solid #666;
}
.column .article_summary, .column .photo {
  margin-bottom: #{$gutter_width}px !important;
  /* margin-top:    #{$half_gutter}px !important; */
}
.column .photo {
  padding-top: #{$gutter_width}px;
}
.header {
  margin-bottom: #{$gutter_width}px !important;
}
/* .footer {
  margin-top:    #{$half_gutter}px !important;
} */

.column .article_summary {
  background-color: #{reading_color};
  text-align: left;
}
.column .article_summary p {
  padding-left:  4px;
  padding-right: 4px;
}

.photo {
  background-color: #{photo_frame_color};
  text-align: center;
  margin-bottom: #{$gutter_width}px !important;
}

.big_photo {
  background-color: #{photo_frame_color};
  text-align: center;
  padding: #{$gutter_width}px;
}

.header, .footer {
  clear: both; /* clear floats */
  background-color: #{administrivia_color};
}

.clear {clear: both;}

.header h1 {
  color: #{identity_text_color};
  padding-top: 0;
  margin-top: #{gutter_width}px;
  margin-left: #{gutter_width}px;
  font-size: 30pt;
}

img.emblem {
  border-top:  4px solid white;
  border-left: 4px solid white;
}
td.emblem {
  text-align: right;
}

.spacer { /* want to eliminate */
  height: #{gutter_width}px;
}

* {
  font-family: Sans-serif, Arial;
   /* Arial, Verdana, Trebuchet, Helvetica, Geneva,
    Sans, Sans-serif; */
}

span.times {font-family: Times New Roman;}

table { /* abused for layout in homepage header,
           but used in articles for proper semantic reason. */
  border-collapse: collapse;
}
th, td {
  padding-left:  4px;
  padding-right: 4px;
}
th {text-align: center;}
.article table, .article table tr th, .article table tr td
{
  border: 1px solid black;
}
.article table {
  margin-left:  .5em;
}

ol, ul {
  padding-left:   2px;
  padding-top:    0;
  margin-top: 0;
  padding-bottom: 2px;
}

ul {
  list-style-type: disc;
  margin-left: 1.7em;
}

p {
  padding-top:    .05in;
  padding-bottom: .06in;
}

p, li {
  font-size: 12pt;
}

.article {
  padding: 0;
  background-color: #{reading_color};
  width: #{article_width}px;
  text-align: left;
  margin: 0 auto;
  float: left;
  border-top: 1px solid #666;
  border-right: 2px solid #333;
  border-bottom: 2px solid #333;
  border-left: 1px solid #666;
}
.article h1 {
  text-align: center;
  margin-bottom: .1in;
  font-size: 20pt;
  background-color: #{article_title_background_color};
  border-bottom: 4px solid #{internal_boundary_color};
}
.article p {
  text-align: left;
  padding-left:  .5em;
  padding-right: .6em;
}
.article p .first_word {
  font-size: 14pt;
  font-weight: 100;
}
.article h2, .article h3 {
  text-align: left;
  padding-left:  .5em;
  padding-right: .6em;
  font-weight: normal;
}
.article_summary h2, div.photo h2 {
  font-size: 12pt;
  font-weight: bold;
}
ol li {
  margin-left: 2em;
}

.caption {
  font-size: 10pt;
  padding-left:  2px;
  padding-right: 2px;
}

pre {
  padding-bottom: 0;
}

body {
  background-color: #{frame_background_color};
  #{$env.background_image}
  margin: .6in auto .6in auto;
  text-align: center;
}

pre {
  background-color: #ccc;
}

.strike {text-decoration: line-through;}

.quote {font-style: italic;}

.title_citation {font-style: italic;}

.indignant_emphasis {font-weight: bold;}
!
