# encoding: utf-8
module MixiDiary

  class Agent
    attr_accessor :title, :body

    def initialize config
      @agent    = login config
      @uid      = get_uid
      @post_key = get_post_key
    end

    def login config
      agent = Mechanize.new
      proxy = ENV['https_proxy'] || ENV['http_proxy']
      if proxy
        proxy = URI.parse(proxy)
        agent.set_proxy(proxy.host, proxy.port)
      end

      agent.post('http://mixi.jp/login.pl', :next_url => 'home.pl', :email => config[:email], :password => config[:password])
      agent
    end

    def post
      @agent.post('http://mixi.jp/add_diary.pl',
                  :diary_title => title.toeuc,
                  :diary_body  => body.toeuc,
                  :id          => @uid,
                  :submit      => 'confirm',
                  :post_key    => @post_key)
    end

    private

    def get_post_key
      @agent.get('http://mixi.jp/add_diary.pl', :id => @uid, :submit => 'main', :diary_body => :test, :diary_title => :test)
      @agent.page.form(:action => 'add_diary.pl').hiddens.select{|item| item.name == 'post_key'}.first.value
    end

    def get_uid
      @agent.cookie_jar.jar['mixi.jp']['/']['BF_SESSION'].value.split(/_/).first
    end
  end

end
