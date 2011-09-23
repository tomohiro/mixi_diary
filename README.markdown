MixiDiary
================================================================================


Overview
-------------------------------------------------------------------------------

### What's this?

Post diary to the mixi.jp.


How to use
-------------------------------------------------------------------------------

Like this.

```ruby
require 'mixi_diary'

diary = MixiDiary.new(:email => 'your email', :password => 'your password')
diary.title = '件名'
diary.body= '本文'
diary.post
```


Author
-------------------------------------------------------------------------------

- Tomohiro, TAIRA [@Tomohiro](http://twitter.com/Tomohiro)


LICENSE
-------------------------------------------------------------------------------

This project is dual licensed under the MAHALO license or GPL Version 2 licenses.
See LICENSE for details.
