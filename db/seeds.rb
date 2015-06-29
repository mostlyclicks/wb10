# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)


@testimonials = [
  {title: "Main Street Ingredients", testimonial_text: "Their approach to design/build is the main reason we started working with Wieser Brothers.  They are better prepared, better staffed, they listen, they respond, and they pay attention to details.  Our projects move forward at a better rate.  What you see each time is quality.", client: "Rudy Rott, Vice President of Operations", company: "Main Street Ingredients"},
  {title: "Altra Federal Credit Union", testimonial_text: "In three projects with Wieser Brothers, I cannot think of one time I thought they were making a decision that was in their best interest and not ours.  Every person on our jobs was professional, courteous, and respectful of our employees and customers.  This is a quality company run by quality people that I have enjoyed working with.", client: "Tom Brock, Senior Vice President", company: "Altra Federal Credit Union"},
  {title: "Organic Valley", testimonial_text: "We had such a positive experience with Wieser Brothers that we now use them as our general contractor of choice.  We can ask questions during the construction and know we are getting honest answers and ideas that are in the best interest of our company.", client: "Doug Muller, Projects Manager", company: "Organic Valley"},
  {title: "Kwik Trip, Inc.", testimonial_text: "Wieser Brothers has completed dozens of major projects for Kwik Trip over the past twenty years.  We consider them invaluable partners in our growth.  Brian and Jeff have developed a solid team, one that is devoted to exceptional job execution while at the same time understanding the importance of job site safety.  Great customer service and the ability to get the job done on time and on budget.", client: "Steve Loehr, V.P. Support Operations", company: "Kwik Trip, Inc."},
  {title: "Firefighters Credit Unions", testimonial_text: "Wieser Brothers did an amazing job planning everything to make sure we didn\'t have any business interruptions.  They are a big time company, but they give small town service.  It was a joy working with them.  Anytime we have a need, they\'re the first call.", client: "Bruce Zmolek, President", company: "Firefighters Credit Unions"},
  {title: "Bremer Bank", testimonial_text: "Our staff enjoyed working with Wieser Brothers throughout the construction of our bank.  We were impressed by their communication and attention to detail.  The building was constructed during one of the harshest winters in recent years and they delivered the project without a significant delay.", client: "Dale A. Walter, President", company: "Bremer Bank"}
]

@testimonials.each do |t|
  Refinery::Testimonials::Testimonial.create(
    title: t[:title],
    testimonial_text: t[:testimonial_text],
    client: t[:client],
    company: t[:company]
  )
end


# Added by Refinery CMS Pages extension
Refinery::Pages::Engine.load_seed

# Added by Refinery CMS Categories extension
Refinery::Categories::Engine.load_seed

# Added by Refinery CMS Projects extension
Refinery::Projects::Engine.load_seed

# Added by Refinery CMS Inquiries engine
Refinery::Inquiries::Engine.load_seed

# Added by Refinery CMS News engine
Refinery::News::Engine.load_seed

# Added by Refinery CMS Search engine
Refinery::Search::Engine.load_seed

# Added by Refinery CMS Testimonials extension
Refinery::Testimonials::Engine.load_seed
