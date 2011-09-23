MixiDiary [![Still Maintained](http://stillmaintained.com/Tomohiro/mixi_diary.png)](http://stillmaintained.com/Tomohiro/mixi_diary)
================================================================================


Overview
-------------------------------------------------------------------------------

### What's this?

Post diary to the mixi.jp.


Bundle Install
-------------------------------------------------------------------------------

1. Add gem to the `Gemfile`

        gem 'mixi_diary', :git => 'git://github.com/Tomohiro/mixi_diary.git'

2. Install gem

        $ bundle install [--path vendor/bundle]


How to use
-------------------------------------------------------------------------------

Like this.

    require 'mixi_diary'

    diary = MixiDiary.agent(:email => 'your email', :password => 'your password')
    diary.title = '件名'
    diary.body = '本文'
    diary.post


Author
-------------------------------------------------------------------------------

Tomohiro, TAIRA [@Tomohiro](http://twitter.com/Tomohiro)


LICENSE
-------------------------------------------------------------------------------

This project is dual licensed under the MAHALO license or GPL Version 2 licenses.
See LICENSE for details.
