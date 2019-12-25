Given(/^进入页面$/) do
  wait_for do
    !query("*").empty?
  end
end

And(/^是否需要登录$/) do
  #  wait_for do
  #    !query("* marked:'username'").empty?
  #  end
  #
  
  touch("* marked:'btnFirst'")
  
  
  #  touch("* marked:'username'")
  #  wait_for_keyboard
  #  keyboard_enter_text("cleveruser27")
  #
  #  touch("* marked:'password'")
  #  wait_for_keyboard
  #  keyboard_enter_text("pa$$w0rd")
  #
  #  wait_for_element_exists("* marked:'Login'")
  #  touch("* marked:'Login'")

  # Remember: any Ruby is allowed in your step definitions
  did_something = true

  unless did_something
    fail 'Expected to have done something'
  end
end

When(/^再次点击$/) do
  # Example: When I create a new entry
  #  tap("* marked:'new_entry'")
  #  wait_for_keyboard
  #  keyboard_enter_text("* marked:'entry_title'", 'My Entry')
  #
  #  tap("* marked:'submit'")
  
  touch("* marked:'btnTest'")
  touch("* marked:'btnTest'")
  touch("* marked:'btnTest'")
  touch("* marked:'btnTest'")
  
end

Then(/^something should happen$/) do
  touch("* marked:'btnBack'")
end

