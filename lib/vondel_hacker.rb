class VondelHacker
  require 'mechanize'

  def self.book_class(class_id)
    puts "hey!"
    return
    agent = Mechanize.new
    page = agent.get(# YOUR GYM WEBSITE URL)

    # Submit the login form
    sign_in_form = page.form_with(id: 'login_form')
    sign_in_form.field_with(id: 'username').value = # YOUR USERNAME
    sign_in_form.field_with(id: 'password').value = # YOUR PASSWORD
    home_page = sign_in_form.click_button

    class_page = agent.get("/classes/class/#{class_id}?embedded=0")

    book_form = class_page.form_with(id: 'class_form')
    book_form.field_with(id: 'action_class_form').value = 'reserve_class'
    book_form.submit
  end
end
