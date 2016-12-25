# frozen_string_literal: true

require 'discordrb/events/generic'
require 'discordrb/data'

module Discordrb::Events
  # Generic superclass for events about adding and removing reactions
  class ReactionEvent
    def initialize(data, bot)
      @bot = bot

      @emoji = Discordrb::Emoji.new(data['emoji'], bot, nil)
      @user_id = data['user_id'].to_i
      @message_id = data['message_id'].to_i
      @channel_id = data['channel_id'].to_i
    end
  end
end
