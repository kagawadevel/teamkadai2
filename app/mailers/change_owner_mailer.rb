class ChangeOwnerMailer < ApplicationMailer
  default from: 'sample@example.com'

  def change_owner(team)
    @team = team
    mail to: @team.owner.email, subject: "新しく#{@team.name}のオーナーになりました！"
  end
end
