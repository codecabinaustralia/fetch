class GoFetchController < ApplicationController
  def start_yellow_pages_australia
  	service = params[:service]
  	location = params[:location]
  	browser = Capybara::Session.new(:selenium_chrome) #selenium_chrome_headless
  	page = 1
  	stop_crawling = 0
  	browser.visit("https://www.yellowpages.com.au/search/listings?clue=#{service}&eventType=pagination&pageNumber=#{page}&locationClue=#{location}&lat=&lon=&referredBy=www.yellowpages.com.au")
  	doc = Nokogiri::HTML.parse(browser.html)
  	listings = doc.css('.listing')
	next_btn = doc.css('.pagination.navigation')

	while stop_crawling == 0 do
		browser.visit("https://www.yellowpages.com.au/search/listings?clue=#{service}&eventType=pagination&pageNumber=#{page}&locationClue=#{location}&lat=&lon=&referredBy=www.yellowpages.com.au")
	  	doc = Nokogiri::HTML.parse(browser.html)
	  	listings = doc.css('.listing')
		next_btn = doc.css('.pagination.navigation')
		if next_btn.present?
		  	data = listings.map do |list|
		  		sleep(0.5)
		  		if list.at_css('.listing-name').present?
		  				business_name = list.at_css('.listing-name').try(:text)
		  		end
		  		if list.at_css('.listing-heading').present?
		  				business_category = list.at_css('.listing-heading').try(:text)
		  		end
		  		if list.at_css('.logo img').present?
		  				business_logo = list.at_css('.logo img').attributes['src'].try(:value)
		  		end
		  		if list.at_css('.listing-short-description').present?
		  				business_tagline = list.at_css('.listing-short-description').try(:text)
		  		end
		  		if list.at_css('.contact-phone .contact-text').present?
		  				business_phone = list.at_css('.contact-phone .contact-text').try(:text)
		  		elsif list.at_css('.contact-mobile .contact-text').present?
		  				business_phone = list.at_css('.contact-mobile .contact-text').try(:text)
		  		end
		  		if list.at_css('.contact-email').present?
		  				business_email = list.at_css('.contact-email').attributes["data-email"].try(:value)
		  		end 
		  		if list.at_css('.contact-url').present?
		  				business_website = list.at_css('.contact-url').attributes["href"].try(:value)
		  		end
		  		if list.at_css('.listing-name').present?
		  				business_link = list.at_css('.listing-name').attributes["href"].try(:value)
		  		end 

			  		YellowPage.create(
		  				business_name: business_name,
		  				business_category: business_category,
		  				business_logo: business_logo,
		  				business_tagline: business_tagline,
		  				business_phone: business_phone,
		  				business_email: business_email, 
		  				business_website: business_website,
		  				business_link: business_link,
				  	)
		  		
		  	end
			page = page + 1
		else
		  	stop_crawling = 1
		end
	end

  	
  end
end
