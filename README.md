# Gou
Unofficial image for [gou](https://github.com/shingetsu-gou/shingetsu-gou); a implements of [P2P annonymouse BBS shinGETsu](http://shingetsu.info/).

## Quick Start
1. Open of TCP/8000 port. <br/> Please change the firewall settings and router settings so that we can access TCP/8000 from the outside. If your using router supported UPnP, it is easier to run `upnpc -r 8000 tcp`.
2. `docker volume create gou-data`
3. `docker run --rm -p 8000:8000 -v gou-data:/srv yuuki0xff/gou`
4. Open the ["http://localhost:8000"](http://localhost:8000). It will be displaying the gou's top page.
