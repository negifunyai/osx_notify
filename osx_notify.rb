# -*- coding: utf-8 -*-

require 'terminal-notifier'

Plugin.create(:osx_notify) do
  on_favorite do |service, user, message|
    if message.from_me?
      TerminalNotifier.notify(message, :title => "@#{user[:idname]}", :subtitle => 'ふぁぼふぁぼされました')
    end
  end

  on_retweet do |retweets|
    retweets.each do |retweet|
      if retweet.to_s and retweet.retweet_source.from_me?
        TerminalNotifier.notify(retweet, :title => "@#{retweet.user[:idname]}", :subtitle => 'RTされました') end
      end
  end
end
