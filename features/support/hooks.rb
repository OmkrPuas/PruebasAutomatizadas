
After do 
    Capybara.current_session.driver.quit
end


Before '@maximize' do
  page.driver.browser.manage.window.maximize
end

Before '@ListEvents' do
  listevents = find('#scrollable-auto-tabpane-0 > div > span > div > div.jss184')
  puts listevents
end
