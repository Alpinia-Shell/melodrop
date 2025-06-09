module Public::NotificationsHelper
  def notification_message(notification)
    case notification.notifiable_type
    when "Post"
      "見守っている#{notification.notifiable.user.name}さんが「#{notification.notifiable.title}」」の雫を落としました"
    else
      "落とした「#{notification.notifiable.post.title}」の雫に#{notification.notifiable.user.name}さんがカケラを残してくれました"
    end
  end
end
