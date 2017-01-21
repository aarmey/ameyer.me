#!/usr/bin/env ruby

require 'html-proofer'

HTMLProofer.check_directory('./_site', {
	:parallel => {
		:in_processes => 4,
	},
	:check_html => true,
	:cache => {
		:timeframe => '1w',
	},
	:url_ignore => [/scholar.google.com/, /linkedin.com/, /ng.2330.html/],
	:typhoeus => {
		:timeout => 15, # seconds
	},
	:verbose => true,
}).run
