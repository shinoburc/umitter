#!/bin/sh

YOUR_ACCOUNT='YOUR_ACCOUNT'
YOUR_PASSWORD='YOUR_PASSWORD'
YOUR_SIGN="le" # cp aq pi ar ta ge ca le vi li sc sa

curl -u ${YOUR_ACCOUNT}:${YOUR_PASSWORD} -d "status=$(wget -q -O -  'http://woman.excite.co.jp/fortune/xml/?f=horoscope&sign='${YOUR_SIGN} | nkf -Lu -d -w | sed -e 's/Shift_JIS/UTF-8/' | xpath -q -e "//item[$(date --date '5 days ago' +%w)]/title/text()")" http://api.twitter.com/1/statuses/update.xml
