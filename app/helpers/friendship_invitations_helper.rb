module FriendshipInvitationsHelper
  def confirm_friendship_btn(inviter)
    button_to 'Confirm friendship',\
              confirm_invitation_path,\
              params: { invitation: { inviter_id: inviter.id, invitee_id: current_user.id } }
  end

  def reject_friendship_btn(inviter)
    link_to 'Reject friendship', reject_invitation_path(inviter.id), class: 'un-friend'
  end
end
