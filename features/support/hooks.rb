# Set up browser
b = 'chrome' # default to firefox
b = ENV['BROWSER'] unless ENV['BROWSER'].nil?
browser = Watir::Browser.new(b.to_sym)

Before('~@headless') do
  @browser = browser
  @browser.cookies.clear
end

at_exit do
  browser.close
end
