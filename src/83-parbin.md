\newpage

### Parbin Ltd - MetroNet, Harrow

Working for Parbin Ltd exposed me for the first time to networking. Originally I had been employed for frontline helpdesk work however the role quickly evolved into third line support, training and project work too. The company had several core services, a standard ISP focusing on ADSL services and three specialist sister products, email server outsourcing, web hosting and a fully client controlled domain nameserver hosting, all of which I was to learn and provide support for.

#### Projects

 * [Cerberus](https://web.archive.org/web/20060203091641/http://support.metronet.co.uk/adsl/services/proxy.html) - a lightweight ISP side fully customisable HTTP URL filtering proxy server with a granularity down to per-user and custom lists. The system was based on a Squid which communicated with a Perl daemon that called upon a Berkeley DB to make filtering decisions
 * eCoLi - was the framework that linked our internal and customer facing ordering systems to BT's unbundled ADSL ordering platform. This was written in Perl and involved a lot of SQL and XML DOM processing, including gracefully handling order failure and processing
 * [Exchange Service Status](https://web.archive.org/web/20051229200310/http://www.metronet.co.uk/adsl/exchangeChecker) - brought a large amount of information from multiple sources that the telephone company BT generated and then presented to the user as a colour coded calendar. The user would enter in their phone number and get a full history for their local exchange, including all the information we had regarding current outages and known capacity issues. This was a 100\% automated system that relied on a Perl backend polling for information, and digesting `for human consumption' emails with regular expressions for easy data extraction at a later stage
