# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)

c1=Channel.create(title: '首页',link_str: 'http://www.nbd.com.cn')
c2=Channel.create(title: '股票',link_str: 'http://stock.nbd.com.cn')
Column.create(title: '要闻',channel_id: c1.id)
Column.create(title: '专题',channel_id: c1.id)
Column.create(title: '行情',channel_id: c2.id)
Column.create(title: '个股',channel_id: c2.id)

Blogroll.create(title: '联系我们',url: 'http://www.nbd.com.cn/contact')
Blogroll.create(title: '免责声明',url: 'http://www.nbd.com.cn/contact')
Blogroll.create(title: '版权声明',url: 'http://www.nbd.com.cn/contact')