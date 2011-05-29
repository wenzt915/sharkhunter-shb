// By. S.leop -v1.1 -26/05/2011

script {
	profile ('ZattooTV') {
		pattern {         
			 
			match $URI: 'zattooTV/(?<channel>[^?]+)/?'

		}
		action {
			def CURL = pmsConf['curl.path']
			def zattoodir = pmsConf['channels.path']

//TEMP CHANGE - to avoid overwriting of channels cookies

			//def cookie = pmsConf['cookie.path']
			def cookie = new File("${zattoodir}\\data\\zattoocookie")
// finish TEMP CHANGE

			def zatcookie = new File("${cookie}")	
			def v ='"'
			def zattoofile = new File("${zattoodir}\\data\\zattootmp")
			def zattoofile2 = new File("${zattoodir}\\data\\zattootmp2")
			def credfile = pmsConf['cred.path']

			def proxypage = 'http://nntime.com/proxy-country/Switzerland-01.htm'
			def proxypage2 = 'http://www.proxylist.net/list/ch/0/1/0/0'
			def userproxy = pmsConf['zattoo.proxy']
			def zattooproxy = ''
			def proxytest = "http://www.onlinechecker.freeproxy.ru/index.php?proxy=${zattooproxy}&timeout=5&ProxyType=http"

//DELETE THE CHANNEL FILE TO AVOID USING OLD INFO:
			if (zattoofile.exists())	{	
			def zatchanfileDel = new File("${zattoofile}").delete()
			}

// PROXY SECTION - uses the proxy specified in PMS.con as zattoo.proxy or,if not defined, searches online for usable proxy -if no proxy found, will use default proxy

			if (userproxy)	{
			zattooproxy = "${userproxy}"
			/*proxytest = "http://www.onlinechecker.freeproxy.ru/index.php?proxy=${zattooproxy}&timeout=5&ProxyType=http"
			scrape 'proxy is (?<ok>OK)', [ uri: proxytest ]*/	
			ok="ok"
			}	
			
			if (!ok) {
			scrape 'value\\=\\"[^\\*]+?(?<port>8080|80)\\"[^\\*]+?<td>(?<proxy>[^\\<]+)<[^\\*]+?\\Z', [ uri: proxypage ]
			if (proxy)	{			
			zattooproxy = "${proxy}:${port}"
			/*proxytest = "http://www.onlinechecker.freeproxy.ru/index.php?proxy=${zattooproxy}&timeout=5&ProxyType=http"			
			scrape 'proxy is (?<ok>OK)', [ uri: proxytest ]*/
			ok="ok"
						
			} 
			}
			
			if (!ok) {	
			scrape 'href=\\"/proxy/(?<proxy>[^\\"]+[8080|80])\\"[^\\*]+?\\Z', [ uri: proxypage2 ]
						
			if (proxy) {
			zattooproxy = "${proxy}"
			proxytest = "http://www.onlinechecker.freeproxy.ru/index.php?proxy=${zattooproxy}&timeout=5&ProxyType=http"			
			scrape 'proxy is (?<ok>OK)', [ uri: proxytest ]
			}
			} 

			if (!ok)	{
	log.error("ZATTOOO: none of the tried proxies seems to be working - will try default proxy)   ")
				zattooproxy = '195.162.130.20:8080'
				}
			
	log.info("ZATTOOO: -PROXY:   ${zattooproxy}   ")


// COOKIE SECTION - If exists reads uuid from current - otherwise creates a new cookie in order to have the user's uuid

			if (zatcookie.exists())	{
			zatcookie = new File("${cookie}").text		
			scrape	"zattoo.com[^\\*]+?pzuid\\t(?<uuid>.*)", [ source: zatcookie]
			}

// If there is no uuid, need to get email and pwd from cred file and create a new cookie							
			if (!uuid) {


			def credentials = new File("${credfile}")
			
			/*if (credentials.exists())	{
			credentials = new File("${credfile}").text
			scrape "[\\n](?:channel\\.zattoo[^\\=]+?\\=(?<zattooemail>[^\\d]+?@[^\\d]+?),(?<zattoopwd>[\\d]+))", [ source: credentials ]
			} else
			{
	log.error("ZATTOOO: Need to define cred file with your Zattoo emal and pwd  - will use a shared account")
			}*/
			
// if there is no User and Pwd defined, will used a predifined one
def zattooemail='pms.sharkhunter@gmail.com'
def zattoopwd='kalle1'
log.info("zzzz ${zattooemail}")
		/*	if (!zattooemail)	{
			def zattooemail = 'zat1@hotmail.com'
			def zattoopwd = 'zat1'
			
			}*/
			def getcookie = "$CURL -k -x ${zattooproxy} --connect-timeout 8 -c \"${cookie}\" --location-trusted --tcp-nodelay -d ${v}email=${zattooemail}&pw=${zattoopwd}&remember=on${v} https://zattoo.com/login -o \"${zattoofile}\""
			log.info("curl ${getcookie}")
			def proc = getcookie.execute()
			Thread.start { System.err << proc.err }
			proc.waitForOrKill(15000)
			log.info("eeeee")
			zatcookie = new File("${cookie}").text
			scrape	"zattoo.com[^\\*]+?pzuid\\t(?<uuid>.*)", [ source: zatcookie]
			}
	log.info("ZATTOOO: -UUID:   ${uuid}   ")




// CHANNEL SECTION : gets the first url, in order to scrape needed info: TicketID,SWF player and F variable
			
			//def getchan = "$CURL -4 -x ${zattooproxy} --connect-timeout 8 --cookie ${cookie} --location-trusted --no-buffer --tcp-nodelay --no-keepalive --url ${v}http://zattoo.com/view${v} -o ${zattoofile}"
			def getchan = "$CURL -4 -x ${zattooproxy} --connect-timeout 8 -b \"pzuid=${uuid}\" --location-trusted --no-buffer --tcp-nodelay --no-keepalive --url ${v}http://zattoo.com/view${v} -o \"${zattoofile}\""
			def proc = getchan.execute()
			Thread.start { System.err << proc.err }
			proc.waitForOrKill(10500)
//			log.info("ZATTOOO GetChan command:   ${getchan}")
			
			if (zattoofile.exists())	{
			def zatchanfile = new File("${zattoofile}").text
		 	scrape 'getTime[^\\*]+?(?<fvar>[0-9]+)[^\\*]+?zattoo.ticket_id[^\\"]+\\"(?<ticketid>[^\\"]+)\\"[^\\*]+?zattoo.setStaticAssets[^\\"]+\\"(?<player>[^\\"]+)\\"', [ source: zatchanfile ]
						
			}
			
	log.info("ZATTOOO: -FVAR: ${fvar}    -   TICKET: ${ticketid}   -PLAYER: ${player}")

// RTMPE SECTION : Get the last url with the rtmpe link
			
			if (ticketid) {

//			def getrtmpe = "$CURL -4 -x ${zattooproxy} --connect-timeout 8 --no-buffer --tcp-nodelay --no-keepalive --cookie ${cookie} --url ${v}http://tserver.zattoo.com/join?uuid=${uuid}&ticket_id=${ticketid}&f=${fvar}&channel=${channel}${v} -o \"${zattoofile2}\""
			def getrtmpe = "$CURL -4 -x ${zattooproxy} --connect-timeout 8 --no-buffer --tcp-nodelay --no-keepalive -b \"pzuid=${uuid}\" --url ${v}http://tserver.zattoo.com/join?uuid=${uuid}&ticket_id=${ticketid}&f=${fvar}&channel=${channel}${v} -o \"${zattoofile2}\""
			proc = getrtmpe.execute()
			Thread.start { System.err << proc.err }
			proc.waitForOrKill(10000)
			
	log.info("ZATTOOO GetRTMPE command:   ${getrtmpe}")

			def zatchanfile2 = new File("${zattoofile2}").text
			scrape '(?<URI>rtmpe?[^\\"]+?)\\"', [ source: zatchanfile2 ]
			swfplay = "http://zattoo.com${player}"
		 
			
			$DOWNLOADER = "$RTMPDUMP -v -r ${v}${$URI}${v} --swfVfy ${swfplay} -o $DOWNLOADER_OUT"       
//			$TRANSCODER = $MENCODER
		} 
		else {
		log.error("invalid ZattooURL: check validity of proxy servers")	
		}


}
}
}
