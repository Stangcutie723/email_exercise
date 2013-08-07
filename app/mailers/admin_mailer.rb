class AdminMailer < ActionMailer::Base
  default to: Proc.new { Admin.pluck(:email)},
          from: "from@example.com"

  def new_registration(user)
    @user =user
    mail(subject: "New User Signup: #{@user.email}")
  end

end
