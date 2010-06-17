# put rails errors inline on the tags themselves
ActionView::Base.field_error_proc = (
  Proc.new do |html_tag, instance|
    class_name = "error"
    d = HTML::Document.new(html_tag)
    tag = d.root.children.first

    # tag with class
    if tag.attributes.has_key?('class')
      tag.attributes["class"] += " #{class_name}"

    # tag without class
    else
      tag.attributes["class"] = class_name
    end

    tag.to_s.html_safe
  end
)