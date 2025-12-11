## Phishing analysis
### Contents
- [Sites used](#sites-used)
    - [Attachment analysis](#attachment-analysis)
    - [CyberChef](#cyberchef)
    - [DKIM Information](#dkim-nformation)
    - [DMARC Info](#dmarc-information)
    - [Header analysis](#header-analysis)
    - [IP Info](#ip-info)
    - [Misc.](#misc)
    - [Check MX records](#check-mx-records)
    - [Phishing clasifications](#phishing-clasifications)
    - [Sender reputation](#sender-reputation)
    - [SPF Information](#spf-information)
    - [URL Extraction](#url-extraction)
    - [URL sandbox](#url-sandbox)


### Sites used
#### Phishing clasifications
- [Spam](https://www.proofpoint.com/us/threat-reference/spam)
    - Junk mail, hoping to make a quick sale or obtain details generally
- [Phishing](https://www.proofpoint.com/us/threat-reference/phishing)
    - Targeting individuals for financial gaine, login credentials, or other potentially sensitive information
- [Spear Phishing](https://www.proofpoint.com/us/threat-reference/spear-phishing)
    - Think phishing, but for specific individuals
- [Whaling ](https://www.rapid7.com/fundamentals/whaling-phishing-attacks/)
    - Think `spear phishing` but for the big one, C-Suite, execs, high inflewance. 
- [Smishing](https://www.proofpoint.com/us/threat-reference/smishing)
    - SMS phishing, targeting individuals via SMS since many people trust their phone too much. think UPS tracking scams, royal mail etc...
- [Vishing](https://www.proofpoint.com/us/threat-reference/vishing)
    - Like smishing but over the phone instead.
- [ATT&CK - Phishing for information](https://attack.mitre.org/techniques/T1598/)

#### Header analysis
- https://mailheader.org/
- https://mha.azurewebsites.net/
- https://toolbox.googleapps.com/apps/messageheader/analyzeheader

#### URL sandbox
- https://urlscan.io/
- https://www.url2png.com/
- https://www.wannabrowser.net/
- https://hybrid-analysis.com/
- https://www.joesecurity.org/

#### URL Extraction
- https://www.convertcsv.com/url-extractor.htm

#### IP Info
- https://urlscan.io/
- https://toolbox.googleapps.com/apps/dig/

#### Misc.
- https://app.phishtool.com/
- https://phishtank.com/
- https://www.spamhaus.org/
- https://github.com/ninoseki/eml_analyzer

#### Attachment analysis
- https://www.virustotal.com/

#### Check MX records
- https://toolbox.googleapps.com/apps/checkmx/
- https://mxtoolbox.com/

#### Sender reputation
- https://talosintelligence.com/reputation

#### CyberChef
- https://gchq.github.io/CyberChef/

#### SPF Information
- https://dmarcian.com/spf-survey/

#### DKIM Information
- https://dmarcian.com/dkim-inspector/
- https://dmarcian.com/dkim-validator/

#### DMARC Information
- https://dmarcadvisor.com/
- https://dmarcian.com/domain-checker/
