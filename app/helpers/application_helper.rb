module ApplicationHelper
	def generate_html_for_image(image,width,height)
        html= ""
		if image.url.blank? 
             html = html + image_tag(image.image_url,width: width,height: height)
             html = html + '<div class="li_top_box blue_60">'
			 html = html +	'<h3><a href="javascript:void(0)"><span  class="icon-fonts"></span>'+image.title+'</a></h3>'
			 html = html +  "<p>#{image.info}</p>"
			 html = html +  "</div>"
		else
			 html = html + image.url.gsub(/width=\d+/,"width=#{width}").gsub(/height=\d+/,"height=#{height}")
            # html = html + '<div class="li_top_box">'
			# html = html +	'<h3><a href="#"><span  class="icon-fonts"></span></a></h3>'
			# html = html +  "<p>#{image.info}</p>"
			# html = html +  "</div>"
		end 
		return html.html_safe
	end
end
