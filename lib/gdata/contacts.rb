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
				request "/m8/feeds/contacts/#{@email}/base"
			else
				puts "Not authenticated."
			end
		end

		def authenticate(email, password)
			@email = email
			super email, password
		end

  end
end