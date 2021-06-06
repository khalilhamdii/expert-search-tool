module ApplicationHelper
  def add_friend_btn(friend)
    if user_signed_in?
      if !Friendship.exists?(user_id: current_user.id,
                             friend_id: friend.id) && !Friendship.exists?(user_id: friend.id,
                                                                          friend_id: current_user.id)
        render 'friendships/request_btn', friend: friend
      elsif Friendship.exists?(user_id: current_user.id, friend_id: friend.id, status: false)
        render 'friendships/pending_btn'
      end
    end
  end
end
