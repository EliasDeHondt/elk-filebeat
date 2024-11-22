![logo](https://eliasdh.com/assets/media/images/logo-github.png)
# 💙🤍README🤍💙

## 📘Table of Contents

1. [📘Table of Contents](#📘table-of-contents)
2. [🖖Introduction](#🖖introduction)
3. [📚Documentation](#📚documentation)
4. [🔗Links](#🔗links)

---

## 🖖Introduction

I kindly request your thorough examination and absorption of the comprehensive documentation incorporated within the confines of this repository. Your diligent review of the diverse materials provided herein will undoubtedly enhance your understanding of the intricacies and nuances associated with the contents therein.

Please also see following documents:
- [LICENSE](LICENSE.md)
- [SECURITY](SECURITY.md)
- [CONTRIBUTING](CONTRIBUTING.md)


## 📚Documentation

- Create a new `.tgz` file for each Helm chart:
```bash
cd package
helm package elasticsearch/ 
helm package filebeat/
helm package kibana/
helm package logstash/
```

- Install `Logstash`:
```bash
helm install logstash https://raw.githubusercontent.com/EliasDeHondt/elk-filebeat/refs/heads/main/package/logstash-7.15.0.tgz
helm install filebeat https://raw.githubusercontent.com/EliasDeHondt/elk-filebeat/refs/heads/main/package/filebeat-7.15.0.tgz
helm install kibana https://raw.githubusercontent.com/EliasDeHondt/elk-filebeat/refs/heads/main/package/kibana-7.15.0.tgz
helm install elasticsearch https://raw.githubusercontent.com/EliasDeHondt/elk-filebeat/refs/heads/main/package/elasticsearch-7.15.0.tgz
```

- Uninstall `Logstash`:
```bash
helm uninstall logstash
helm uninstall filebeat
helm uninstall kibana
helm uninstall elasticsearch
```

- Upgrade `Logstash`:
```bash
helm upgrade logstash https://raw.githubusercontent.com/EliasDeHondt/elk-filebeat/refs/heads/main/package/logstash-x.x.x.tgz
helm upgrade filebeat https://raw.githubusercontent.com/EliasDeHondt/elk-filebeat/refs/heads/main/package/filebeat-x.x.x.tgz
helm upgrade kibana https://raw.githubusercontent.com/EliasDeHondt/elk-filebeat/refs/heads/main/package/kibana-x.x.x.tgz
helm upgrade elasticsearch https://raw.githubusercontent.com/EliasDeHondt/elk-filebeat/refs/heads/main/package/elasticsearch-x.x.x.tgz
```

## 🔗Links
- 👯 Web hosting company [EliasDH.com](https://eliasdh.com).
- 📫 How to reach us elias.dehondt@outlook.com