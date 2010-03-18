module RedCloth::Formatters::HTML
  include RedCloth::Formatters::Base
  
  def fn(opts)
	  no = opts[:id]
    opts[:id] = "fn#{no}"
    opts[:class] = ["footnote", opts[:class]].compact.join(" ")
    "<div#{pba(opts)}><sup>#{no}</sup> #{opts[:text]}</div>\n"
  end
end