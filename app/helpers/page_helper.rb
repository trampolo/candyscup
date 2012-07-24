module PageHelper
  
  def title(opts={})
    ("<div id=\"news\"><h2>" + opts[:title] + "</h2></div>").html_safe
  end
end
