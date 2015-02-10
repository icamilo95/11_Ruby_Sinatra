
class Greeter 

	def greet
		"Hi Camilo!"
	end

	def quote tag=nil
		quotes = {
			:life => [
			" 39 The best is yet to come.",
			"The best revenge is massive success.",
			"I love you means more than money...."
			],
			:love => [
				"....A sss simple I love you means more than money....",
				"For nobody else, gave me thrill-with all your faults, I love you still. It had to be you, wonderful you, it had to be you."
			]
		}

	# -------------Prints all the quotes---------------------

		# [
		# 	"<h2>Quotes matching tag: '#{tag}'</h2>",
  # 			"<ul>"
  # 			].concat(
  # 			quotes[tag.to_sym].map do |quote|
  # 			"<li><h3>#{quote}</h3></li>"
  # 			end
  # 			).push("</ul>")

	#----------------Prints random quotes ----------------------

		[
		"<h2>Quotes matching tag: '#{tag}'</h2>",
  		"<ul>",
  		"<li> #{quotes[tag.to_sym].sample}</li>",
  		"</ul>"
  		]

  	end


  	# def sendPhoto
  	# 	 images = ["img/1-food.png", "img/2-food.png","img/3-food.png","img/4-food.png"]

  	# 	 send_file images.
  	# 	 "Hereytt"
  	# end





end