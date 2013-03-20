# -*- coding: utf-8 -*-

Plugin.create(:osx_notify) do
  on_favorite do |service, user, message|
    if message.from_me?
      TerminalNotifier.notify(message, :title => "@#{user[:idname]}", :subtitle => 'お気に入りに追加されました')
    end
  end
end
