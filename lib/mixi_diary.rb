# encoding: utf-8

require 'rubygems'
require 'kconv'
require 'mechanize'

require 'mixi_diary/version'

module MixiDiary

  autoload :Agent, 'mixi_diary/agent'

  def self.agent args
    Agent.new args
  end

end
