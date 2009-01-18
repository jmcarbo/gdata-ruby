#!/usr/bin/ruby
#
# = contacts.rb - extension class for the use of Google Contacst
# by way of the ruby GData library.
#
# Author: Joan Marc Carbo Arnau <jmcarbo@gmail.com>
#
# Liscensing for the GData API under the Apache Liscense, version 2.0.
#
#
#require 'gdata/client'
require 'rubygems'
require 'builder'
require 'rexml/document'


module GData
  class Contacts < GData::Client
    def initialize
      super 'cp', 'gdata-ruby', 'www.google.com'
      @gsessionid = ""
    end

		def list
			if authenticated?
				request "/m8/feeds/contacts/#{@email}/full?max-results=10000"
			else
				puts "Not authenticated."
			end
		end

		def authenticate(email, password)
			@email = email
			super email, password
		end

		def list_groups
			if authenticated?
				request "/m8/feeds/groups/#{@email}/full?max-results=10000"
			else
				puts "Not authenticated."
			end
			
		end

		def create(attributes)
			xml = <<-XML
<atom:entry xmlns:atom='http://www.w3.org/2005/Atom'
    xmlns:gd='http://schemas.google.com/g/2005'>
  <atom:category scheme='http://schemas.google.com/g/2005#kind'
    term='http://schemas.google.com/contact/2008#contact' />
  <atom:title type='text'>#{attributes['title']}</atom:title>
  <atom:content type='text'>#{attributes['notes']||'-'}</atom:content>
  <gd:email rel='http://schemas.google.com/g/2005#work'
    address='#{attributes['work_email']||'-'}' />
  <gd:email rel='http://schemas.google.com/g/2005#home'
    address='#{attributes['home_email']||'-'}' />
  <gd:phoneNumber rel='http://schemas.google.com/g/2005#work'
    primary='true'>
    #{attributes['work_phone']||'-'}
  </gd:phoneNumber>
  <gd:phoneNumber rel='http://schemas.google.com/g/2005#home'>
    #{attributes['home_phone']||'-'}
  </gd:phoneNumber>
  <gd:im address='#{attributes['im_address']||'-'}'
    protocol='http://schemas.google.com/g/2005#GOOGLE_TALK'
    rel='http://schemas.google.com/g/2005#home' />
  <gd:postalAddress rel='http://schemas.google.com/g/2005#work'
    primary='true'>
    #{attributes['work_address']||'-'}
  </gd:postalAddress>
</atom:entry>
XML
			puts xml
			post("http://www.google.com/m8/feeds/contacts/#{@email}/full",xml)
		end
  end
end