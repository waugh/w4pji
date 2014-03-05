require "common.rb"

class << self
  def local_image(options = {})
    name    = options[:name]
    caption = options[:caption]
    throw :fit unless name && caption
    div :class => "photo" do
      tag :img, :src => "img/#{name}", :border => 0
      p caption, :class => "caption"
    end # .photo
  end
  def column side # "left" or "right"
    tag :div, :class => "column #{side}" do
      (filenames_in_dir_named side).select{|t| /.*\.rb$/ === t}.
        sort.reverse.each do | fn |
        load "#{side}/#{fn}"
      end
    end
  end
  def homepage_body &y
    tag :body do
      div :class => "outer" do
        div :class => "inner", &y
      end
    end
  end
  def homepage_header
    div :class => "header" do
      tag :table, :width => "100%" do
        tag :tr do
          tag :td, :valign => "center", :align => "center" do
            h1 $env.title
          end # td
          tag :td, :rowspan => 2, :class => "emblem" do
            $env.emit_emblem
          end # td
        end # first row
        tr :height => "100%" do
          td :valign => "bottom" do
            p do
              $env.nav_first.call({}) if $env.nav_first
              $env.nav_rest.each do |e|
                text "|"
                e.call({}) # arg is options
              end # each
            end # p
          end # td
        end # second row
      end # table
    end # .header
  end # def homepage_header
end # class << self

doc do
  typ_head $title
  homepage_body do
    homepage_header
    column "left"
    column "right"
    div :class => "clear"
    div :class => "footer", :style => "text-align: center;" do
      text "~"
    end if false # no footer contents currently # div.footer
  end # homepage_body
end # doc

