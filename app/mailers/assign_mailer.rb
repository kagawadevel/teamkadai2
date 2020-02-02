class AssignMailer < ApplicationMailer
  default from: 'from@example.com'

  def assign_mail(email, password)
    @email = email
    @password = password
    mail to: @email, subject: I18n.t('views.messages.complete_registration')
  end

  def delete_agenda(user_id, agenda)
    @agenda = agenda
    @user = User.find_by(id: user_id)
    @email = @user.email
    mail to: @email, subject: 'アジェンダを削除しました'
  end
end